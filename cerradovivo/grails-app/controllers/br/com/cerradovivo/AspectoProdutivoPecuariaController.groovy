package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class AspectoProdutivoPecuariaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [aspectoProdutivoPecuariaInstanceList: AspectoProdutivoPecuaria.list(params), aspectoProdutivoPecuariaInstanceTotal: AspectoProdutivoPecuaria.count()]
    }

    def create() {
        [aspectoProdutivoPecuariaInstance: new AspectoProdutivoPecuaria(params)]
    }

    def save() {
        def aspectoProdutivoPecuariaInstance = new AspectoProdutivoPecuaria(params)
        if (!aspectoProdutivoPecuariaInstance.save(flush: true)) {
            render(view: "create", model: [aspectoProdutivoPecuariaInstance: aspectoProdutivoPecuariaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'aspectoProdutivoPecuaria.label', default: 'AspectoProdutivoPecuaria'), aspectoProdutivoPecuariaInstance.id])
        redirect(action: "show", id: aspectoProdutivoPecuariaInstance.id)
    }

    def show(Long id) {
        def aspectoProdutivoPecuariaInstance = AspectoProdutivoPecuaria.get(id)
        if (!aspectoProdutivoPecuariaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoPecuaria.label', default: 'AspectoProdutivoPecuaria'), id])
            redirect(action: "list")
            return
        }

        [aspectoProdutivoPecuariaInstance: aspectoProdutivoPecuariaInstance]
    }

    def edit(Long id) {
        def aspectoProdutivoPecuariaInstance = AspectoProdutivoPecuaria.get(id)
        if (!aspectoProdutivoPecuariaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoPecuaria.label', default: 'AspectoProdutivoPecuaria'), id])
            redirect(action: "list")
            return
        }

        [aspectoProdutivoPecuariaInstance: aspectoProdutivoPecuariaInstance]
    }

    def update(Long id, Long version) {
        def aspectoProdutivoPecuariaInstance = AspectoProdutivoPecuaria.get(id)
        if (!aspectoProdutivoPecuariaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoPecuaria.label', default: 'AspectoProdutivoPecuaria'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (aspectoProdutivoPecuariaInstance.version > version) {
                aspectoProdutivoPecuariaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'aspectoProdutivoPecuaria.label', default: 'AspectoProdutivoPecuaria')] as Object[],
                          "Another user has updated this AspectoProdutivoPecuaria while you were editing")
                render(view: "edit", model: [aspectoProdutivoPecuariaInstance: aspectoProdutivoPecuariaInstance])
                return
            }
        }

        aspectoProdutivoPecuariaInstance.properties = params

        if (!aspectoProdutivoPecuariaInstance.save(flush: true)) {
            render(view: "edit", model: [aspectoProdutivoPecuariaInstance: aspectoProdutivoPecuariaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'aspectoProdutivoPecuaria.label', default: 'AspectoProdutivoPecuaria'), aspectoProdutivoPecuariaInstance.id])
        redirect(action: "show", id: aspectoProdutivoPecuariaInstance.id)
    }

    def delete(Long id) {
        def aspectoProdutivoPecuariaInstance = AspectoProdutivoPecuaria.get(id)
        if (!aspectoProdutivoPecuariaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoPecuaria.label', default: 'AspectoProdutivoPecuaria'), id])
            redirect(action: "list")
            return
        }

        try {
            aspectoProdutivoPecuariaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'aspectoProdutivoPecuaria.label', default: 'AspectoProdutivoPecuaria'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'aspectoProdutivoPecuaria.label', default: 'AspectoProdutivoPecuaria'), id])
            redirect(action: "show", id: id)
        }
    }
}
