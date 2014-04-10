<%@ page import="br.com.cerradovivo.Projeto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projeto.label', default: 'Projeto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-projeto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-projeto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>

						<g:sortableColumn property="nomeProjeto" title="${message(code: 'projeto.nomeProjeto.label', default: 'Nome do Projeto')}" />
						
						<g:sortableColumn property="instituicaoParceira" title="${message(code: 'projeto.instituicaoParceira.label', default: 'Instituição Parceira')}" />
						
						<g:sortableColumn property="municipio" title="${message(code: 'projeto.municipio.label', default: 'Município da sede')}" />
												
						<g:sortableColumn property="dataInicioContrato" title="${message(code: 'projeto.dataInicioContrato.label', default: 'Data de Início do Contrato')}" />
					
						<g:sortableColumn property="dataTerminoContrato" title="${message(code: 'projeto.dataTerminoContrato.label', default: 'Data de Término do Contrato')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projetoInstanceList}" status="i" var="projetoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${projetoInstance.id}">${fieldValue(bean: projetoInstance, field: "nomeProjeto")}</g:link></td>

						<td>${fieldValue(bean: projetoInstance, field: "instituicaoParceira")}</td>

						<td>${fieldValue(bean: projetoInstance, field: "municipio")}</td>
																	
						<td><g:formatDate date="${projetoInstance.dataInicioContrato}" /></td>
						
						<td><g:formatDate date="${projetoInstance.dataTerminoContrato}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projetoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>