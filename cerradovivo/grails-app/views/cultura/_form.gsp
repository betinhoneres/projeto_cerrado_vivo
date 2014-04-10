<%@ page import="br.com.cerradovivo.Cultura" %>



<div class="fieldcontain ${hasErrors(bean: culturaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cultura.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${culturaInstance?.nome}"/>
</div>

