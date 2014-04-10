package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class ProdutoAgricolaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [produtoAgricolaInstanceList: ProdutoAgricola.list(params), produtoAgricolaInstanceTotal: ProdutoAgricola.count()]
    }

    def create() {
        [produtoAgricolaInstance: new ProdutoAgricola(params)]
    }

    def save() {
        def produtoAgricolaInstance = new ProdutoAgricola(params)
        if (!produtoAgricolaInstance.save(flush: true)) {
            render(view: "create", model: [produtoAgricolaInstance: produtoAgricolaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'produtoAgricola.label', default: 'ProdutoAgricola'), produtoAgricolaInstance.id])
        redirect(action: "show", id: produtoAgricolaInstance.id)
    }

    def show(Long id) {
        def produtoAgricolaInstance = ProdutoAgricola.get(id)
        if (!produtoAgricolaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtoAgricola.label', default: 'ProdutoAgricola'), id])
            redirect(action: "list")
            return
        }

        [produtoAgricolaInstance: produtoAgricolaInstance]
    }

    def edit(Long id) {
        def produtoAgricolaInstance = ProdutoAgricola.get(id)
        if (!produtoAgricolaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtoAgricola.label', default: 'ProdutoAgricola'), id])
            redirect(action: "list")
            return
        }

        [produtoAgricolaInstance: produtoAgricolaInstance]
    }

    def update(Long id, Long version) {
        def produtoAgricolaInstance = ProdutoAgricola.get(id)
        if (!produtoAgricolaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtoAgricola.label', default: 'ProdutoAgricola'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (produtoAgricolaInstance.version > version) {
                produtoAgricolaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'produtoAgricola.label', default: 'ProdutoAgricola')] as Object[],
                          "Another user has updated this ProdutoAgricola while you were editing")
                render(view: "edit", model: [produtoAgricolaInstance: produtoAgricolaInstance])
                return
            }
        }

        produtoAgricolaInstance.properties = params

        if (!produtoAgricolaInstance.save(flush: true)) {
            render(view: "edit", model: [produtoAgricolaInstance: produtoAgricolaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'produtoAgricola.label', default: 'ProdutoAgricola'), produtoAgricolaInstance.id])
        redirect(action: "show", id: produtoAgricolaInstance.id)
    }

    def delete(Long id) {
        def produtoAgricolaInstance = ProdutoAgricola.get(id)
        if (!produtoAgricolaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtoAgricola.label', default: 'ProdutoAgricola'), id])
            redirect(action: "list")
            return
        }

        try {
            produtoAgricolaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'produtoAgricola.label', default: 'ProdutoAgricola'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'produtoAgricola.label', default: 'ProdutoAgricola'), id])
            redirect(action: "show", id: id)
        }
    }
}
