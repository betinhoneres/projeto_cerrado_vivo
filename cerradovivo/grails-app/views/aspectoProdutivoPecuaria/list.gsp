
<%@ page import="br.com.cerradovivo.AspectoProdutivoPecuaria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoProdutivoPecuaria.label', default: 'AspectoProdutivoPecuaria')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aspectoProdutivoPecuaria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aspectoProdutivoPecuaria" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="aspectoProdutivoPecuaria.propriedade.label" default="Propriedade" /></th>
					
						<g:sortableColumn property="ceres" title="${message(code: 'aspectoProdutivoPecuaria.ceres.label', default: 'Ceres')}" />
					
						<g:sortableColumn property="feiraLivre" title="${message(code: 'aspectoProdutivoPecuaria.feiraLivre.label', default: 'Feira Livre')}" />
					
						<g:sortableColumn property="feiraProdutor" title="${message(code: 'aspectoProdutivoPecuaria.feiraProdutor.label', default: 'Feira Produtor')}" />
					
						<g:sortableColumn property="goianesia" title="${message(code: 'aspectoProdutivoPecuaria.goianesia.label', default: 'Goianesia')}" />
					
						<g:sortableColumn property="jaragua" title="${message(code: 'aspectoProdutivoPecuaria.jaragua.label', default: 'Jaragua')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${aspectoProdutivoPecuariaInstanceList}" status="i" var="aspectoProdutivoPecuariaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${aspectoProdutivoPecuariaInstance.id}">${fieldValue(bean: aspectoProdutivoPecuariaInstance, field: "propriedade")}</g:link></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance.ceres}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance.feiraLivre}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance.feiraProdutor}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance.goianesia}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance.jaragua}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${aspectoProdutivoPecuariaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
