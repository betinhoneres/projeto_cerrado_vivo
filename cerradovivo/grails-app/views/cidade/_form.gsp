<%@ page import="br.com.cerradovivo.Cidade" %>



<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cidade.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${cidadeInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'uf', 'error')} required">
	<label for="uf">
		<g:message code="cidade.uf.label" default="Uf" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="uf" from="${br.com.cerradovivo.DmUF?.values()}" keys="${br.com.cerradovivo.DmUF.values()*.name()}" required="" value="${cidadeInstance?.uf?.name()}"/>
</div>

