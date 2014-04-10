package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class AnimalCriacaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [animalCriacaoInstanceList: AnimalCriacao.list(params), animalCriacaoInstanceTotal: AnimalCriacao.count()]
    }

    def create() {
        [animalCriacaoInstance: new AnimalCriacao(params)]
    }

    def save() {
        def animalCriacaoInstance = new AnimalCriacao(params)
        if (!animalCriacaoInstance.save(flush: true)) {
            render(view: "create", model: [animalCriacaoInstance: animalCriacaoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'animalCriacao.label', default: 'AnimalCriacao'), animalCriacaoInstance.id])
        redirect(action: "show", id: animalCriacaoInstance.id)
    }

    def show(Long id) {
        def animalCriacaoInstance = AnimalCriacao.get(id)
        if (!animalCriacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'animalCriacao.label', default: 'AnimalCriacao'), id])
            redirect(action: "list")
            return
        }

        [animalCriacaoInstance: animalCriacaoInstance]
    }

    def edit(Long id) {
        def animalCriacaoInstance = AnimalCriacao.get(id)
        if (!animalCriacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'animalCriacao.label', default: 'AnimalCriacao'), id])
            redirect(action: "list")
            return
        }

        [animalCriacaoInstance: animalCriacaoInstance]
    }

    def update(Long id, Long version) {
        def animalCriacaoInstance = AnimalCriacao.get(id)
        if (!animalCriacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'animalCriacao.label', default: 'AnimalCriacao'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (animalCriacaoInstance.version > version) {
                animalCriacaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'animalCriacao.label', default: 'AnimalCriacao')] as Object[],
                          "Another user has updated this AnimalCriacao while you were editing")
                render(view: "edit", model: [animalCriacaoInstance: animalCriacaoInstance])
                return
            }
        }

        animalCriacaoInstance.properties = params

        if (!animalCriacaoInstance.save(flush: true)) {
            render(view: "edit", model: [animalCriacaoInstance: animalCriacaoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'animalCriacao.label', default: 'AnimalCriacao'), animalCriacaoInstance.id])
        redirect(action: "show", id: animalCriacaoInstance.id)
    }

    def delete(Long id) {
        def animalCriacaoInstance = AnimalCriacao.get(id)
        if (!animalCriacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'animalCriacao.label', default: 'AnimalCriacao'), id])
            redirect(action: "list")
            return
        }

        try {
            animalCriacaoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'animalCriacao.label', default: 'AnimalCriacao'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'animalCriacao.label', default: 'AnimalCriacao'), id])
            redirect(action: "show", id: id)
        }
    }
}
