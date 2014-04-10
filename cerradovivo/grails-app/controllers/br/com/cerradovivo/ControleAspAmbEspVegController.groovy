package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class ControleAspAmbEspVegController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [controleAspAmbEspVegInstanceList: ControleAspAmbEspVeg.list(params), controleAspAmbEspVegInstanceTotal: ControleAspAmbEspVeg.count()]
    }

    def create() {
        [controleAspAmbEspVegInstance: new ControleAspAmbEspVeg(params)]
    }

    def save() {
        def controleAspAmbEspVegInstance = new ControleAspAmbEspVeg(params)
        if (!controleAspAmbEspVegInstance.save(flush: true)) {
            render(view: "create", model: [controleAspAmbEspVegInstance: controleAspAmbEspVegInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'controleAspAmbEspVeg.label', default: 'ControleAspAmbEspVeg'), controleAspAmbEspVegInstance.id])
        redirect(action: "show", id: controleAspAmbEspVegInstance.id)
    }

    def show(Long id) {
        def controleAspAmbEspVegInstance = ControleAspAmbEspVeg.get(id)
        if (!controleAspAmbEspVegInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspAmbEspVeg.label', default: 'ControleAspAmbEspVeg'), id])
            redirect(action: "list")
            return
        }

        [controleAspAmbEspVegInstance: controleAspAmbEspVegInstance]
    }

    def edit(Long id) {
        def controleAspAmbEspVegInstance = ControleAspAmbEspVeg.get(id)
        if (!controleAspAmbEspVegInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspAmbEspVeg.label', default: 'ControleAspAmbEspVeg'), id])
            redirect(action: "list")
            return
        }

        [controleAspAmbEspVegInstance: controleAspAmbEspVegInstance]
    }

    def update(Long id, Long version) {
        def controleAspAmbEspVegInstance = ControleAspAmbEspVeg.get(id)
        if (!controleAspAmbEspVegInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspAmbEspVeg.label', default: 'ControleAspAmbEspVeg'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (controleAspAmbEspVegInstance.version > version) {
                controleAspAmbEspVegInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'controleAspAmbEspVeg.label', default: 'ControleAspAmbEspVeg')] as Object[],
                          "Another user has updated this ControleAspAmbEspVeg while you were editing")
                render(view: "edit", model: [controleAspAmbEspVegInstance: controleAspAmbEspVegInstance])
                return
            }
        }

        controleAspAmbEspVegInstance.properties = params

        if (!controleAspAmbEspVegInstance.save(flush: true)) {
            render(view: "edit", model: [controleAspAmbEspVegInstance: controleAspAmbEspVegInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'controleAspAmbEspVeg.label', default: 'ControleAspAmbEspVeg'), controleAspAmbEspVegInstance.id])
        redirect(action: "show", id: controleAspAmbEspVegInstance.id)
    }

    def delete(Long id) {
        def controleAspAmbEspVegInstance = ControleAspAmbEspVeg.get(id)
        if (!controleAspAmbEspVegInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspAmbEspVeg.label', default: 'ControleAspAmbEspVeg'), id])
            redirect(action: "list")
            return
        }

        try {
            controleAspAmbEspVegInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'controleAspAmbEspVeg.label', default: 'ControleAspAmbEspVeg'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'controleAspAmbEspVeg.label', default: 'ControleAspAmbEspVeg'), id])
            redirect(action: "show", id: id)
        }
    }
}
