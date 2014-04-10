package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class AspectoProdutivoAgricolaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [aspectoProdutivoAgricolaInstanceList: AspectoProdutivoAgricola.list(params), aspectoProdutivoAgricolaInstanceTotal: AspectoProdutivoAgricola.count()]
    }

    def create() {
        [aspectoProdutivoAgricolaInstance: new AspectoProdutivoAgricola(params)]
    }

    def save() {
        def aspectoProdutivoAgricolaInstance = new AspectoProdutivoAgricola(params)
        if (!aspectoProdutivoAgricolaInstance.save(flush: true)) {
            render(view: "create", model: [aspectoProdutivoAgricolaInstance: aspectoProdutivoAgricolaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'aspectoProdutivoAgricola.label', default: 'AspectoProdutivoAgricola'), aspectoProdutivoAgricolaInstance.id])
        redirect(action: "show", id: aspectoProdutivoAgricolaInstance.id)
    }

    def show(Long id) {
        def aspectoProdutivoAgricolaInstance = AspectoProdutivoAgricola.get(id)
        if (!aspectoProdutivoAgricolaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoAgricola.label', default: 'AspectoProdutivoAgricola'), id])
            redirect(action: "list")
            return
        }

        [aspectoProdutivoAgricolaInstance: aspectoProdutivoAgricolaInstance]
    }

    def edit(Long id) {
        def aspectoProdutivoAgricolaInstance = AspectoProdutivoAgricola.get(id)
        if (!aspectoProdutivoAgricolaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoAgricola.label', default: 'AspectoProdutivoAgricola'), id])
            redirect(action: "list")
            return
        }

        [aspectoProdutivoAgricolaInstance: aspectoProdutivoAgricolaInstance]
    }

    def update(Long id, Long version) {
        def aspectoProdutivoAgricolaInstance = AspectoProdutivoAgricola.get(id)
        if (!aspectoProdutivoAgricolaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoAgricola.label', default: 'AspectoProdutivoAgricola'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (aspectoProdutivoAgricolaInstance.version > version) {
                aspectoProdutivoAgricolaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'aspectoProdutivoAgricola.label', default: 'AspectoProdutivoAgricola')] as Object[],
                          "Another user has updated this AspectoProdutivoAgricola while you were editing")
                render(view: "edit", model: [aspectoProdutivoAgricolaInstance: aspectoProdutivoAgricolaInstance])
                return
            }
        }

        aspectoProdutivoAgricolaInstance.properties = params

        if (!aspectoProdutivoAgricolaInstance.save(flush: true)) {
            render(view: "edit", model: [aspectoProdutivoAgricolaInstance: aspectoProdutivoAgricolaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'aspectoProdutivoAgricola.label', default: 'AspectoProdutivoAgricola'), aspectoProdutivoAgricolaInstance.id])
        redirect(action: "show", id: aspectoProdutivoAgricolaInstance.id)
    }

    def delete(Long id) {
        def aspectoProdutivoAgricolaInstance = AspectoProdutivoAgricola.get(id)
        if (!aspectoProdutivoAgricolaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoAgricola.label', default: 'AspectoProdutivoAgricola'), id])
            redirect(action: "list")
            return
        }

        try {
            aspectoProdutivoAgricolaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'aspectoProdutivoAgricola.label', default: 'AspectoProdutivoAgricola'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'aspectoProdutivoAgricola.label', default: 'AspectoProdutivoAgricola'), id])
            redirect(action: "show", id: id)
        }
    }
}
