
<%@ page import="br.com.cerradovivo.ControleTransporteCidade" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleTransporteCidade.label', default: 'ControleTransporteCidade')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-controleTransporteCidade" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-controleTransporteCidade" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list controleTransporteCidade">
			
				<g:if test="${controleTransporteCidadeInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="controleTransporteCidade.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:link controller="cidade" action="show" id="${controleTransporteCidadeInstance?.cidade?.id}">${controleTransporteCidadeInstance?.cidade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleTransporteCidadeInstance?.distancia}">
				<li class="fieldcontain">
					<span id="distancia-label" class="property-label"><g:message code="controleTransporteCidade.distancia.label" default="Distancia" /></span>
					
						<span class="property-value" aria-labelledby="distancia-label"><g:fieldValue bean="${controleTransporteCidadeInstance}" field="distancia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleTransporteCidadeInstance?.transporte}">
				<li class="fieldcontain">
					<span id="transporte-label" class="property-label"><g:message code="controleTransporteCidade.transporte.label" default="Transporte" /></span>
					
						<span class="property-value" aria-labelledby="transporte-label"><g:link controller="transporte" action="show" id="${controleTransporteCidadeInstance?.transporte?.id}">${controleTransporteCidadeInstance?.transporte?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${controleTransporteCidadeInstance?.id}" />
					<g:link class="edit" action="edit" id="${controleTransporteCidadeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
