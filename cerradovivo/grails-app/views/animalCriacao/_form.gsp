<%@ page import="br.com.cerradovivo.AnimalCriacao" %>



<div class="fieldcontain ${hasErrors(bean: animalCriacaoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="animalCriacao.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${animalCriacaoInstance?.nome}"/>
</div>

