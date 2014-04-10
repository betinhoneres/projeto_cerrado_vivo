package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class SociabilidadeCulturaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [sociabilidadeCulturaInstanceList: SociabilidadeCultura.list(params), sociabilidadeCulturaInstanceTotal: SociabilidadeCultura.count()]
    }

    def create() {
        [sociabilidadeCulturaInstance: new SociabilidadeCultura(params)]
    }

    def save() {
        def sociabilidadeCulturaInstance = new SociabilidadeCultura(params)
        if (!sociabilidadeCulturaInstance.save(flush: true)) {
            render(view: "create", model: [sociabilidadeCulturaInstance: sociabilidadeCulturaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'sociabilidadeCultura.label', default: 'SociabilidadeCultura'), sociabilidadeCulturaInstance.id])
        redirect(action: "show", id: sociabilidadeCulturaInstance.id)
    }

    def show(Long id) {
        def sociabilidadeCulturaInstance = SociabilidadeCultura.get(id)
        if (!sociabilidadeCulturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sociabilidadeCultura.label', default: 'SociabilidadeCultura'), id])
            redirect(action: "list")
            return
        }

        [sociabilidadeCulturaInstance: sociabilidadeCulturaInstance]
    }

    def edit(Long id) {
        def sociabilidadeCulturaInstance = SociabilidadeCultura.get(id)
        if (!sociabilidadeCulturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sociabilidadeCultura.label', default: 'SociabilidadeCultura'), id])
            redirect(action: "list")
            return
        }

        [sociabilidadeCulturaInstance: sociabilidadeCulturaInstance]
    }

    def update(Long id, Long version) {
        def sociabilidadeCulturaInstance = SociabilidadeCultura.get(id)
        if (!sociabilidadeCulturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sociabilidadeCultura.label', default: 'SociabilidadeCultura'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (sociabilidadeCulturaInstance.version > version) {
                sociabilidadeCulturaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'sociabilidadeCultura.label', default: 'SociabilidadeCultura')] as Object[],
                          "Another user has updated this SociabilidadeCultura while you were editing")
                render(view: "edit", model: [sociabilidadeCulturaInstance: sociabilidadeCulturaInstance])
                return
            }
        }

        sociabilidadeCulturaInstance.properties = params

        if (!sociabilidadeCulturaInstance.save(flush: true)) {
            render(view: "edit", model: [sociabilidadeCulturaInstance: sociabilidadeCulturaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'sociabilidadeCultura.label', default: 'SociabilidadeCultura'), sociabilidadeCulturaInstance.id])
        redirect(action: "show", id: sociabilidadeCulturaInstance.id)
    }

    def delete(Long id) {
        def sociabilidadeCulturaInstance = SociabilidadeCultura.get(id)
        if (!sociabilidadeCulturaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sociabilidadeCultura.label', default: 'SociabilidadeCultura'), id])
            redirect(action: "list")
            return
        }

        try {
            sociabilidadeCulturaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'sociabilidadeCultura.label', default: 'SociabilidadeCultura'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sociabilidadeCultura.label', default: 'SociabilidadeCultura'), id])
            redirect(action: "show", id: id)
        }
    }
}
