package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class EnergiaEletricaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [energiaEletricaInstanceList: EnergiaEletrica.list(params), energiaEletricaInstanceTotal: EnergiaEletrica.count()]
    }

    def create() {
        [energiaEletricaInstance: new EnergiaEletrica(params)]
    }

    def save() {
        def energiaEletricaInstance = new EnergiaEletrica(params)
        if (!energiaEletricaInstance.save(flush: true)) {
            render(view: "create", model: [energiaEletricaInstance: energiaEletricaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'energiaEletrica.label', default: 'EnergiaEletrica'), energiaEletricaInstance.id])
        redirect(action: "show", id: energiaEletricaInstance.id)
    }

    def show(Long id) {
        def energiaEletricaInstance = EnergiaEletrica.get(id)
        if (!energiaEletricaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'energiaEletrica.label', default: 'EnergiaEletrica'), id])
            redirect(action: "list")
            return
        }

        [energiaEletricaInstance: energiaEletricaInstance]
    }

    def edit(Long id) {
        def energiaEletricaInstance = EnergiaEletrica.get(id)
        if (!energiaEletricaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'energiaEletrica.label', default: 'EnergiaEletrica'), id])
            redirect(action: "list")
            return
        }

        [energiaEletricaInstance: energiaEletricaInstance]
    }

    def update(Long id, Long version) {
        def energiaEletricaInstance = EnergiaEletrica.get(id)
        if (!energiaEletricaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'energiaEletrica.label', default: 'EnergiaEletrica'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (energiaEletricaInstance.version > version) {
                energiaEletricaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'energiaEletrica.label', default: 'EnergiaEletrica')] as Object[],
                          "Another user has updated this EnergiaEletrica while you were editing")
                render(view: "edit", model: [energiaEletricaInstance: energiaEletricaInstance])
                return
            }
        }

        energiaEletricaInstance.properties = params

        if (!energiaEletricaInstance.save(flush: true)) {
            render(view: "edit", model: [energiaEletricaInstance: energiaEletricaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'energiaEletrica.label', default: 'EnergiaEletrica'), energiaEletricaInstance.id])
        redirect(action: "show", id: energiaEletricaInstance.id)
    }

    def delete(Long id) {
        def energiaEletricaInstance = EnergiaEletrica.get(id)
        if (!energiaEletricaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'energiaEletrica.label', default: 'EnergiaEletrica'), id])
            redirect(action: "list")
            return
        }

        try {
            energiaEletricaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'energiaEletrica.label', default: 'EnergiaEletrica'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'energiaEletrica.label', default: 'EnergiaEletrica'), id])
            redirect(action: "show", id: id)
        }
    }
}
