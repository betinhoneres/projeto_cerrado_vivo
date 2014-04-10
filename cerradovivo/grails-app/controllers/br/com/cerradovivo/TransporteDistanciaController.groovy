package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class TransporteDistanciaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [transporteDistanciaInstanceList: TransporteDistancia.list(params), transporteDistanciaInstanceTotal: TransporteDistancia.count()]
    }

    def create() {
        [transporteDistanciaInstance: new TransporteDistancia(params)]
    }

    def save() {
        def transporteDistanciaInstance = new TransporteDistancia(params)
        if (!transporteDistanciaInstance.save(flush: true)) {
            render(view: "create", model: [transporteDistanciaInstance: transporteDistanciaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'transporteDistancia.label', default: 'TransporteDistancia'), transporteDistanciaInstance.id])
        redirect(action: "show", id: transporteDistanciaInstance.id)
    }

    def show(Long id) {
        def transporteDistanciaInstance = TransporteDistancia.get(id)
        if (!transporteDistanciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transporteDistancia.label', default: 'TransporteDistancia'), id])
            redirect(action: "list")
            return
        }

        [transporteDistanciaInstance: transporteDistanciaInstance]
    }

    def edit(Long id) {
        def transporteDistanciaInstance = TransporteDistancia.get(id)
        if (!transporteDistanciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transporteDistancia.label', default: 'TransporteDistancia'), id])
            redirect(action: "list")
            return
        }

        [transporteDistanciaInstance: transporteDistanciaInstance]
    }

    def update(Long id, Long version) {
        def transporteDistanciaInstance = TransporteDistancia.get(id)
        if (!transporteDistanciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transporteDistancia.label', default: 'TransporteDistancia'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (transporteDistanciaInstance.version > version) {
                transporteDistanciaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'transporteDistancia.label', default: 'TransporteDistancia')] as Object[],
                          "Another user has updated this TransporteDistancia while you were editing")
                render(view: "edit", model: [transporteDistanciaInstance: transporteDistanciaInstance])
                return
            }
        }

        transporteDistanciaInstance.properties = params

        if (!transporteDistanciaInstance.save(flush: true)) {
            render(view: "edit", model: [transporteDistanciaInstance: transporteDistanciaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'transporteDistancia.label', default: 'TransporteDistancia'), transporteDistanciaInstance.id])
        redirect(action: "show", id: transporteDistanciaInstance.id)
    }

    def delete(Long id) {
        def transporteDistanciaInstance = TransporteDistancia.get(id)
        if (!transporteDistanciaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transporteDistancia.label', default: 'TransporteDistancia'), id])
            redirect(action: "list")
            return
        }

        try {
            transporteDistanciaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'transporteDistancia.label', default: 'TransporteDistancia'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'transporteDistancia.label', default: 'TransporteDistancia'), id])
            redirect(action: "show", id: id)
        }
    }
}
