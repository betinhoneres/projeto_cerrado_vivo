package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class PropriedadeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [propriedadeInstanceList: Propriedade.list(params), propriedadeInstanceTotal: Propriedade.count()]
    }

    def create() {
        [propriedadeInstance: new Propriedade(params)]
    }

    def save() {
        def propriedadeInstance = new Propriedade(params)
        if (!propriedadeInstance.save(flush: true)) {
            render(view: "create", model: [propriedadeInstance: propriedadeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'propriedade.label', default: 'Propriedade'), propriedadeInstance.id])
        redirect(action: "show", id: propriedadeInstance.id)
    }

    def show(Long id) {
        def propriedadeInstance = Propriedade.get(id)
        if (!propriedadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'propriedade.label', default: 'Propriedade'), id])
            redirect(action: "list")
            return
        }

        [propriedadeInstance: propriedadeInstance]
    }

    def edit(Long id) {
        def propriedadeInstance = Propriedade.get(id)
        if (!propriedadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'propriedade.label', default: 'Propriedade'), id])
            redirect(action: "list")
            return
        }

        [propriedadeInstance: propriedadeInstance]
    }

    def update(Long id, Long version) {
        def propriedadeInstance = Propriedade.get(id)
        if (!propriedadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'propriedade.label', default: 'Propriedade'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (propriedadeInstance.version > version) {
                propriedadeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'propriedade.label', default: 'Propriedade')] as Object[],
                          "Another user has updated this Propriedade while you were editing")
                render(view: "edit", model: [propriedadeInstance: propriedadeInstance])
                return
            }
        }

        propriedadeInstance.properties = params

        if (!propriedadeInstance.save(flush: true)) {
            render(view: "edit", model: [propriedadeInstance: propriedadeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'propriedade.label', default: 'Propriedade'), propriedadeInstance.id])
        redirect(action: "show", id: propriedadeInstance.id)
    }

    def delete(Long id) {
        def propriedadeInstance = Propriedade.get(id)
        if (!propriedadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'propriedade.label', default: 'Propriedade'), id])
            redirect(action: "list")
            return
        }

        try {
            propriedadeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'propriedade.label', default: 'Propriedade'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'propriedade.label', default: 'Propriedade'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def next(Long id){
		def propriedadeInstance = Propriedade.get(id)
		if (!propriedadeInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'propriedade.label', default: 'Propriedade'), id])
			redirect(action: "list")
			return
		}

		try {
			//http://localhost:8080/cerradovivo/grupoFamiliar/create
			
			def grupoFamiliarInstance = GrupoFamiliar.findByPropriedade(propriedadeInstance);
			
			if(grupoFamiliarInstance == null)
				redirect(controller: 'grupoFamiliar', action: 'create')
			else
				redirect(controller: 'grupoFamiliar', action: 'show', params: [id: grupoFamiliarInstance.id])
			
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'propriedade.label', default: 'Propriedade'), id])
			redirect(action: "show", id: id)
		}
	}
}