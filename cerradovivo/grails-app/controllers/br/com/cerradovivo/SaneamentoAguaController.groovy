package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class SaneamentoAguaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [saneamentoAguaInstanceList: SaneamentoAgua.list(params), saneamentoAguaInstanceTotal: SaneamentoAgua.count()]
    }

    def create() {
        [saneamentoAguaInstance: new SaneamentoAgua(params)]
    }

    def save() {
        def saneamentoAguaInstance = new SaneamentoAgua(params)
        if (!saneamentoAguaInstance.save(flush: true)) {
            render(view: "create", model: [saneamentoAguaInstance: saneamentoAguaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'saneamentoAgua.label', default: 'SaneamentoAgua'), saneamentoAguaInstance.id])
        redirect(action: "show", id: saneamentoAguaInstance.id)
    }

    def show(Long id) {
        def saneamentoAguaInstance = SaneamentoAgua.get(id)
        if (!saneamentoAguaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'saneamentoAgua.label', default: 'SaneamentoAgua'), id])
            redirect(action: "list")
            return
        }

        [saneamentoAguaInstance: saneamentoAguaInstance]
    }

    def edit(Long id) {
        def saneamentoAguaInstance = SaneamentoAgua.get(id)
        if (!saneamentoAguaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'saneamentoAgua.label', default: 'SaneamentoAgua'), id])
            redirect(action: "list")
            return
        }

        [saneamentoAguaInstance: saneamentoAguaInstance]
    }

    def update(Long id, Long version) {
        def saneamentoAguaInstance = SaneamentoAgua.get(id)
        if (!saneamentoAguaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'saneamentoAgua.label', default: 'SaneamentoAgua'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (saneamentoAguaInstance.version > version) {
                saneamentoAguaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'saneamentoAgua.label', default: 'SaneamentoAgua')] as Object[],
                          "Another user has updated this SaneamentoAgua while you were editing")
                render(view: "edit", model: [saneamentoAguaInstance: saneamentoAguaInstance])
                return
            }
        }

        saneamentoAguaInstance.properties = params

        if (!saneamentoAguaInstance.save(flush: true)) {
            render(view: "edit", model: [saneamentoAguaInstance: saneamentoAguaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'saneamentoAgua.label', default: 'SaneamentoAgua'), saneamentoAguaInstance.id])
        redirect(action: "show", id: saneamentoAguaInstance.id)
    }

    def delete(Long id) {
        def saneamentoAguaInstance = SaneamentoAgua.get(id)
        if (!saneamentoAguaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'saneamentoAgua.label', default: 'SaneamentoAgua'), id])
            redirect(action: "list")
            return
        }

        try {
            saneamentoAguaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'saneamentoAgua.label', default: 'SaneamentoAgua'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'saneamentoAgua.label', default: 'SaneamentoAgua'), id])
            redirect(action: "show", id: id)
        }
    }
}
