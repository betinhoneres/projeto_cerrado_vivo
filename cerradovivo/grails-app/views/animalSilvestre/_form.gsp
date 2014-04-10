<%@ page import="br.com.cerradovivo.AnimalSilvestre" %>



<div class="fieldcontain ${hasErrors(bean: animalSilvestreInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="animalSilvestre.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${animalSilvestreInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: animalSilvestreInstance, field: 'tipoAnimal', 'error')} required">
	<label for="tipoAnimal">
		<g:message code="animalSilvestre.tipoAnimal.label" default="Tipo Animal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoAnimal" from="${br.com.cerradovivo.DmTipoAnimal?.values()}" keys="${br.com.cerradovivo.DmTipoAnimal.values()*.name()}" required="" value="${animalSilvestreInstance?.tipoAnimal?.name()}"/>
</div>

