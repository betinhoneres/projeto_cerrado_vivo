package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class EspecieVegetalController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [especieVegetalInstanceList: EspecieVegetal.list(params), especieVegetalInstanceTotal: EspecieVegetal.count()]
    }

    def create() {
        [especieVegetalInstance: new EspecieVegetal(params)]
    }

    def save() {
        def especieVegetalInstance = new EspecieVegetal(params)
        if (!especieVegetalInstance.save(flush: true)) {
            render(view: "create", model: [especieVegetalInstance: especieVegetalInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'especieVegetal.label', default: 'EspecieVegetal'), especieVegetalInstance.id])
        redirect(action: "show", id: especieVegetalInstance.id)
    }

    def show(Long id) {
        def especieVegetalInstance = EspecieVegetal.get(id)
        if (!especieVegetalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'especieVegetal.label', default: 'EspecieVegetal'), id])
            redirect(action: "list")
            return
        }

        [especieVegetalInstance: especieVegetalInstance]
    }

    def edit(Long id) {
        def especieVegetalInstance = EspecieVegetal.get(id)
        if (!especieVegetalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'especieVegetal.label', default: 'EspecieVegetal'), id])
            redirect(action: "list")
            return
        }

        [especieVegetalInstance: especieVegetalInstance]
    }

    def update(Long id, Long version) {
        def especieVegetalInstance = EspecieVegetal.get(id)
        if (!especieVegetalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'especieVegetal.label', default: 'EspecieVegetal'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (especieVegetalInstance.version > version) {
                especieVegetalInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'especieVegetal.label', default: 'EspecieVegetal')] as Object[],
                          "Another user has updated this EspecieVegetal while you were editing")
                render(view: "edit", model: [especieVegetalInstance: especieVegetalInstance])
                return
            }
        }

        especieVegetalInstance.properties = params

        if (!especieVegetalInstance.save(flush: true)) {
            render(view: "edit", model: [especieVegetalInstance: especieVegetalInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'especieVegetal.label', default: 'EspecieVegetal'), especieVegetalInstance.id])
        redirect(action: "show", id: especieVegetalInstance.id)
    }

    def delete(Long id) {
        def especieVegetalInstance = EspecieVegetal.get(id)
        if (!especieVegetalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'especieVegetal.label', default: 'EspecieVegetal'), id])
            redirect(action: "list")
            return
        }

        try {
            especieVegetalInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'especieVegetal.label', default: 'EspecieVegetal'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'especieVegetal.label', default: 'EspecieVegetal'), id])
            redirect(action: "show", id: id)
        }
    }
}
