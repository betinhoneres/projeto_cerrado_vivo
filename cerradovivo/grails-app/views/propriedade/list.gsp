
<%@ page import="br.com.cerradovivo.Propriedade" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'propriedade.label', default: 'Propriedade')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-propriedade" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-propriedade" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="numeroParcela" title="${message(code: 'propriedade.numeroParcela.label', default: 'Numero Parcela')}" />
					
						<g:sortableColumn property="nomePropietario" title="${message(code: 'propriedade.nomePropietario.label', default: 'Nome do Proprietário')}" />
					
						<g:sortableColumn property="nomePropietario" title="${message(code: 'propriedade.telefonePropietario.label', default: 'Telefone/Celular')}" />
						
						<g:sortableColumn property="entrevistador" title="${message(code: 'propriedade.entrevistador.label', default: 'Entrevistador')}" />
					
						<g:sortableColumn property="areaHa" title="${message(code: 'propriedade.areaHa.label', default: 'Area ha')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${propriedadeInstanceList}" status="i" var="propriedadeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${propriedadeInstance.id}">${fieldValue(bean: propriedadeInstance, field: "numeroParcela")}</g:link></td>
					
						<td>${fieldValue(bean: propriedadeInstance, field: "nomePropietario")}</td>
					
						<td>${fieldValue(bean: propriedadeInstance, field: "telefonePropietario")}</td>
					
						<td>${fieldValue(bean: propriedadeInstance, field: "entrevistador")}</td>
					
						<td>${fieldValue(bean: propriedadeInstance, field: "areaHa")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${propriedadeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
