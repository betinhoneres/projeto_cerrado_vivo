<%@ page import="br.com.cerradovivo.ProdutoPecuaria" %>



<div class="fieldcontain ${hasErrors(bean: produtoPecuariaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="produtoPecuaria.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${produtoPecuariaInstance?.nome}"/>
</div>

