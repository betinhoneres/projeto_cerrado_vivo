package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class MoradiaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [moradiaInstanceList: Moradia.list(params), moradiaInstanceTotal: Moradia.count()]
    }

    def create() {
        [moradiaInstance: new Moradia(params)]
    }

    def save() {
        def moradiaInstance = new Moradia(params)
        if (!moradiaInstance.save(flush: true)) {
            render(view: "create", model: [moradiaInstance: moradiaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'moradia.label', default: 'Moradia'), moradiaInstance.id])
        redirect(action: "show", id: moradiaInstance.id)
    }

    def show(Long id) {
        def moradiaInstance = Moradia.get(id)
        if (!moradiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'moradia.label', default: 'Moradia'), id])
            redirect(action: "list")
            return
        }

        [moradiaInstance: moradiaInstance]
    }

    def edit(Long id) {
        def moradiaInstance = Moradia.get(id)
        if (!moradiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'moradia.label', default: 'Moradia'), id])
            redirect(action: "list")
            return
        }

        [moradiaInstance: moradiaInstance]
    }

    def update(Long id, Long version) {
        def moradiaInstance = Moradia.get(id)
        if (!moradiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'moradia.label', default: 'Moradia'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (moradiaInstance.version > version) {
                moradiaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'moradia.label', default: 'Moradia')] as Object[],
                          "Another user has updated this Moradia while you were editing")
                render(view: "edit", model: [moradiaInstance: moradiaInstance])
                return
            }
        }

        moradiaInstance.properties = params

        if (!moradiaInstance.save(flush: true)) {
            render(view: "edit", model: [moradiaInstance: moradiaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'moradia.label', default: 'Moradia'), moradiaInstance.id])
        redirect(action: "show", id: moradiaInstance.id)
    }

    def delete(Long id) {
        def moradiaInstance = Moradia.get(id)
        if (!moradiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'moradia.label', default: 'Moradia'), id])
            redirect(action: "list")
            return
        }

        try {
            moradiaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'moradia.label', default: 'Moradia'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'moradia.label', default: 'Moradia'), id])
            redirect(action: "show", id: id)
        }
    }
}
