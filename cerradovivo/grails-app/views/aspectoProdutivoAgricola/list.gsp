
<%@ page import="br.com.cerradovivo.AspectoProdutivoAgricola" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoProdutivoAgricola.label', default: 'AspectoProdutivoAgricola')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aspectoProdutivoAgricola" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aspectoProdutivoAgricola" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="aspectoProdutivoAgricola.propriedade.label" default="Propriedade" /></th>
					
						<g:sortableColumn property="ceres" title="${message(code: 'aspectoProdutivoAgricola.ceres.label', default: 'Ceres')}" />
					
						<g:sortableColumn property="feiraLivre" title="${message(code: 'aspectoProdutivoAgricola.feiraLivre.label', default: 'Feira Livre')}" />
					
						<g:sortableColumn property="feiraProdutor" title="${message(code: 'aspectoProdutivoAgricola.feiraProdutor.label', default: 'Feira Produtor')}" />
					
						<g:sortableColumn property="goianesia" title="${message(code: 'aspectoProdutivoAgricola.goianesia.label', default: 'Goianesia')}" />
					
						<g:sortableColumn property="jaragua" title="${message(code: 'aspectoProdutivoAgricola.jaragua.label', default: 'Jaragua')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${aspectoProdutivoAgricolaInstanceList}" status="i" var="aspectoProdutivoAgricolaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${aspectoProdutivoAgricolaInstance.id}">${fieldValue(bean: aspectoProdutivoAgricolaInstance, field: "propriedade")}</g:link></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance.ceres}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance.feiraLivre}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance.feiraProdutor}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance.goianesia}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance.jaragua}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${aspectoProdutivoAgricolaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
