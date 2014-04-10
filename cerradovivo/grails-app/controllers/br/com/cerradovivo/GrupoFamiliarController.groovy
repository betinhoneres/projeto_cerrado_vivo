package br.com.cerradovivo

import org.springframework.dao.DataIntegrityViolationException

class GrupoFamiliarController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [grupoFamiliarInstanceList: GrupoFamiliar.list(params), grupoFamiliarInstanceTotal: GrupoFamiliar.count()]
    }

    def create() {
        [grupoFamiliarInstance: new GrupoFamiliar(params)]
    }
	
	def proximo(Long id) {
		def propriedade = Propriedade.get(id)
		params.put(propriedade, propriedade)
		[grupoFamiliarInstance: new GrupoFamiliar(params)]
	}

    def save() {
        def grupoFamiliarInstance = new GrupoFamiliar(params)
        if (!grupoFamiliarInstance.save(flush: true)) {
            render(view: "create", model: [grupoFamiliarInstance: grupoFamiliarInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), grupoFamiliarInstance.id])
        redirect(action: "show", id: grupoFamiliarInstance.id)
    }

    def show(Long id) {
        def grupoFamiliarInstance = GrupoFamiliar.get(id)
        if (!grupoFamiliarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), id])
            redirect(action: "list")
            return
        }

        [grupoFamiliarInstance: grupoFamiliarInstance]
    }

    def edit(Long id) {
        def grupoFamiliarInstance = GrupoFamiliar.get(id)
        if (!grupoFamiliarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), id])
            redirect(action: "list")
            return
        }

        [grupoFamiliarInstance: grupoFamiliarInstance]
    }

    def update(Long id, Long version) {
        def grupoFamiliarInstance = GrupoFamiliar.get(id)
        if (!grupoFamiliarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (grupoFamiliarInstance.version > version) {
                grupoFamiliarInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar')] as Object[],
                          "Another user has updated this GrupoFamiliar while you were editing")
                render(view: "edit", model: [grupoFamiliarInstance: grupoFamiliarInstance])
                return
            }
        }

        grupoFamiliarInstance.properties = params

        if (!grupoFamiliarInstance.save(flush: true)) {
            render(view: "edit", model: [grupoFamiliarInstance: grupoFamiliarInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), grupoFamiliarInstance.id])
        redirect(action: "show", id: grupoFamiliarInstance.id)
    }

    def delete(Long id) {
        def grupoFamiliarInstance = GrupoFamiliar.get(id)
        if (!grupoFamiliarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), id])
            redirect(action: "list")
            return
        }

        try {
            grupoFamiliarInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar'), id])
            redirect(action: "show", id: id)
        }
    }
	
	/**
	 * Salva a entidade e direciona para o create da constitui��o familiar
	 * @return
	 */
	def salvarERedirecionar(Long id, Long version) {
		
        def grupoFamiliarInstance = GrupoFamiliar.get(id)
		
        if (grupoFamiliarInstance == null) {
			
			//Inserir
			grupoFamiliarInstance = new GrupoFamiliar(params)
			
			if (!grupoFamiliarInstance.save(flush: true)) {
	            render(view: "create", model: [grupoFamiliarInstance: grupoFamiliarInstance])
	            return
			}
        } else {
		
			//Atualizar
	        if (version != null) {
	            if (grupoFamiliarInstance.version > version) {
	                grupoFamiliarInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
	                          [message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar')] as Object[],
	                          "Another user has updated this GrupoFamiliar while you were editing")
	                render(view: "edit", model: [grupoFamiliarInstance: grupoFamiliarInstance])
	                return
	            }
	        }
	
	        grupoFamiliarInstance.properties = params
	
	        if (!grupoFamiliarInstance.save(flush: true)) {
	            render(view: "edit", model: [grupoFamiliarInstance: grupoFamiliarInstance])
	            return
	        }
        }
		
		redirect(controller: 'constituicaoFamiliar', action: 'create')
	}
	
	def next(Long id){
		
		def grupoFamiliarInstance = GrupoFamiliar.get(id)
		if (!grupoFamiliarInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'Aspecto Sociais'), id])
			redirect(action: "list")
			return
		}

		try {
			//http://localhost:8080/cerradovivo/grupoFamiliar/create
			
			def propriedadeInstance = Propriedade.get(grupoFamiliarInstance.propriedade.id);
			
			def moradiaInstance = Moradia.findByPropriedade(propriedadeInstance);
			
			if(moradiaInstance == null)
				redirect(controller: 'moradia', action: 'create')
			else
				redirect(controller: 'moradia', action: 'show', params: [id: moradiaInstance.id])
			
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'grupoFamiliar.label', default: 'Aspecto Social'), id])
			redirect(action: "show", id: id)
		}
	}
	
	def previous(Long id){
		
		def grupoFamiliarInstance = GrupoFamiliar.get(id)
		if (!grupoFamiliarInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupoFamiliar.label', default: 'Aspecto Sociais'), id])
			redirect(action: "list")
			return
		}

		try {
			
			def propriedadeInstance = Propriedade.get(grupoFamiliarInstance.propriedade.id);
			
			if(propriedadeInstance == null)
				return
			else
				redirect(controller: 'propriedade', action: 'show', params: [id: propriedadeInstance.id])
			
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'grupoFamiliar.label', default: 'Aspecto Social'), id])
			redirect(action: "show", id: id)
		}
	}
	
}