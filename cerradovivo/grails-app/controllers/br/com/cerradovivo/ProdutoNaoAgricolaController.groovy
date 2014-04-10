package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class ProdutoNaoAgricolaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [produtoNaoAgricolaInstanceList: ProdutoNaoAgricola.list(params), produtoNaoAgricolaInstanceTotal: ProdutoNaoAgricola.count()]
    }

    def create() {
        [produtoNaoAgricolaInstance: new ProdutoNaoAgricola(params)]
    }

    def save() {
        def produtoNaoAgricolaInstance = new ProdutoNaoAgricola(params)
        if (!produtoNaoAgricolaInstance.save(flush: true)) {
            render(view: "create", model: [produtoNaoAgricolaInstance: produtoNaoAgricolaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'produtoNaoAgricola.label', default: 'ProdutoNaoAgricola'), produtoNaoAgricolaInstance.id])
        redirect(action: "show", id: produtoNaoAgricolaInstance.id)
    }

    def show(Long id) {
        def produtoNaoAgricolaInstance = ProdutoNaoAgricola.get(id)
        if (!produtoNaoAgricolaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtoNaoAgricola.label', default: 'ProdutoNaoAgricola'), id])
            redirect(action: "list")
            return
        }

        [produtoNaoAgricolaInstance: produtoNaoAgricolaInstance]
    }

    def edit(Long id) {
        def produtoNaoAgricolaInstance = ProdutoNaoAgricola.get(id)
        if (!produtoNaoAgricolaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtoNaoAgricola.label', default: 'ProdutoNaoAgricola'), id])
            redirect(action: "list")
            return
        }

        [produtoNaoAgricolaInstance: produtoNaoAgricolaInstance]
    }

    def update(Long id, Long version) {
        def produtoNaoAgricolaInstance = ProdutoNaoAgricola.get(id)
        if (!produtoNaoAgricolaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtoNaoAgricola.label', default: 'ProdutoNaoAgricola'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (produtoNaoAgricolaInstance.version > version) {
                produtoNaoAgricolaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'produtoNaoAgricola.label', default: 'ProdutoNaoAgricola')] as Object[],
                          "Another user has updated this ProdutoNaoAgricola while you were editing")
                render(view: "edit", model: [produtoNaoAgricolaInstance: produtoNaoAgricolaInstance])
                return
            }
        }

        produtoNaoAgricolaInstance.properties = params

        if (!produtoNaoAgricolaInstance.save(flush: true)) {
            render(view: "edit", model: [produtoNaoAgricolaInstance: produtoNaoAgricolaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'produtoNaoAgricola.label', default: 'ProdutoNaoAgricola'), produtoNaoAgricolaInstance.id])
        redirect(action: "show", id: produtoNaoAgricolaInstance.id)
    }

    def delete(Long id) {
        def produtoNaoAgricolaInstance = ProdutoNaoAgricola.get(id)
        if (!produtoNaoAgricolaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtoNaoAgricola.label', default: 'ProdutoNaoAgricola'), id])
            redirect(action: "list")
            return
        }

        try {
            produtoNaoAgricolaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'produtoNaoAgricola.label', default: 'ProdutoNaoAgricola'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'produtoNaoAgricola.label', default: 'ProdutoNaoAgricola'), id])
            redirect(action: "show", id: id)
        }
    }
}
