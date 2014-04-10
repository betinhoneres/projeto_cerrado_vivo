package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class CulturaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [culturaInstanceList: Cultura.list(params), culturaInstanceTotal: Cultura.count()]
    }

    def create() {
        [culturaInstance: new Cultura(params)]
    }

    def save() {
        def culturaInstance = new Cultura(params)
        if (!culturaInstance.save(flush: true)) {
            render(view: "create", model: [culturaInstance: culturaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'cultura.label', default: 'Cultura'), culturaInstance.id])
        redirect(action: "show", id: culturaInstance.id)
    }

    def show(Long id) {
        def culturaInstance = Cultura.get(id)
        if (!culturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cultura.label', default: 'Cultura'), id])
            redirect(action: "list")
            return
        }

        [culturaInstance: culturaInstance]
    }

    def edit(Long id) {
        def culturaInstance = Cultura.get(id)
        if (!culturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cultura.label', default: 'Cultura'), id])
            redirect(action: "list")
            return
        }

        [culturaInstance: culturaInstance]
    }

    def update(Long id, Long version) {
        def culturaInstance = Cultura.get(id)
        if (!culturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cultura.label', default: 'Cultura'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (culturaInstance.version > version) {
                culturaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'cultura.label', default: 'Cultura')] as Object[],
                          "Another user has updated this Cultura while you were editing")
                render(view: "edit", model: [culturaInstance: culturaInstance])
                return
            }
        }

        culturaInstance.properties = params

        if (!culturaInstance.save(flush: true)) {
            render(view: "edit", model: [culturaInstance: culturaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'cultura.label', default: 'Cultura'), culturaInstance.id])
        redirect(action: "show", id: culturaInstance.id)
    }

    def delete(Long id) {
        def culturaInstance = Cultura.get(id)
        if (!culturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cultura.label', default: 'Cultura'), id])
            redirect(action: "list")
            return
        }

        try {
            culturaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'cultura.label', default: 'Cultura'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'cultura.label', default: 'Cultura'), id])
            redirect(action: "show", id: id)
        }
    }
}
