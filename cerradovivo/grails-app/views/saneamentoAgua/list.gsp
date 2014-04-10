
<%@ page import="br.com.cerradovivo.SaneamentoAgua" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'saneamentoAgua.label', default: 'SaneamentoAgua')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-saneamentoAgua" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-saneamentoAgua" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="saneamentoAgua.propriedade.label" default="Propriedade" /></th>
						
						<g:sortableColumn property="tipoMoradia" title="${message(code: 'saneamentoAgua.tratamentoAgua.label', default: 'Tratamento de água')}" />
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${saneamentoAguaInstanceList}" status="i" var="saneamentoAguaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${saneamentoAguaInstance.id}">${fieldValue(bean: saneamentoAguaInstance, field: "propriedade")}</g:link></td>
						
						<td>${fieldValue(bean: saneamentoAguaInstance, field: "tratamentoAgua")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${saneamentoAguaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
