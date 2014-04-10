<%@ page import="br.com.cerradovivo.EspecieVegetal" %>



<div class="fieldcontain ${hasErrors(bean: especieVegetalInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="especieVegetal.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${especieVegetalInstance?.nome}"/>
</div>

