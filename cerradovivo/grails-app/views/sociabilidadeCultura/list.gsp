
<%@ page import="br.com.cerradovivo.SociabilidadeCultura" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sociabilidadeCultura.label', default: 'SociabilidadeCultura')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sociabilidadeCultura" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sociabilidadeCultura" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="sociabilidadeCultura.propriedade.label" default="Propriedade" /></th>
					
						<g:sortableColumn property="associacaoProdutores" title="${message(code: 'sociabilidadeCultura.associacaoProdutores.label', default: 'Associacao Produtores')}" />
					
						<g:sortableColumn property="cooperativaProdutores" title="${message(code: 'sociabilidadeCultura.cooperativaProdutores.label', default: 'Cooperativa Produtores')}" />
					
						<g:sortableColumn property="sindicato" title="${message(code: 'sociabilidadeCultura.sindicato.label', default: 'Sindicato')}" />
					
						<g:sortableColumn property="partido" title="${message(code: 'sociabilidadeCultura.partido.label', default: 'Partido')}" />
					
						<g:sortableColumn property="pastoral" title="${message(code: 'sociabilidadeCultura.pastoral.label', default: 'Pastoral')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sociabilidadeCulturaInstanceList}" status="i" var="sociabilidadeCulturaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sociabilidadeCulturaInstance.id}">${fieldValue(bean: sociabilidadeCulturaInstance, field: "propriedade")}</g:link></td>
					
						<td>${fieldValue(bean: sociabilidadeCulturaInstance, field: "associacaoProdutores")}</td>
					
						<td>${fieldValue(bean: sociabilidadeCulturaInstance, field: "cooperativaProdutores")}</td>
					
						<td>${fieldValue(bean: sociabilidadeCulturaInstance, field: "sindicato")}</td>
					
						<td>${fieldValue(bean: sociabilidadeCulturaInstance, field: "partido")}</td>
					
						<td>${fieldValue(bean: sociabilidadeCulturaInstance, field: "pastoral")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sociabilidadeCulturaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
