
<%@ page import="br.com.cerradovivo.AspectoProdutivoTecnologico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoProdutivoTecnologico.label', default: 'AspectoProdutivoTecnologico')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aspectoProdutivoTecnologico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aspectoProdutivoTecnologico" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="aspectoProdutivoTecnologico.propriedade.label" default="Propriedade" /></th>
					
						<g:sortableColumn property="trator" title="${message(code: 'aspectoProdutivoTecnologico.trator.label', default: 'Trator')}" />
					
						<g:sortableColumn property="colheitadeira" title="${message(code: 'aspectoProdutivoTecnologico.colheitadeira.label', default: 'Colheitadeira')}" />
					
						<g:sortableColumn property="aradoMecanico" title="${message(code: 'aspectoProdutivoTecnologico.aradoMecanico.label', default: 'Arado Mecanico')}" />
					
						<g:sortableColumn property="aradoAnimal" title="${message(code: 'aspectoProdutivoTecnologico.aradoAnimal.label', default: 'Arado Animal')}" />
					
						<g:sortableColumn property="plantadeiraMecanica" title="${message(code: 'aspectoProdutivoTecnologico.plantadeiraMecanica.label', default: 'Plantadeira Mecanica')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${aspectoProdutivoTecnologicoInstanceList}" status="i" var="aspectoProdutivoTecnologicoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${aspectoProdutivoTecnologicoInstance.id}">${fieldValue(bean: aspectoProdutivoTecnologicoInstance, field: "propriedade")}</g:link></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance.trator}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance.colheitadeira}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance.aradoMecanico}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance.aradoAnimal}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance.plantadeiraMecanica}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${aspectoProdutivoTecnologicoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
