
<%@ page import="br.com.cerradovivo.Transporte" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transporte.label', default: 'Transporte')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-transporte" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-transporte" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="transporte.propriedade.label" default="Propriedade" /></th>
						
						<g:sortableColumn property="distSedeMun" title="${message(code: 'transporte.distSedeMun.label', default: 'Distância da sede do munícipo')}" />
					
						<g:sortableColumn property="acessoComChuva" title="${message(code: 'transporte.acessoComChuva.label', default: 'Acesso Com Chuva')}" />
					
						<g:sortableColumn property="acessoSemChuva" title="${message(code: 'transporte.acessoSemChuva.label', default: 'Acesso Sem Chuva')}" />
						
						<g:sortableColumn property="energiaEletrica" title="${message(code: 'transporte.energiaEletrica.label', default: 'Energia elétrica')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${transporteInstanceList}" status="i" var="transporteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${transporteInstance.id}">${fieldValue(bean: transporteInstance, field: "propriedade")}</g:link></td>
					
						<td>${fieldValue(bean: transporteInstance, field: "distSedeMun")}</td>
						
						<td>${fieldValue(bean: transporteInstance, field: "acessoComChuva")}</td>
					
						<td>${fieldValue(bean: transporteInstance, field: "acessoSemChuva")}</td>
						
						<td>${fieldValue(bean: transporteInstance, field: "energiaEletrica")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${transporteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
