<%@ page import="br.com.cerradovivo.ConstituicaoFamiliar" contentType="text/html;charset=UTF-8" %>



<div class="fieldcontain ${hasErrors(bean: constituicaoFamiliarInstance, field: 'grupoFamiliar', 'error')} required">
	<label for="grupoFamiliar">
		<g:message code="constituicaoFamiliar.grupoFamiliar.label" default="Grupo Familiar" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="grupoFamiliar" name="grupoFamiliar.id" from="${br.com.cerradovivo.GrupoFamiliar.list()}" optionKey="id" required="" value="${constituicaoFamiliarInstance?.grupoFamiliar?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: constituicaoFamiliarInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="constituicaoFamiliar.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="120" required="" value="${constituicaoFamiliarInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: constituicaoFamiliarInstance, field: 'posicaoFamiliar', 'error')} required">
	<label for="posicaoFamiliar">
		<g:message code="constituicaoFamiliar.posicaoFamiliar.label" default="Posicao Familiar" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="posicaoFamiliar" from="${br.com.cerradovivo.DmPosicaoFamiliar?.values()}" keys="${br.com.cerradovivo.DmPosicaoFamiliar.values()*.name()}" required="" value="${constituicaoFamiliarInstance?.posicaoFamiliar?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: constituicaoFamiliarInstance, field: 'idade', 'error')} required">
	<label for="idade">
		<g:message code="constituicaoFamiliar.idade.label" default="Idade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idade" type="number" value="${constituicaoFamiliarInstance.idade}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: constituicaoFamiliarInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="constituicaoFamiliar.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${br.com.cerradovivo.DmSexo?.values()}" keys="${br.com.cerradovivo.DmSexo.values()*.name()}" required="" value="${constituicaoFamiliarInstance?.sexo?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: constituicaoFamiliarInstance, field: 'naturalidade', 'error')} required">
	<label for="naturalidade">
		<g:message code="constituicaoFamiliar.naturalidade.label" default="Naturalidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="naturalidade" required="" value="${constituicaoFamiliarInstance?.naturalidade}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: constituicaoFamiliarInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil">
		<g:message code="constituicaoFamiliar.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoCivil" from="${br.com.cerradovivo.DmEstadoCivil?.values()}" keys="${br.com.cerradovivo.DmEstadoCivil.values()*.name()}" required="" value="${constituicaoFamiliarInstance?.estadoCivil?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: constituicaoFamiliarInstance, field: 'escolaridade', 'error')} required">
	<label for="escolaridade">
		<g:message code="constituicaoFamiliar.escolaridade.label" default="Escolaridade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="escolaridade" from="${br.com.cerradovivo.DmEscolaridade?.values()}" keys="${br.com.cerradovivo.DmEscolaridade.values()*.name()}" required="" value="${constituicaoFamiliarInstance?.escolaridade?.name()}"/>
</div>

