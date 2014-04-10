package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class AnimalSilvestreController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [animalSilvestreInstanceList: AnimalSilvestre.list(params), animalSilvestreInstanceTotal: AnimalSilvestre.count()]
    }

    def create() {
        [animalSilvestreInstance: new AnimalSilvestre(params)]
    }

    def save() {
        def animalSilvestreInstance = new AnimalSilvestre(params)
        if (!animalSilvestreInstance.save(flush: true)) {
            render(view: "create", model: [animalSilvestreInstance: animalSilvestreInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'animalSilvestre.label', default: 'AnimalSilvestre'), animalSilvestreInstance.id])
        redirect(action: "show", id: animalSilvestreInstance.id)
    }

    def show(Long id) {
        def animalSilvestreInstance = AnimalSilvestre.get(id)
        if (!animalSilvestreInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'animalSilvestre.label', default: 'AnimalSilvestre'), id])
            redirect(action: "list")
            return
        }

        [animalSilvestreInstance: animalSilvestreInstance]
    }

    def edit(Long id) {
        def animalSilvestreInstance = AnimalSilvestre.get(id)
        if (!animalSilvestreInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'animalSilvestre.label', default: 'AnimalSilvestre'), id])
            redirect(action: "list")
            return
        }

        [animalSilvestreInstance: animalSilvestreInstance]
    }

    def update(Long id, Long version) {
        def animalSilvestreInstance = AnimalSilvestre.get(id)
        if (!animalSilvestreInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'animalSilvestre.label', default: 'AnimalSilvestre'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (animalSilvestreInstance.version > version) {
                animalSilvestreInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'animalSilvestre.label', default: 'AnimalSilvestre')] as Object[],
                          "Another user has updated this AnimalSilvestre while you were editing")
                render(view: "edit", model: [animalSilvestreInstance: animalSilvestreInstance])
                return
            }
        }

        animalSilvestreInstance.properties = params

        if (!animalSilvestreInstance.save(flush: true)) {
            render(view: "edit", model: [animalSilvestreInstance: animalSilvestreInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'animalSilvestre.label', default: 'AnimalSilvestre'), animalSilvestreInstance.id])
        redirect(action: "show", id: animalSilvestreInstance.id)
    }

    def delete(Long id) {
        def animalSilvestreInstance = AnimalSilvestre.get(id)
        if (!animalSilvestreInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'animalSilvestre.label', default: 'AnimalSilvestre'), id])
            redirect(action: "list")
            return
        }

        try {
            animalSilvestreInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'animalSilvestre.label', default: 'AnimalSilvestre'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'animalSilvestre.label', default: 'AnimalSilvestre'), id])
            redirect(action: "show", id: id)
        }
    }
}
