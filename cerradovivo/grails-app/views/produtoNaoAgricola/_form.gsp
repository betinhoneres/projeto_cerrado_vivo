<%@ page import="br.com.cerradovivo.ProdutoNaoAgricola" %>



<div class="fieldcontain ${hasErrors(bean: produtoNaoAgricolaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="produtoNaoAgricola.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${produtoNaoAgricolaInstance?.nome}"/>
</div>

