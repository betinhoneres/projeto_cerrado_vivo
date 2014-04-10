
<%@ page import="br.com.cerradovivo.GrupoFamiliar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-grupoFamiliar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-grupoFamiliar" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list grupoFamiliar">
			
				<g:if test="${grupoFamiliarInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="grupoFamiliar.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${grupoFamiliarInstance?.propriedade?.id}">${grupoFamiliarInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoFamiliarInstance?.qtdeGrupoFamiliar}">
				<li class="fieldcontain">
					<span id="qtdeGrupoFamiliar-label" class="property-label"><g:message code="grupoFamiliar.qtdeGrupoFamiliar.label" default="Quantas pessoas compõem o grupo familiar?" /></span>
					
						<span class="property-value" aria-labelledby="qtdeGrupoFamiliar-label"><g:fieldValue bean="${grupoFamiliarInstance}" field="qtdeGrupoFamiliar"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoFamiliarInstance?.tempoDeResidencia}">
				<li class="fieldcontain">
					<span id="tempoDeResidencia-label" class="property-label"><g:message code="grupoFamiliar.tempoDeResidencia.label" default="Tempo de residência na propriedade" /></span>
					
						<span class="property-value" aria-labelledby="tempoDeResidencia-label"><g:fieldValue bean="${grupoFamiliarInstance}" field="tempoDeResidencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoFamiliarInstance?.familiares}">
				<li class="fieldcontain">
					<span id="familiares-label" class="property-label"><g:message code="grupoFamiliar.familiares.label" default="Constituição familiar" /></span>
					
						<g:each in="${grupoFamiliarInstance.familiares}" var="f">
						<span class="property-value" aria-labelledby="familiares-label"><g:link controller="constituicaoFamiliar" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${grupoFamiliarInstance?.id}" />
					<g:link class="edit" action="edit" id="${grupoFamiliarInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:actionSubmit class="previous" action="previous" value="${message(code: 'default.button.previous.label', default: 'Anterior')}" />
					<g:actionSubmit class="next" action="next" value="${message(code: 'default.button.next.label', default: 'Próximo')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
