
<%@ page import="br.com.cerradovivo.ControleAspAmbAniSil" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspAmbAniSil.label', default: 'ControleAspAmbAniSil')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-controleAspAmbAniSil" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-controleAspAmbAniSil" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list controleAspAmbAniSil">
			
				<g:if test="${controleAspAmbAniSilInstance?.animalSilvestre}">
				<li class="fieldcontain">
					<span id="animalSilvestre-label" class="property-label"><g:message code="controleAspAmbAniSil.animalSilvestre.label" default="Animal Silvestre" /></span>
					
						<span class="property-value" aria-labelledby="animalSilvestre-label"><g:link controller="animalSilvestre" action="show" id="${controleAspAmbAniSilInstance?.animalSilvestre?.id}">${controleAspAmbAniSilInstance?.animalSilvestre?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspAmbAniSilInstance?.aspectoAmbiental}">
				<li class="fieldcontain">
					<span id="aspectoAmbiental-label" class="property-label"><g:message code="controleAspAmbAniSil.aspectoAmbiental.label" default="Aspecto Ambiental" /></span>
					
						<span class="property-value" aria-labelledby="aspectoAmbiental-label"><g:link controller="aspectoAmbiental" action="show" id="${controleAspAmbAniSilInstance?.aspectoAmbiental?.id}">${controleAspAmbAniSilInstance?.aspectoAmbiental?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${controleAspAmbAniSilInstance?.id}" />
					<g:link class="edit" action="edit" id="${controleAspAmbAniSilInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
