package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class ControleAspProdAgrCulturaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [controleAspProdAgrCulturaInstanceList: ControleAspProdAgrCultura.list(params), controleAspProdAgrCulturaInstanceTotal: ControleAspProdAgrCultura.count()]
    }

    def create() {
        [controleAspProdAgrCulturaInstance: new ControleAspProdAgrCultura(params)]
    }

    def save() {
        def controleAspProdAgrCulturaInstance = new ControleAspProdAgrCultura(params)
        if (!controleAspProdAgrCulturaInstance.save(flush: true)) {
            render(view: "create", model: [controleAspProdAgrCulturaInstance: controleAspProdAgrCulturaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'controleAspProdAgrCultura.label', default: 'ControleAspProdAgrCultura'), controleAspProdAgrCulturaInstance.id])
        redirect(action: "show", id: controleAspProdAgrCulturaInstance.id)
    }

    def show(Long id) {
        def controleAspProdAgrCulturaInstance = ControleAspProdAgrCultura.get(id)
        if (!controleAspProdAgrCulturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdAgrCultura.label', default: 'ControleAspProdAgrCultura'), id])
            redirect(action: "list")
            return
        }

        [controleAspProdAgrCulturaInstance: controleAspProdAgrCulturaInstance]
    }

    def edit(Long id) {
        def controleAspProdAgrCulturaInstance = ControleAspProdAgrCultura.get(id)
        if (!controleAspProdAgrCulturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdAgrCultura.label', default: 'ControleAspProdAgrCultura'), id])
            redirect(action: "list")
            return
        }

        [controleAspProdAgrCulturaInstance: controleAspProdAgrCulturaInstance]
    }

    def update(Long id, Long version) {
        def controleAspProdAgrCulturaInstance = ControleAspProdAgrCultura.get(id)
        if (!controleAspProdAgrCulturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdAgrCultura.label', default: 'ControleAspProdAgrCultura'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (controleAspProdAgrCulturaInstance.version > version) {
                controleAspProdAgrCulturaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'controleAspProdAgrCultura.label', default: 'ControleAspProdAgrCultura')] as Object[],
                          "Another user has updated this ControleAspProdAgrCultura while you were editing")
                render(view: "edit", model: [controleAspProdAgrCulturaInstance: controleAspProdAgrCulturaInstance])
                return
            }
        }

        controleAspProdAgrCulturaInstance.properties = params

        if (!controleAspProdAgrCulturaInstance.save(flush: true)) {
            render(view: "edit", model: [controleAspProdAgrCulturaInstance: controleAspProdAgrCulturaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'controleAspProdAgrCultura.label', default: 'ControleAspProdAgrCultura'), controleAspProdAgrCulturaInstance.id])
        redirect(action: "show", id: controleAspProdAgrCulturaInstance.id)
    }

    def delete(Long id) {
        def controleAspProdAgrCulturaInstance = ControleAspProdAgrCultura.get(id)
        if (!controleAspProdAgrCulturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleAspProdAgrCultura.label', default: 'ControleAspProdAgrCultura'), id])
            redirect(action: "list")
            return
        }

        try {
            controleAspProdAgrCulturaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'controleAspProdAgrCultura.label', default: 'ControleAspProdAgrCultura'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'controleAspProdAgrCultura.label', default: 'ControleAspProdAgrCultura'), id])
            redirect(action: "show", id: id)
        }
    }
}
