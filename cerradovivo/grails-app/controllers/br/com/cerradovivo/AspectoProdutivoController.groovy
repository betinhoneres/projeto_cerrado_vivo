package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class AspectoProdutivoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [aspectoProdutivoInstanceList: AspectoProdutivo.list(params), aspectoProdutivoInstanceTotal: AspectoProdutivo.count()]
    }

    def create() {
        [aspectoProdutivoInstance: new AspectoProdutivo(params)]
    }

    def save() {
        def aspectoProdutivoInstance = new AspectoProdutivo(params)
        if (!aspectoProdutivoInstance.save(flush: true)) {
            render(view: "create", model: [aspectoProdutivoInstance: aspectoProdutivoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'aspectoProdutivo.label', default: 'AspectoProdutivo'), aspectoProdutivoInstance.id])
        redirect(action: "show", id: aspectoProdutivoInstance.id)
    }

    def show(Long id) {
        def aspectoProdutivoInstance = AspectoProdutivo.get(id)
        if (!aspectoProdutivoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivo.label', default: 'AspectoProdutivo'), id])
            redirect(action: "list")
            return
        }

        [aspectoProdutivoInstance: aspectoProdutivoInstance]
    }

    def edit(Long id) {
        def aspectoProdutivoInstance = AspectoProdutivo.get(id)
        if (!aspectoProdutivoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivo.label', default: 'AspectoProdutivo'), id])
            redirect(action: "list")
            return
        }

        [aspectoProdutivoInstance: aspectoProdutivoInstance]
    }

    def update(Long id, Long version) {
        def aspectoProdutivoInstance = AspectoProdutivo.get(id)
        if (!aspectoProdutivoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivo.label', default: 'AspectoProdutivo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (aspectoProdutivoInstance.version > version) {
                aspectoProdutivoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'aspectoProdutivo.label', default: 'AspectoProdutivo')] as Object[],
                          "Another user has updated this AspectoProdutivo while you were editing")
                render(view: "edit", model: [aspectoProdutivoInstance: aspectoProdutivoInstance])
                return
            }
        }

        aspectoProdutivoInstance.properties = params

        if (!aspectoProdutivoInstance.save(flush: true)) {
            render(view: "edit", model: [aspectoProdutivoInstance: aspectoProdutivoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'aspectoProdutivo.label', default: 'AspectoProdutivo'), aspectoProdutivoInstance.id])
        redirect(action: "show", id: aspectoProdutivoInstance.id)
    }

    def delete(Long id) {
        def aspectoProdutivoInstance = AspectoProdutivo.get(id)
        if (!aspectoProdutivoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivo.label', default: 'AspectoProdutivo'), id])
            redirect(action: "list")
            return
        }

        try {
            aspectoProdutivoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'aspectoProdutivo.label', default: 'AspectoProdutivo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'aspectoProdutivo.label', default: 'AspectoProdutivo'), id])
            redirect(action: "show", id: id)
        }
    }
}
