package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class ControleAspAmbAniSilController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [controleAspAmbAniSilInstanceList: ControleAspAmbAniSil.list(params), controleAspAmbAniSilInstanceTotal: ControleAspAmbAniSil.count()]
    }

    def create() {
        [controleAspAmbAniSilInstance: new ControleAspAmbAniSil(params)]
    }

    def save() {
        def controleAspAmbAniSilInstance = new ControleAspAmbAniSil(params)
        if (!controleAspAmbAniSilInstance.save(flush: true)) {
            render(view: "create", model: [controleAspAmbAniSilInstance: controleAspAmbAniSilInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'controleAspAmbAniSil.label', default: 'ControleAspAmbAniSil'), controleAspAmbAniSilInstance.id])
        redirect(action: "show", id: controleAspAmbAniSilInstance.id)
    }

    def show(Long id) {
        def controleAspAmbAniSilInstance = ControleAspAmbAniSil.get(id)
        if (!controleAspAmbAniSilInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspAmbAniSil.label', default: 'ControleAspAmbAniSil'), id])
            redirect(action: "list")
            return
        }

        [controleAspAmbAniSilInstance: controleAspAmbAniSilInstance]
    }

    def edit(Long id) {
        def controleAspAmbAniSilInstance = ControleAspAmbAniSil.get(id)
        if (!controleAspAmbAniSilInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspAmbAniSil.label', default: 'ControleAspAmbAniSil'), id])
            redirect(action: "list")
            return
        }

        [controleAspAmbAniSilInstance: controleAspAmbAniSilInstance]
    }

    def update(Long id, Long version) {
        def controleAspAmbAniSilInstance = ControleAspAmbAniSil.get(id)
        if (!controleAspAmbAniSilInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspAmbAniSil.label', default: 'ControleAspAmbAniSil'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (controleAspAmbAniSilInstance.version > version) {
                controleAspAmbAniSilInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'controleAspAmbAniSil.label', default: 'ControleAspAmbAniSil')] as Object[],
                          "Another user has updated this ControleAspAmbAniSil while you were editing")
                render(view: "edit", model: [controleAspAmbAniSilInstance: controleAspAmbAniSilInstance])
                return
            }
        }

        controleAspAmbAniSilInstance.properties = params

        if (!controleAspAmbAniSilInstance.save(flush: true)) {
            render(view: "edit", model: [controleAspAmbAniSilInstance: controleAspAmbAniSilInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'controleAspAmbAniSil.label', default: 'ControleAspAmbAniSil'), controleAspAmbAniSilInstance.id])
        redirect(action: "show", id: controleAspAmbAniSilInstance.id)
    }

    def delete(Long id) {
        def controleAspAmbAniSilInstance = ControleAspAmbAniSil.get(id)
        if (!controleAspAmbAniSilInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspAmbAniSil.label', default: 'ControleAspAmbAniSil'), id])
            redirect(action: "list")
            return
        }

        try {
            controleAspAmbAniSilInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'controleAspAmbAniSil.label', default: 'ControleAspAmbAniSil'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'controleAspAmbAniSil.label', default: 'ControleAspAmbAniSil'), id])
            redirect(action: "show", id: id)
        }
    }
}
