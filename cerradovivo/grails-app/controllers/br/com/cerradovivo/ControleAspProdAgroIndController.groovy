package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class ControleAspProdAgroIndController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [controleAspProdAgroIndInstanceList: ControleAspProdAgroInd.list(params), controleAspProdAgroIndInstanceTotal: ControleAspProdAgroInd.count()]
    }

    def create() {
        [controleAspProdAgroIndInstance: new ControleAspProdAgroInd(params)]
    }

    def save() {
        def controleAspProdAgroIndInstance = new ControleAspProdAgroInd(params)
        if (!controleAspProdAgroIndInstance.save(flush: true)) {
            render(view: "create", model: [controleAspProdAgroIndInstance: controleAspProdAgroIndInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'controleAspProdAgroInd.label', default: 'ControleAspProdAgroInd'), controleAspProdAgroIndInstance.id])
        redirect(action: "show", id: controleAspProdAgroIndInstance.id)
    }

    def show(Long id) {
        def controleAspProdAgroIndInstance = ControleAspProdAgroInd.get(id)
        if (!controleAspProdAgroIndInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdAgroInd.label', default: 'ControleAspProdAgroInd'), id])
            redirect(action: "list")
            return
        }

        [controleAspProdAgroIndInstance: controleAspProdAgroIndInstance]
    }

    def edit(Long id) {
        def controleAspProdAgroIndInstance = ControleAspProdAgroInd.get(id)
        if (!controleAspProdAgroIndInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdAgroInd.label', default: 'ControleAspProdAgroInd'), id])
            redirect(action: "list")
            return
        }

        [controleAspProdAgroIndInstance: controleAspProdAgroIndInstance]
    }

    def update(Long id, Long version) {
        def controleAspProdAgroIndInstance = ControleAspProdAgroInd.get(id)
        if (!controleAspProdAgroIndInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdAgroInd.label', default: 'ControleAspProdAgroInd'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (controleAspProdAgroIndInstance.version > version) {
                controleAspProdAgroIndInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'controleAspProdAgroInd.label', default: 'ControleAspProdAgroInd')] as Object[],
                          "Another user has updated this ControleAspProdAgroInd while you were editing")
                render(view: "edit", model: [controleAspProdAgroIndInstance: controleAspProdAgroIndInstance])
                return
            }
        }

        controleAspProdAgroIndInstance.properties = params

        if (!controleAspProdAgroIndInstance.save(flush: true)) {
            render(view: "edit", model: [controleAspProdAgroIndInstance: controleAspProdAgroIndInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'controleAspProdAgroInd.label', default: 'ControleAspProdAgroInd'), controleAspProdAgroIndInstance.id])
        redirect(action: "show", id: controleAspProdAgroIndInstance.id)
    }

    def delete(Long id) {
        def controleAspProdAgroIndInstance = ControleAspProdAgroInd.get(id)
        if (!controleAspProdAgroIndInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdAgroInd.label', default: 'ControleAspProdAgroInd'), id])
            redirect(action: "list")
            return
        }

        try {
            controleAspProdAgroIndInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'controleAspProdAgroInd.label', default: 'ControleAspProdAgroInd'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'controleAspProdAgroInd.label', default: 'ControleAspProdAgroInd'), id])
            redirect(action: "show", id: id)
        }
    }
}
