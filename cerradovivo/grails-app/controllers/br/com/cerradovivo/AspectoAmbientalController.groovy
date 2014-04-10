package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class AspectoAmbientalController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [aspectoAmbientalInstanceList: AspectoAmbiental.list(params), aspectoAmbientalInstanceTotal: AspectoAmbiental.count()]
    }

    def create() {
        [aspectoAmbientalInstance: new AspectoAmbiental(params)]
    }

    def save() {
        def aspectoAmbientalInstance = new AspectoAmbiental(params)
        if (!aspectoAmbientalInstance.save(flush: true)) {
            render(view: "create", model: [aspectoAmbientalInstance: aspectoAmbientalInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'aspectoAmbiental.label', default: 'AspectoAmbiental'), aspectoAmbientalInstance.id])
        redirect(action: "show", id: aspectoAmbientalInstance.id)
    }

    def show(Long id) {
        def aspectoAmbientalInstance = AspectoAmbiental.get(id)
        if (!aspectoAmbientalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoAmbiental.label', default: 'AspectoAmbiental'), id])
            redirect(action: "list")
            return
        }

        [aspectoAmbientalInstance: aspectoAmbientalInstance]
    }

    def edit(Long id) {
        def aspectoAmbientalInstance = AspectoAmbiental.get(id)
        if (!aspectoAmbientalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoAmbiental.label', default: 'AspectoAmbiental'), id])
            redirect(action: "list")
            return
        }

        [aspectoAmbientalInstance: aspectoAmbientalInstance]
    }

    def update(Long id, Long version) {
        def aspectoAmbientalInstance = AspectoAmbiental.get(id)
        if (!aspectoAmbientalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoAmbiental.label', default: 'AspectoAmbiental'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (aspectoAmbientalInstance.version > version) {
                aspectoAmbientalInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'aspectoAmbiental.label', default: 'AspectoAmbiental')] as Object[],
                          "Another user has updated this AspectoAmbiental while you were editing")
                render(view: "edit", model: [aspectoAmbientalInstance: aspectoAmbientalInstance])
                return
            }
        }

        aspectoAmbientalInstance.properties = params

        if (!aspectoAmbientalInstance.save(flush: true)) {
            render(view: "edit", model: [aspectoAmbientalInstance: aspectoAmbientalInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'aspectoAmbiental.label', default: 'AspectoAmbiental'), aspectoAmbientalInstance.id])
        redirect(action: "show", id: aspectoAmbientalInstance.id)
    }

    def delete(Long id) {
        def aspectoAmbientalInstance = AspectoAmbiental.get(id)
        if (!aspectoAmbientalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoAmbiental.label', default: 'AspectoAmbiental'), id])
            redirect(action: "list")
            return
        }

        try {
            aspectoAmbientalInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'aspectoAmbiental.label', default: 'AspectoAmbiental'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'aspectoAmbiental.label', default: 'AspectoAmbiental'), id])
            redirect(action: "show", id: id)
        }
    }
}
