package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class AspectoProdutivoTecnologicoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [aspectoProdutivoTecnologicoInstanceList: AspectoProdutivoTecnologico.list(params), aspectoProdutivoTecnologicoInstanceTotal: AspectoProdutivoTecnologico.count()]
    }

    def create() {
        [aspectoProdutivoTecnologicoInstance: new AspectoProdutivoTecnologico(params)]
    }

    def save() {
        def aspectoProdutivoTecnologicoInstance = new AspectoProdutivoTecnologico(params)
        if (!aspectoProdutivoTecnologicoInstance.save(flush: true)) {
            render(view: "create", model: [aspectoProdutivoTecnologicoInstance: aspectoProdutivoTecnologicoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'aspectoProdutivoTecnologico.label', default: 'AspectoProdutivoTecnologico'), aspectoProdutivoTecnologicoInstance.id])
        redirect(action: "show", id: aspectoProdutivoTecnologicoInstance.id)
    }

    def show(Long id) {
        def aspectoProdutivoTecnologicoInstance = AspectoProdutivoTecnologico.get(id)
        if (!aspectoProdutivoTecnologicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoTecnologico.label', default: 'AspectoProdutivoTecnologico'), id])
            redirect(action: "list")
            return
        }

        [aspectoProdutivoTecnologicoInstance: aspectoProdutivoTecnologicoInstance]
    }

    def edit(Long id) {
        def aspectoProdutivoTecnologicoInstance = AspectoProdutivoTecnologico.get(id)
        if (!aspectoProdutivoTecnologicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoTecnologico.label', default: 'AspectoProdutivoTecnologico'), id])
            redirect(action: "list")
            return
        }

        [aspectoProdutivoTecnologicoInstance: aspectoProdutivoTecnologicoInstance]
    }

    def update(Long id, Long version) {
        def aspectoProdutivoTecnologicoInstance = AspectoProdutivoTecnologico.get(id)
        if (!aspectoProdutivoTecnologicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoTecnologico.label', default: 'AspectoProdutivoTecnologico'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (aspectoProdutivoTecnologicoInstance.version > version) {
                aspectoProdutivoTecnologicoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'aspectoProdutivoTecnologico.label', default: 'AspectoProdutivoTecnologico')] as Object[],
                          "Another user has updated this AspectoProdutivoTecnologico while you were editing")
                render(view: "edit", model: [aspectoProdutivoTecnologicoInstance: aspectoProdutivoTecnologicoInstance])
                return
            }
        }

        aspectoProdutivoTecnologicoInstance.properties = params

        if (!aspectoProdutivoTecnologicoInstance.save(flush: true)) {
            render(view: "edit", model: [aspectoProdutivoTecnologicoInstance: aspectoProdutivoTecnologicoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'aspectoProdutivoTecnologico.label', default: 'AspectoProdutivoTecnologico'), aspectoProdutivoTecnologicoInstance.id])
        redirect(action: "show", id: aspectoProdutivoTecnologicoInstance.id)
    }

    def delete(Long id) {
        def aspectoProdutivoTecnologicoInstance = AspectoProdutivoTecnologico.get(id)
        if (!aspectoProdutivoTecnologicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoTecnologico.label', default: 'AspectoProdutivoTecnologico'), id])
            redirect(action: "list")
            return
        }

        try {
            aspectoProdutivoTecnologicoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'aspectoProdutivoTecnologico.label', default: 'AspectoProdutivoTecnologico'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'aspectoProdutivoTecnologico.label', default: 'AspectoProdutivoTecnologico'), id])
            redirect(action: "show", id: id)
        }
    }
}
