package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class AspectoEconomicoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [aspectoEconomicoInstanceList: AspectoEconomico.list(params), aspectoEconomicoInstanceTotal: AspectoEconomico.count()]
    }

    def create() {
        [aspectoEconomicoInstance: new AspectoEconomico(params)]
    }

    def save() {
        def aspectoEconomicoInstance = new AspectoEconomico(params)
        if (!aspectoEconomicoInstance.save(flush: true)) {
            render(view: "create", model: [aspectoEconomicoInstance: aspectoEconomicoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'aspectoEconomico.label', default: 'AspectoEconomico'), aspectoEconomicoInstance.id])
        redirect(action: "show", id: aspectoEconomicoInstance.id)
    }

    def show(Long id) {
        def aspectoEconomicoInstance = AspectoEconomico.get(id)
        if (!aspectoEconomicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoEconomico.label', default: 'AspectoEconomico'), id])
            redirect(action: "list")
            return
        }

        [aspectoEconomicoInstance: aspectoEconomicoInstance]
    }

    def edit(Long id) {
        def aspectoEconomicoInstance = AspectoEconomico.get(id)
        if (!aspectoEconomicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoEconomico.label', default: 'AspectoEconomico'), id])
            redirect(action: "list")
            return
        }

        [aspectoEconomicoInstance: aspectoEconomicoInstance]
    }

    def update(Long id, Long version) {
        def aspectoEconomicoInstance = AspectoEconomico.get(id)
        if (!aspectoEconomicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoEconomico.label', default: 'AspectoEconomico'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (aspectoEconomicoInstance.version > version) {
                aspectoEconomicoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'aspectoEconomico.label', default: 'AspectoEconomico')] as Object[],
                          "Another user has updated this AspectoEconomico while you were editing")
                render(view: "edit", model: [aspectoEconomicoInstance: aspectoEconomicoInstance])
                return
            }
        }

        aspectoEconomicoInstance.properties = params

        if (!aspectoEconomicoInstance.save(flush: true)) {
            render(view: "edit", model: [aspectoEconomicoInstance: aspectoEconomicoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'aspectoEconomico.label', default: 'AspectoEconomico'), aspectoEconomicoInstance.id])
        redirect(action: "show", id: aspectoEconomicoInstance.id)
    }

    def delete(Long id) {
        def aspectoEconomicoInstance = AspectoEconomico.get(id)
        if (!aspectoEconomicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoEconomico.label', default: 'AspectoEconomico'), id])
            redirect(action: "list")
            return
        }

        try {
            aspectoEconomicoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'aspectoEconomico.label', default: 'AspectoEconomico'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'aspectoEconomico.label', default: 'AspectoEconomico'), id])
            redirect(action: "show", id: id)
        }
    }
}
