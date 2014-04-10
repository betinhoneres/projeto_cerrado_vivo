package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class ControleAspProdPecProdutoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [controleAspProdPecProdutoInstanceList: ControleAspProdPecProduto.list(params), controleAspProdPecProdutoInstanceTotal: ControleAspProdPecProduto.count()]
    }

    def create() {
        [controleAspProdPecProdutoInstance: new ControleAspProdPecProduto(params)]
    }

    def save() {
        def controleAspProdPecProdutoInstance = new ControleAspProdPecProduto(params)
        if (!controleAspProdPecProdutoInstance.save(flush: true)) {
            render(view: "create", model: [controleAspProdPecProdutoInstance: controleAspProdPecProdutoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'controleAspProdPecProduto.label', default: 'ControleAspProdPecProduto'), controleAspProdPecProdutoInstance.id])
        redirect(action: "show", id: controleAspProdPecProdutoInstance.id)
    }

    def show(Long id) {
        def controleAspProdPecProdutoInstance = ControleAspProdPecProduto.get(id)
        if (!controleAspProdPecProdutoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdPecProduto.label', default: 'ControleAspProdPecProduto'), id])
            redirect(action: "list")
            return
        }

        [controleAspProdPecProdutoInstance: controleAspProdPecProdutoInstance]
    }

    def edit(Long id) {
        def controleAspProdPecProdutoInstance = ControleAspProdPecProduto.get(id)
        if (!controleAspProdPecProdutoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdPecProduto.label', default: 'ControleAspProdPecProduto'), id])
            redirect(action: "list")
            return
        }

        [controleAspProdPecProdutoInstance: controleAspProdPecProdutoInstance]
    }

    def update(Long id, Long version) {
        def controleAspProdPecProdutoInstance = ControleAspProdPecProduto.get(id)
        if (!controleAspProdPecProdutoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdPecProduto.label', default: 'ControleAspProdPecProduto'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (controleAspProdPecProdutoInstance.version > version) {
                controleAspProdPecProdutoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'controleAspProdPecProduto.label', default: 'ControleAspProdPecProduto')] as Object[],
                          "Another user has updated this ControleAspProdPecProduto while you were editing")
                render(view: "edit", model: [controleAspProdPecProdutoInstance: controleAspProdPecProdutoInstance])
                return
            }
        }

        controleAspProdPecProdutoInstance.properties = params

        if (!controleAspProdPecProdutoInstance.save(flush: true)) {
            render(view: "edit", model: [controleAspProdPecProdutoInstance: controleAspProdPecProdutoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'controleAspProdPecProduto.label', default: 'ControleAspProdPecProduto'), controleAspProdPecProdutoInstance.id])
        redirect(action: "show", id: controleAspProdPecProdutoInstance.id)
    }

    def delete(Long id) {
        def controleAspProdPecProdutoInstance = ControleAspProdPecProduto.get(id)
        if (!controleAspProdPecProdutoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdPecProduto.label', default: 'ControleAspProdPecProduto'), id])
            redirect(action: "list")
            return
        }

        try {
            controleAspProdPecProdutoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'controleAspProdPecProduto.label', default: 'ControleAspProdPecProduto'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'controleAspProdPecProduto.label', default: 'ControleAspProdPecProduto'), id])
            redirect(action: "show", id: id)
        }
    }
}
