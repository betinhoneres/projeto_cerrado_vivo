
<%@ page import="br.com.cerradovivo.GrupoFamiliar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-grupoFamiliar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-grupoFamiliar" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="grupoFamiliar.propriedade.label" default="Propriedade" /></th>
					
						<g:sortableColumn property="qtdeGrupoFamiliar" title="${message(code: 'grupoFamiliar.qtdeGrupoFamiliar.label', default: 'Qtd pessoas do grupo familiar')}" />
					
						<g:sortableColumn property="tempoDeResidencia" title="${message(code: 'grupoFamiliar.tempoDeResidencia.label', default: 'Tempo de residencia')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${grupoFamiliarInstanceList}" status="i" var="grupoFamiliarInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${grupoFamiliarInstance.id}">${fieldValue(bean: grupoFamiliarInstance, field: "propriedade")}</g:link></td>
					
						<td>${fieldValue(bean: grupoFamiliarInstance, field: "qtdeGrupoFamiliar")}</td>
					
						<td>${fieldValue(bean: grupoFamiliarInstance, field: "tempoDeResidencia")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${grupoFamiliarInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
