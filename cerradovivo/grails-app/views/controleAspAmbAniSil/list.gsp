
<%@ page import="br.com.cerradovivo.ControleAspAmbAniSil" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspAmbAniSil.label', default: 'ControleAspAmbAniSil')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-controleAspAmbAniSil" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-controleAspAmbAniSil" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="controleAspAmbAniSil.animalSilvestre.label" default="Animal Silvestre" /></th>
					
						<th><g:message code="controleAspAmbAniSil.aspectoAmbiental.label" default="Aspecto Ambiental" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${controleAspAmbAniSilInstanceList}" status="i" var="controleAspAmbAniSilInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${controleAspAmbAniSilInstance.id}">${fieldValue(bean: controleAspAmbAniSilInstance, field: "animalSilvestre")}</g:link></td>
					
						<td>${fieldValue(bean: controleAspAmbAniSilInstance, field: "aspectoAmbiental")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${controleAspAmbAniSilInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
