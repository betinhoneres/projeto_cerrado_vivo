package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class AspectoProdutivoAgroIndustrializadoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [aspectoProdutivoAgroIndustrializadoInstanceList: AspectoProdutivoAgroIndustrializado.list(params), aspectoProdutivoAgroIndustrializadoInstanceTotal: AspectoProdutivoAgroIndustrializado.count()]
    }

    def create() {
        [aspectoProdutivoAgroIndustrializadoInstance: new AspectoProdutivoAgroIndustrializado(params)]
    }

    def save() {
        def aspectoProdutivoAgroIndustrializadoInstance = new AspectoProdutivoAgroIndustrializado(params)
        if (!aspectoProdutivoAgroIndustrializadoInstance.save(flush: true)) {
            render(view: "create", model: [aspectoProdutivoAgroIndustrializadoInstance: aspectoProdutivoAgroIndustrializadoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'aspectoProdutivoAgroIndustrializado.label', default: 'AspectoProdutivoAgroIndustrializado'), aspectoProdutivoAgroIndustrializadoInstance.id])
        redirect(action: "show", id: aspectoProdutivoAgroIndustrializadoInstance.id)
    }

    def show(Long id) {
        def aspectoProdutivoAgroIndustrializadoInstance = AspectoProdutivoAgroIndustrializado.get(id)
        if (!aspectoProdutivoAgroIndustrializadoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoAgroIndustrializado.label', default: 'AspectoProdutivoAgroIndustrializado'), id])
            redirect(action: "list")
            return
        }

        [aspectoProdutivoAgroIndustrializadoInstance: aspectoProdutivoAgroIndustrializadoInstance]
    }

    def edit(Long id) {
        def aspectoProdutivoAgroIndustrializadoInstance = AspectoProdutivoAgroIndustrializado.get(id)
        if (!aspectoProdutivoAgroIndustrializadoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoAgroIndustrializado.label', default: 'AspectoProdutivoAgroIndustrializado'), id])
            redirect(action: "list")
            return
        }

        [aspectoProdutivoAgroIndustrializadoInstance: aspectoProdutivoAgroIndustrializadoInstance]
    }

    def update(Long id, Long version) {
        def aspectoProdutivoAgroIndustrializadoInstance = AspectoProdutivoAgroIndustrializado.get(id)
        if (!aspectoProdutivoAgroIndustrializadoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoAgroIndustrializado.label', default: 'AspectoProdutivoAgroIndustrializado'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (aspectoProdutivoAgroIndustrializadoInstance.version > version) {
                aspectoProdutivoAgroIndustrializadoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'aspectoProdutivoAgroIndustrializado.label', default: 'AspectoProdutivoAgroIndustrializado')] as Object[],
                          "Another user has updated this AspectoProdutivoAgroIndustrializado while you were editing")
                render(view: "edit", model: [aspectoProdutivoAgroIndustrializadoInstance: aspectoProdutivoAgroIndustrializadoInstance])
                return
            }
        }

        aspectoProdutivoAgroIndustrializadoInstance.properties = params

        if (!aspectoProdutivoAgroIndustrializadoInstance.save(flush: true)) {
            render(view: "edit", model: [aspectoProdutivoAgroIndustrializadoInstance: aspectoProdutivoAgroIndustrializadoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'aspectoProdutivoAgroIndustrializado.label', default: 'AspectoProdutivoAgroIndustrializado'), aspectoProdutivoAgroIndustrializadoInstance.id])
        redirect(action: "show", id: aspectoProdutivoAgroIndustrializadoInstance.id)
    }

    def delete(Long id) {
        def aspectoProdutivoAgroIndustrializadoInstance = AspectoProdutivoAgroIndustrializado.get(id)
        if (!aspectoProdutivoAgroIndustrializadoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aspectoProdutivoAgroIndustrializado.label', default: 'AspectoProdutivoAgroIndustrializado'), id])
            redirect(action: "list")
            return
        }

        try {
            aspectoProdutivoAgroIndustrializadoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'aspectoProdutivoAgroIndustrializado.label', default: 'AspectoProdutivoAgroIndustrializado'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'aspectoProdutivoAgroIndustrializado.label', default: 'AspectoProdutivoAgroIndustrializado'), id])
            redirect(action: "show", id: id)
        }
    }
}
