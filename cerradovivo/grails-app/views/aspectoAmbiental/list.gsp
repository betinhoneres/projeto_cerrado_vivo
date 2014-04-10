
<%@ page import="br.com.cerradovivo.AspectoAmbiental" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoAmbiental.label', default: 'AspectoAmbiental')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aspectoAmbiental" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aspectoAmbiental" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="aspectoAmbiental.propriedade.label" default="Propriedade" /></th>
					
						<g:sortableColumn property="animaisSilvestres" title="${message(code: 'aspectoAmbiental.animaisSilvestres.label', default: 'Animais Silvestres')}" />
					
						<g:sortableColumn property="app" title="${message(code: 'aspectoAmbiental.app.label', default: 'App')}" />
					
						<g:sortableColumn property="areaApp" title="${message(code: 'aspectoAmbiental.areaApp.label', default: 'Area App')}" />
					
						<g:sortableColumn property="brejo" title="${message(code: 'aspectoAmbiental.brejo.label', default: 'Brejo')}" />
					
						<g:sortableColumn property="corrego" title="${message(code: 'aspectoAmbiental.corrego.label', default: 'Corrego')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${aspectoAmbientalInstanceList}" status="i" var="aspectoAmbientalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${aspectoAmbientalInstance.id}">${fieldValue(bean: aspectoAmbientalInstance, field: "propriedade")}</g:link></td>
					
						<td>${fieldValue(bean: aspectoAmbientalInstance, field: "animaisSilvestres")}</td>
					
						<td>${fieldValue(bean: aspectoAmbientalInstance, field: "app")}</td>
					
						<td>${fieldValue(bean: aspectoAmbientalInstance, field: "areaApp")}</td>
					
						<td><g:formatBoolean boolean="${aspectoAmbientalInstance.brejo}" /></td>
					
						<td>${fieldValue(bean: aspectoAmbientalInstance, field: "corrego")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${aspectoAmbientalInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
