package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class ProdutoPecuariaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [produtoPecuariaInstanceList: ProdutoPecuaria.list(params), produtoPecuariaInstanceTotal: ProdutoPecuaria.count()]
    }

    def create() {
        [produtoPecuariaInstance: new ProdutoPecuaria(params)]
    }

    def save() {
        def produtoPecuariaInstance = new ProdutoPecuaria(params)
        if (!produtoPecuariaInstance.save(flush: true)) {
            render(view: "create", model: [produtoPecuariaInstance: produtoPecuariaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'produtoPecuaria.label', default: 'ProdutoPecuaria'), produtoPecuariaInstance.id])
        redirect(action: "show", id: produtoPecuariaInstance.id)
    }

    def show(Long id) {
        def produtoPecuariaInstance = ProdutoPecuaria.get(id)
        if (!produtoPecuariaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtoPecuaria.label', default: 'ProdutoPecuaria'), id])
            redirect(action: "list")
            return
        }

        [produtoPecuariaInstance: produtoPecuariaInstance]
    }

    def edit(Long id) {
        def produtoPecuariaInstance = ProdutoPecuaria.get(id)
        if (!produtoPecuariaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtoPecuaria.label', default: 'ProdutoPecuaria'), id])
            redirect(action: "list")
            return
        }

        [produtoPecuariaInstance: produtoPecuariaInstance]
    }

    def update(Long id, Long version) {
        def produtoPecuariaInstance = ProdutoPecuaria.get(id)
        if (!produtoPecuariaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtoPecuaria.label', default: 'ProdutoPecuaria'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (produtoPecuariaInstance.version > version) {
                produtoPecuariaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'produtoPecuaria.label', default: 'ProdutoPecuaria')] as Object[],
                          "Another user has updated this ProdutoPecuaria while you were editing")
                render(view: "edit", model: [produtoPecuariaInstance: produtoPecuariaInstance])
                return
            }
        }

        produtoPecuariaInstance.properties = params

        if (!produtoPecuariaInstance.save(flush: true)) {
            render(view: "edit", model: [produtoPecuariaInstance: produtoPecuariaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'produtoPecuaria.label', default: 'ProdutoPecuaria'), produtoPecuariaInstance.id])
        redirect(action: "show", id: produtoPecuariaInstance.id)
    }

    def delete(Long id) {
        def produtoPecuariaInstance = ProdutoPecuaria.get(id)
        if (!produtoPecuariaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtoPecuaria.label', default: 'ProdutoPecuaria'), id])
            redirect(action: "list")
            return
        }

        try {
            produtoPecuariaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'produtoPecuaria.label', default: 'ProdutoPecuaria'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'produtoPecuaria.label', default: 'ProdutoPecuaria'), id])
            redirect(action: "show", id: id)
        }
    }
}
