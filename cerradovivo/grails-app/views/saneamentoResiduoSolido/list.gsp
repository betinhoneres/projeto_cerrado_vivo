
<%@ page import="br.com.cerradovivo.SaneamentoResiduoSolido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'saneamentoResiduoSolido.label', default: 'SaneamentoResiduoSolido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-saneamentoResiduoSolido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-saneamentoResiduoSolido" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="saneamentoResiduoSolido.propriedade.label" default="Propriedade" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${saneamentoResiduoSolidoInstanceList}" status="i" var="saneamentoResiduoSolidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${saneamentoResiduoSolidoInstance.id}">${fieldValue(bean: saneamentoResiduoSolidoInstance, field: "propriedade")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${saneamentoResiduoSolidoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
