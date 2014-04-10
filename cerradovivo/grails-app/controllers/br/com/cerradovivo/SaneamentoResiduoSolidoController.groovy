package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class SaneamentoResiduoSolidoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [saneamentoResiduoSolidoInstanceList: SaneamentoResiduoSolido.list(params), saneamentoResiduoSolidoInstanceTotal: SaneamentoResiduoSolido.count()]
    }

    def create() {
        [saneamentoResiduoSolidoInstance: new SaneamentoResiduoSolido(params)]
    }

    def save() {
        def saneamentoResiduoSolidoInstance = new SaneamentoResiduoSolido(params)
        if (!saneamentoResiduoSolidoInstance.save(flush: true)) {
            render(view: "create", model: [saneamentoResiduoSolidoInstance: saneamentoResiduoSolidoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'saneamentoResiduoSolido.label', default: 'SaneamentoResiduoSolido'), saneamentoResiduoSolidoInstance.id])
        redirect(action: "show", id: saneamentoResiduoSolidoInstance.id)
    }

    def show(Long id) {
        def saneamentoResiduoSolidoInstance = SaneamentoResiduoSolido.get(id)
        if (!saneamentoResiduoSolidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'saneamentoResiduoSolido.label', default: 'SaneamentoResiduoSolido'), id])
            redirect(action: "list")
            return
        }

        [saneamentoResiduoSolidoInstance: saneamentoResiduoSolidoInstance]
    }

    def edit(Long id) {
        def saneamentoResiduoSolidoInstance = SaneamentoResiduoSolido.get(id)
        if (!saneamentoResiduoSolidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'saneamentoResiduoSolido.label', default: 'SaneamentoResiduoSolido'), id])
            redirect(action: "list")
            return
        }

        [saneamentoResiduoSolidoInstance: saneamentoResiduoSolidoInstance]
    }

    def update(Long id, Long version) {
        def saneamentoResiduoSolidoInstance = SaneamentoResiduoSolido.get(id)
        if (!saneamentoResiduoSolidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'saneamentoResiduoSolido.label', default: 'SaneamentoResiduoSolido'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (saneamentoResiduoSolidoInstance.version > version) {
                saneamentoResiduoSolidoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'saneamentoResiduoSolido.label', default: 'SaneamentoResiduoSolido')] as Object[],
                          "Another user has updated this SaneamentoResiduoSolido while you were editing")
                render(view: "edit", model: [saneamentoResiduoSolidoInstance: saneamentoResiduoSolidoInstance])
                return
            }
        }

        saneamentoResiduoSolidoInstance.properties = params

        if (!saneamentoResiduoSolidoInstance.save(flush: true)) {
            render(view: "edit", model: [saneamentoResiduoSolidoInstance: saneamentoResiduoSolidoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'saneamentoResiduoSolido.label', default: 'SaneamentoResiduoSolido'), saneamentoResiduoSolidoInstance.id])
        redirect(action: "show", id: saneamentoResiduoSolidoInstance.id)
    }

    def delete(Long id) {
        def saneamentoResiduoSolidoInstance = SaneamentoResiduoSolido.get(id)
        if (!saneamentoResiduoSolidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'saneamentoResiduoSolido.label', default: 'SaneamentoResiduoSolido'), id])
            redirect(action: "list")
            return
        }

        try {
            saneamentoResiduoSolidoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'saneamentoResiduoSolido.label', default: 'SaneamentoResiduoSolido'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'saneamentoResiduoSolido.label', default: 'SaneamentoResiduoSolido'), id])
            redirect(action: "show", id: id)
        }
    }
}
