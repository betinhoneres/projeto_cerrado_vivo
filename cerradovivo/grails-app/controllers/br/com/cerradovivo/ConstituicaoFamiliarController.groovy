package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class ConstituicaoFamiliarController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [constituicaoFamiliarInstanceList: ConstituicaoFamiliar.list(params), constituicaoFamiliarInstanceTotal: ConstituicaoFamiliar.count()]
    }

    def create() {
        [constituicaoFamiliarInstance: new ConstituicaoFamiliar(params)]
    }

    def save() {
        def constituicaoFamiliarInstance = new ConstituicaoFamiliar(params)
        if (!constituicaoFamiliarInstance.save(flush: true)) {
            render(view: "create", model: [constituicaoFamiliarInstance: constituicaoFamiliarInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'constituicaoFamiliar.label', default: 'ConstituicaoFamiliar'), constituicaoFamiliarInstance.id])
        redirect(action: "show", id: constituicaoFamiliarInstance.id)
    }

    def show(Long id) {
        def constituicaoFamiliarInstance = ConstituicaoFamiliar.get(id)
        if (!constituicaoFamiliarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'constituicaoFamiliar.label', default: 'ConstituicaoFamiliar'), id])
            redirect(action: "list")
            return
        }

        [constituicaoFamiliarInstance: constituicaoFamiliarInstance]
    }

    def edit(Long id) {
        def constituicaoFamiliarInstance = ConstituicaoFamiliar.get(id)
        if (!constituicaoFamiliarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'constituicaoFamiliar.label', default: 'ConstituicaoFamiliar'), id])
            redirect(action: "list")
            return
        }

        [constituicaoFamiliarInstance: constituicaoFamiliarInstance]
    }

    def update(Long id, Long version) {
        def constituicaoFamiliarInstance = ConstituicaoFamiliar.get(id)
        if (!constituicaoFamiliarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'constituicaoFamiliar.label', default: 'ConstituicaoFamiliar'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (constituicaoFamiliarInstance.version > version) {
                constituicaoFamiliarInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'constituicaoFamiliar.label', default: 'ConstituicaoFamiliar')] as Object[],
                          "Another user has updated this ConstituicaoFamiliar while you were editing")
                render(view: "edit", model: [constituicaoFamiliarInstance: constituicaoFamiliarInstance])
                return
            }
        }

        constituicaoFamiliarInstance.properties = params

        if (!constituicaoFamiliarInstance.save(flush: true)) {
            render(view: "edit", model: [constituicaoFamiliarInstance: constituicaoFamiliarInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'constituicaoFamiliar.label', default: 'ConstituicaoFamiliar'), constituicaoFamiliarInstance.id])
        redirect(action: "show", id: constituicaoFamiliarInstance.id)
    }

    def delete(Long id) {
        def constituicaoFamiliarInstance = ConstituicaoFamiliar.get(id)
        if (!constituicaoFamiliarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'constituicaoFamiliar.label', default: 'ConstituicaoFamiliar'), id])
            redirect(action: "list")
            return
        }

        try {
            constituicaoFamiliarInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'constituicaoFamiliar.label', default: 'ConstituicaoFamiliar'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'constituicaoFamiliar.label', default: 'ConstituicaoFamiliar'), id])
            redirect(action: "show", id: id)
        }
    }
}
