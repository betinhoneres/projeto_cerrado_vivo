
<%@ page import="br.com.cerradovivo.ControleTransporteCidade" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleTransporteCidade.label', default: 'ControleTransporteCidade')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-controleTransporteCidade" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-controleTransporteCidade" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="controleTransporteCidade.cidade.label" default="Cidade" /></th>
					
						<g:sortableColumn property="distancia" title="${message(code: 'controleTransporteCidade.distancia.label', default: 'Distancia')}" />
					
						<th><g:message code="controleTransporteCidade.transporte.label" default="Transporte" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${controleTransporteCidadeInstanceList}" status="i" var="controleTransporteCidadeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${controleTransporteCidadeInstance.id}">${fieldValue(bean: controleTransporteCidadeInstance, field: "cidade")}</g:link></td>
					
						<td>${fieldValue(bean: controleTransporteCidadeInstance, field: "distancia")}</td>
					
						<td>${fieldValue(bean: controleTransporteCidadeInstance, field: "transporte")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${controleTransporteCidadeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
