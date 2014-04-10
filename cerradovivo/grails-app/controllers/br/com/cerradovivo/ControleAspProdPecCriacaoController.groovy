package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class ControleAspProdPecCriacaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [controleAspProdPecCriacaoInstanceList: ControleAspProdPecCriacao.list(params), controleAspProdPecCriacaoInstanceTotal: ControleAspProdPecCriacao.count()]
    }

    def create() {
        [controleAspProdPecCriacaoInstance: new ControleAspProdPecCriacao(params)]
    }

    def save() {
        def controleAspProdPecCriacaoInstance = new ControleAspProdPecCriacao(params)
        if (!controleAspProdPecCriacaoInstance.save(flush: true)) {
            render(view: "create", model: [controleAspProdPecCriacaoInstance: controleAspProdPecCriacaoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'controleAspProdPecCriacao.label', default: 'ControleAspProdPecCriacao'), controleAspProdPecCriacaoInstance.id])
        redirect(action: "show", id: controleAspProdPecCriacaoInstance.id)
    }

    def show(Long id) {
        def controleAspProdPecCriacaoInstance = ControleAspProdPecCriacao.get(id)
        if (!controleAspProdPecCriacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdPecCriacao.label', default: 'ControleAspProdPecCriacao'), id])
            redirect(action: "list")
            return
        }

        [controleAspProdPecCriacaoInstance: controleAspProdPecCriacaoInstance]
    }

    def edit(Long id) {
        def controleAspProdPecCriacaoInstance = ControleAspProdPecCriacao.get(id)
        if (!controleAspProdPecCriacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdPecCriacao.label', default: 'ControleAspProdPecCriacao'), id])
            redirect(action: "list")
            return
        }

        [controleAspProdPecCriacaoInstance: controleAspProdPecCriacaoInstance]
    }

    def update(Long id, Long version) {
        def controleAspProdPecCriacaoInstance = ControleAspProdPecCriacao.get(id)
        if (!controleAspProdPecCriacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdPecCriacao.label', default: 'ControleAspProdPecCriacao'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (controleAspProdPecCriacaoInstance.version > version) {
                controleAspProdPecCriacaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'controleAspProdPecCriacao.label', default: 'ControleAspProdPecCriacao')] as Object[],
                          "Another user has updated this ControleAspProdPecCriacao while you were editing")
                render(view: "edit", model: [controleAspProdPecCriacaoInstance: controleAspProdPecCriacaoInstance])
                return
            }
        }

        controleAspProdPecCriacaoInstance.properties = params

        if (!controleAspProdPecCriacaoInstance.save(flush: true)) {
            render(view: "edit", model: [controleAspProdPecCriacaoInstance: controleAspProdPecCriacaoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'controleAspProdPecCriacao.label', default: 'ControleAspProdPecCriacao'), controleAspProdPecCriacaoInstance.id])
        redirect(action: "show", id: controleAspProdPecCriacaoInstance.id)
    }

    def delete(Long id) {
        def controleAspProdPecCriacaoInstance = ControleAspProdPecCriacao.get(id)
        if (!controleAspProdPecCriacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdPecCriacao.label', default: 'ControleAspProdPecCriacao'), id])
            redirect(action: "list")
            return
        }

        try {
            controleAspProdPecCriacaoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'controleAspProdPecCriacao.label', default: 'ControleAspProdPecCriacao'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'controleAspProdPecCriacao.label', default: 'ControleAspProdPecCriacao'), id])
            redirect(action: "show", id: id)
        }
    }
}
