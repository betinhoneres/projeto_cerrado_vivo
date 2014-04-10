
<%@ page import="br.com.cerradovivo.EnergiaEletrica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'energiaEletrica.label', default: 'EnergiaEletrica')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-energiaEletrica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-energiaEletrica" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list energiaEletrica">
			
				<g:if test="${energiaEletricaInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="energiaEletrica.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${energiaEletricaInstance?.propriedade?.id}">${energiaEletricaInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energiaEletricaInstance?.geradorMotor}">
				<li class="fieldcontain">
					<span id="geradorMotor-label" class="property-label"><g:message code="energiaEletrica.geradorMotor.label" default="Gerador Motor" /></span>
					
						<span class="property-value" aria-labelledby="geradorMotor-label"><g:formatBoolean boolean="${energiaEletricaInstance?.geradorMotor}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energiaEletricaInstance?.outro}">
				<li class="fieldcontain">
					<span id="outro-label" class="property-label"><g:message code="energiaEletrica.outro.label" default="Outro" /></span>
					
						<span class="property-value" aria-labelledby="outro-label"><g:fieldValue bean="${energiaEletricaInstance}" field="outro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energiaEletricaInstance?.placaSolar}">
				<li class="fieldcontain">
					<span id="placaSolar-label" class="property-label"><g:message code="energiaEletrica.placaSolar.label" default="Placa Solar" /></span>
					
						<span class="property-value" aria-labelledby="placaSolar-label"><g:formatBoolean boolean="${energiaEletricaInstance?.placaSolar}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energiaEletricaInstance?.possuiEnergia}">
				<li class="fieldcontain">
					<span id="possuiEnergia-label" class="property-label"><g:message code="energiaEletrica.possuiEnergia.label" default="Possui Energia" /></span>
					
						<span class="property-value" aria-labelledby="possuiEnergia-label"><g:fieldValue bean="${energiaEletricaInstance}" field="possuiEnergia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energiaEletricaInstance?.redeGeral}">
				<li class="fieldcontain">
					<span id="redeGeral-label" class="property-label"><g:message code="energiaEletrica.redeGeral.label" default="Rede Geral" /></span>
					
						<span class="property-value" aria-labelledby="redeGeral-label"><g:formatBoolean boolean="${energiaEletricaInstance?.redeGeral}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${energiaEletricaInstance?.id}" />
					<g:link class="edit" action="edit" id="${energiaEletricaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
