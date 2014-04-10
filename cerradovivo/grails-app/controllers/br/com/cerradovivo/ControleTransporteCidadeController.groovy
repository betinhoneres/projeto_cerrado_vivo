package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class ControleTransporteCidadeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [controleTransporteCidadeInstanceList: ControleTransporteCidade.list(params), controleTransporteCidadeInstanceTotal: ControleTransporteCidade.count()]
    }

    def create() {
        [controleTransporteCidadeInstance: new ControleTransporteCidade(params)]
    }

    def save() {
        def controleTransporteCidadeInstance = new ControleTransporteCidade(params)
        if (!controleTransporteCidadeInstance.save(flush: true)) {
            render(view: "create", model: [controleTransporteCidadeInstance: controleTransporteCidadeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'controleTransporteCidade.label', default: 'ControleTransporteCidade'), controleTransporteCidadeInstance.id])
        redirect(action: "show", id: controleTransporteCidadeInstance.id)
    }

    def show(Long id) {
        def controleTransporteCidadeInstance = ControleTransporteCidade.get(id)
        if (!controleTransporteCidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleTransporteCidade.label', default: 'ControleTransporteCidade'), id])
            redirect(action: "list")
            return
        }

        [controleTransporteCidadeInstance: controleTransporteCidadeInstance]
    }

    def edit(Long id) {
        def controleTransporteCidadeInstance = ControleTransporteCidade.get(id)
        if (!controleTransporteCidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleTransporteCidade.label', default: 'ControleTransporteCidade'), id])
            redirect(action: "list")
            return
        }

        [controleTransporteCidadeInstance: controleTransporteCidadeInstance]
    }

    def update(Long id, Long version) {
        def controleTransporteCidadeInstance = ControleTransporteCidade.get(id)
        if (!controleTransporteCidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleTransporteCidade.label', default: 'ControleTransporteCidade'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (controleTransporteCidadeInstance.version > version) {
                controleTransporteCidadeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'controleTransporteCidade.label', default: 'ControleTransporteCidade')] as Object[],
                          "Another user has updated this ControleTransporteCidade while you were editing")
                render(view: "edit", model: [controleTransporteCidadeInstance: controleTransporteCidadeInstance])
                return
            }
        }

        controleTransporteCidadeInstance.properties = params

        if (!controleTransporteCidadeInstance.save(flush: true)) {
            render(view: "edit", model: [controleTransporteCidadeInstance: controleTransporteCidadeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'controleTransporteCidade.label', default: 'ControleTransporteCidade'), controleTransporteCidadeInstance.id])
        redirect(action: "show", id: controleTransporteCidadeInstance.id)
    }

    def delete(Long id) {
        def controleTransporteCidadeInstance = ControleTransporteCidade.get(id)
        if (!controleTransporteCidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'controleTransporteCidade.label', default: 'ControleTransporteCidade'), id])
            redirect(action: "list")
            return
        }

        try {
            controleTransporteCidadeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'controleTransporteCidade.label', default: 'ControleTransporteCidade'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'controleTransporteCidade.label', default: 'ControleTransporteCidade'), id])
            redirect(action: "show", id: id)
        }
    }
}
