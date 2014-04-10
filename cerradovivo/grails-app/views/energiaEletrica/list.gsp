
<%@ page import="br.com.cerradovivo.EnergiaEletrica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'energiaEletrica.label', default: 'EnergiaEletrica')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-energiaEletrica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-energiaEletrica" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="energiaEletrica.propriedade.label" default="Propriedade" /></th>
					
						<g:sortableColumn property="geradorMotor" title="${message(code: 'energiaEletrica.geradorMotor.label', default: 'Gerador Motor')}" />
					
						<g:sortableColumn property="outro" title="${message(code: 'energiaEletrica.outro.label', default: 'Outro')}" />
					
						<g:sortableColumn property="placaSolar" title="${message(code: 'energiaEletrica.placaSolar.label', default: 'Placa Solar')}" />
					
						<g:sortableColumn property="possuiEnergia" title="${message(code: 'energiaEletrica.possuiEnergia.label', default: 'Possui Energia')}" />
					
						<g:sortableColumn property="redeGeral" title="${message(code: 'energiaEletrica.redeGeral.label', default: 'Rede Geral')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${energiaEletricaInstanceList}" status="i" var="energiaEletricaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${energiaEletricaInstance.id}">${fieldValue(bean: energiaEletricaInstance, field: "propriedade")}</g:link></td>
					
						<td><g:formatBoolean boolean="${energiaEletricaInstance.geradorMotor}" /></td>
					
						<td>${fieldValue(bean: energiaEletricaInstance, field: "outro")}</td>
					
						<td><g:formatBoolean boolean="${energiaEletricaInstance.placaSolar}" /></td>
					
						<td>${fieldValue(bean: energiaEletricaInstance, field: "possuiEnergia")}</td>
					
						<td><g:formatBoolean boolean="${energiaEletricaInstance.redeGeral}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${energiaEletricaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
