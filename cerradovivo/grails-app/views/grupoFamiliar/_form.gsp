<%@ page import="br.com.cerradovivo.GrupoFamiliar" %>


<div class="fieldcontain ${hasErrors(bean: grupoFamiliarInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="grupoFamiliar.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${grupoFamiliarInstance?.propriedade?.numeroParcela}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: grupoFamiliarInstance, field: 'qtdeGrupoFamiliar', 'error')} required">
	<label for="qtdeGrupoFamiliar">
		<g:message code="grupoFamiliar.qtdeGrupoFamiliar.label" default="Quantas pessoas compõem o grupo familiar?" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qtdeGrupoFamiliar" type="number" value="${grupoFamiliarInstance.qtdeGrupoFamiliar}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: grupoFamiliarInstance, field: 'tempoDeResidencia', 'error')} required">
	<label for="tempoDeResidencia">
		<g:message code="grupoFamiliar.tempoDeResidencia.label" default="Tempo de residência na propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tempoDeResidencia" required="" value="${grupoFamiliarInstance?.tempoDeResidencia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: grupoFamiliarInstance, field: 'familiares', 'error')} ">
	<label for="familiares">
		<g:message code="grupoFamiliar.familiares.label" default="Familiares" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${grupoFamiliarInstance?.familiares?}" var="f">
    <li><g:link controller="constituicaoFamiliar" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="constituicaoFamiliar" action="create" params="['grupoFamiliar.id': grupoFamiliarInstance?.id]" >${message(code: 'default.add.label', args: [message(code: 'constituicaoFamiliar.label', default: 'ConstituicaoFamiliar')])}</g:link>
</li>
</ul>

</div>

