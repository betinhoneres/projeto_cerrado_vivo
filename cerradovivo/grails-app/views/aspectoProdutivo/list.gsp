
<%@ page import="br.com.cerradovivo.AspectoProdutivo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoProdutivo.label', default: 'AspectoProdutivo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aspectoProdutivo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aspectoProdutivo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="aspectoProdutivo.propriedade.label" default="Propriedade" /></th>
					
						<g:sortableColumn property="pastagemNatural" title="${message(code: 'aspectoProdutivo.pastagemNatural.label', default: 'Pastagem Natural')}" />
					
						<g:sortableColumn property="areaPastagemNatural" title="${message(code: 'aspectoProdutivo.areaPastagemNatural.label', default: 'Area Pastagem Natural')}" />
					
						<g:sortableColumn property="pastagemCultivada" title="${message(code: 'aspectoProdutivo.pastagemCultivada.label', default: 'Pastagem Cultivada')}" />
					
						<g:sortableColumn property="areaPastagemCultivada" title="${message(code: 'aspectoProdutivo.areaPastagemCultivada.label', default: 'Area Pastagem Cultivada')}" />
					
						<g:sortableColumn property="lavoraTemporaria" title="${message(code: 'aspectoProdutivo.lavoraTemporaria.label', default: 'Lavora Temporaria')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${aspectoProdutivoInstanceList}" status="i" var="aspectoProdutivoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${aspectoProdutivoInstance.id}">${fieldValue(bean: aspectoProdutivoInstance, field: "propriedade")}</g:link></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoInstance.pastagemNatural}" /></td>
					
						<td>${fieldValue(bean: aspectoProdutivoInstance, field: "areaPastagemNatural")}</td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoInstance.pastagemCultivada}" /></td>
					
						<td>${fieldValue(bean: aspectoProdutivoInstance, field: "areaPastagemCultivada")}</td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoInstance.lavoraTemporaria}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${aspectoProdutivoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
