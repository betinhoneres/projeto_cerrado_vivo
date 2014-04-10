<%@ page import="br.com.cerradovivo.ProdutoAgricola" %>



<div class="fieldcontain ${hasErrors(bean: produtoAgricolaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="produtoAgricola.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${produtoAgricolaInstance?.nome}"/>
</div>

