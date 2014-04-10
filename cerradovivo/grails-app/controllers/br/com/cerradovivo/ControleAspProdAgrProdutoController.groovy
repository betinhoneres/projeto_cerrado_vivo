package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class ControleAspProdAgrProdutoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [controleAspProdAgrProdutoInstanceList: ControleAspProdAgrProduto.list(params), controleAspProdAgrProdutoInstanceTotal: ControleAspProdAgrProduto.count()]
    }

    def create() {
        [controleAspProdAgrProdutoInstance: new ControleAspProdAgrProduto(params)]
    }

    def save() {
        def controleAspProdAgrProdutoInstance = new ControleAspProdAgrProduto(params)
        if (!controleAspProdAgrProdutoInstance.save(flush: true)) {
            render(view: "create", model: [controleAspProdAgrProdutoInstance: controleAspProdAgrProdutoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'controleAspProdAgrProduto.label', default: 'ControleAspProdAgrProduto'), controleAspProdAgrProdutoInstance.id])
        redirect(action: "show", id: controleAspProdAgrProdutoInstance.id)
    }

    def show(Long id) {
        def controleAspProdAgrProdutoInstance = ControleAspProdAgrProduto.get(id)
        if (!controleAspProdAgrProdutoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdAgrProduto.label', default: 'ControleAspProdAgrProduto'), id])
            redirect(action: "list")
            return
        }

        [controleAspProdAgrProdutoInstance: controleAspProdAgrProdutoInstance]
    }

    def edit(Long id) {
        def controleAspProdAgrProdutoInstance = ControleAspProdAgrProduto.get(id)
        if (!controleAspProdAgrProdutoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdAgrProduto.label', default: 'ControleAspProdAgrProduto'), id])
            redirect(action: "list")
            return
        }

        [controleAspProdAgrProdutoInstance: controleAspProdAgrProdutoInstance]
    }

    def update(Long id, Long version) {
        def controleAspProdAgrProdutoInstance = ControleAspProdAgrProduto.get(id)
        if (!controleAspProdAgrProdutoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdAgrProduto.label', default: 'ControleAspProdAgrProduto'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (controleAspProdAgrProdutoInstance.version > version) {
                controleAspProdAgrProdutoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'controleAspProdAgrProduto.label', default: 'ControleAspProdAgrProduto')] as Object[],
                          "Another user has updated this ControleAspProdAgrProduto while you were editing")
                render(view: "edit", model: [controleAspProdAgrProdutoInstance: controleAspProdAgrProdutoInstance])
                return
            }
        }

        controleAspProdAgrProdutoInstance.properties = params

        if (!controleAspProdAgrProdutoInstance.save(flush: true)) {
            render(view: "edit", model: [controleAspProdAgrProdutoInstance: controleAspProdAgrProdutoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'controleAspProdAgrProduto.label', default: 'ControleAspProdAgrProduto'), controleAspProdAgrProdutoInstance.id])
        redirect(action: "show", id: controleAspProdAgrProdutoInstance.id)
    }

    def delete(Long id) {
        def controleAspProdAgrProdutoInstance = ControleAspProdAgrProduto.get(id)
        if (!controleAspProdAgrProdutoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdAgrProduto.label', default: 'ControleAspProdAgrProduto'), id])
            redirect(action: "list")
            return
        }

        try {
            controleAspProdAgrProdutoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'controleAspProdAgrProduto.label', default: 'ControleAspProdAgrProduto'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'controleAspProdAgrProduto.label', default: 'ControleAspProdAgrProduto'), id])
            redirect(action: "show", id: id)
        }
    }
}
