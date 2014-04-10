
<%@ page import="br.com.cerradovivo.ConstituicaoFamiliar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'constituicaoFamiliar.label', default: 'ConstituicaoFamiliar')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-constituicaoFamiliar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-constituicaoFamiliar" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list constituicaoFamiliar">
			
				<g:if test="${constituicaoFamiliarInstance?.grupoFamiliar}">
				<li class="fieldcontain">
					<span id="grupoFamiliar-label" class="property-label"><g:message code="constituicaoFamiliar.grupoFamiliar.label" default="Grupo Familiar" /></span>
					
						<span class="property-value" aria-labelledby="grupoFamiliar-label"><g:link controller="grupoFamiliar" action="show" id="${constituicaoFamiliarInstance?.grupoFamiliar?.id}">${constituicaoFamiliarInstance?.grupoFamiliar?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${constituicaoFamiliarInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="constituicaoFamiliar.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${constituicaoFamiliarInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${constituicaoFamiliarInstance?.posicaoFamiliar}">
				<li class="fieldcontain">
					<span id="posicaoFamiliar-label" class="property-label"><g:message code="constituicaoFamiliar.posicaoFamiliar.label" default="Posicao Familiar" /></span>
					
						<span class="property-value" aria-labelledby="posicaoFamiliar-label"><g:fieldValue bean="${constituicaoFamiliarInstance}" field="posicaoFamiliar"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${constituicaoFamiliarInstance?.idade}">
				<li class="fieldcontain">
					<span id="idade-label" class="property-label"><g:message code="constituicaoFamiliar.idade.label" default="Idade" /></span>
					
						<span class="property-value" aria-labelledby="idade-label"><g:fieldValue bean="${constituicaoFamiliarInstance}" field="idade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${constituicaoFamiliarInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="constituicaoFamiliar.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${constituicaoFamiliarInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${constituicaoFamiliarInstance?.naturalidade}">
				<li class="fieldcontain">
					<span id="naturalidade-label" class="property-label"><g:message code="constituicaoFamiliar.naturalidade.label" default="Naturalidade" /></span>
					
						<span class="property-value" aria-labelledby="naturalidade-label"><g:fieldValue bean="${constituicaoFamiliarInstance}" field="naturalidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${constituicaoFamiliarInstance?.estadoCivil}">
				<li class="fieldcontain">
					<span id="estadoCivil-label" class="property-label"><g:message code="constituicaoFamiliar.estadoCivil.label" default="Estado Civil" /></span>
					
						<span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${constituicaoFamiliarInstance}" field="estadoCivil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${constituicaoFamiliarInstance?.escolaridade}">
				<li class="fieldcontain">
					<span id="escolaridade-label" class="property-label"><g:message code="constituicaoFamiliar.escolaridade.label" default="Escolaridade" /></span>
					
						<span class="property-value" aria-labelledby="escolaridade-label"><g:fieldValue bean="${constituicaoFamiliarInstance}" field="escolaridade"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${constituicaoFamiliarInstance?.id}" />
					<g:link class="edit" action="edit" id="${constituicaoFamiliarInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
