
<%@ page import="br.com.cerradovivo.ControleAspAmbEspVeg" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspAmbEspVeg.label', default: 'ControleAspAmbEspVeg')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-controleAspAmbEspVeg" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-controleAspAmbEspVeg" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list controleAspAmbEspVeg">
			
				<g:if test="${controleAspAmbEspVegInstance?.especieVegetal}">
				<li class="fieldcontain">
					<span id="especieVegetal-label" class="property-label"><g:message code="controleAspAmbEspVeg.especieVegetal.label" default="Especie Vegetal" /></span>
					
						<span class="property-value" aria-labelledby="especieVegetal-label"><g:link controller="especieVegetal" action="show" id="${controleAspAmbEspVegInstance?.especieVegetal?.id}">${controleAspAmbEspVegInstance?.especieVegetal?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspAmbEspVegInstance?.aspectoAmbiental}">
				<li class="fieldcontain">
					<span id="aspectoAmbiental-label" class="property-label"><g:message code="controleAspAmbEspVeg.aspectoAmbiental.label" default="Aspecto Ambiental" /></span>
					
						<span class="property-value" aria-labelledby="aspectoAmbiental-label"><g:link controller="aspectoAmbiental" action="show" id="${controleAspAmbEspVegInstance?.aspectoAmbiental?.id}">${controleAspAmbEspVegInstance?.aspectoAmbiental?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${controleAspAmbEspVegInstance?.id}" />
					<g:link class="edit" action="edit" id="${controleAspAmbEspVegInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
