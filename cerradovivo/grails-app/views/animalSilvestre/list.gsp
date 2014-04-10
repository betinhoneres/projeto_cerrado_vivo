
<%@ page import="br.com.cerradovivo.AnimalSilvestre" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'animalSilvestre.label', default: 'AnimalSilvestre')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-animalSilvestre" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-animalSilvestre" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'animalSilvestre.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="tipoAnimal" title="${message(code: 'animalSilvestre.tipoAnimal.label', default: 'Tipo Animal')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${animalSilvestreInstanceList}" status="i" var="animalSilvestreInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${animalSilvestreInstance.id}">${fieldValue(bean: animalSilvestreInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: animalSilvestreInstance, field: "tipoAnimal")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${animalSilvestreInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
