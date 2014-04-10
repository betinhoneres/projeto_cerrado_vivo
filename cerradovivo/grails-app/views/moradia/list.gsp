
<%@ page import="br.com.cerradovivo.Moradia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'moradia.label', default: 'Moradia')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-moradia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-moradia" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="moradia.propriedade.label" default="Propriedade" /></th>
					
						<g:sortableColumn property="numeroComodos" title="${message(code: 'moradia.numeroComodos.label', default: 'Número de cômodos')}" />
					
						<g:sortableColumn property="tamanho" title="${message(code: 'moradia.tamanho.label', default: 'Tamanho')}" />
					
						<g:sortableColumn property="tipoMoradia" title="${message(code: 'moradia.tipoMoradia.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="tipoCobertura" title="${message(code: 'moradia.tipoCobertura.label', default: 'Cobertura')}" />
					
						<g:sortableColumn property="tipoPiso" title="${message(code: 'moradia.tipoPiso.label', default: 'Piso')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${moradiaInstanceList}" status="i" var="moradiaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${moradiaInstance.id}">${fieldValue(bean: moradiaInstance, field: "propriedade")}</g:link></td>
					
						<td>${fieldValue(bean: moradiaInstance, field: "numeroComodos")}</td>
					
						<td>${fieldValue(bean: moradiaInstance, field: "tamanho")}</td>
					
						<td>${fieldValue(bean: moradiaInstance, field: "tipoMoradia")}</td>
					
						<td>${fieldValue(bean: moradiaInstance, field: "tipoCobertura")}</td>
					
						<td>${fieldValue(bean: moradiaInstance, field: "tipoPiso")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${moradiaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
