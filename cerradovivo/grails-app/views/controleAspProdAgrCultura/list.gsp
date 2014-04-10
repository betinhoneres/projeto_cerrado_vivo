
<%@ page import="br.com.cerradovivo.ControleAspProdAgrCultura" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspProdAgrCultura.label', default: 'ControleAspProdAgrCultura')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-controleAspProdAgrCultura" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-controleAspProdAgrCultura" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="controleAspProdAgrCultura.cultura.label" default="Cultura" /></th>
					
						<g:sortableColumn property="um" title="${message(code: 'controleAspProdAgrCultura.um.label', default: 'Um')}" />
					
						<g:sortableColumn property="producao" title="${message(code: 'controleAspProdAgrCultura.producao.label', default: 'Producao')}" />
					
						<g:sortableColumn property="area" title="${message(code: 'controleAspProdAgrCultura.area.label', default: 'Area')}" />
					
						<g:sortableColumn property="consumoProprio" title="${message(code: 'controleAspProdAgrCultura.consumoProprio.label', default: 'Consumo Proprio')}" />
					
						<g:sortableColumn property="comercioExcedente" title="${message(code: 'controleAspProdAgrCultura.comercioExcedente.label', default: 'Comercio Excedente')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${controleAspProdAgrCulturaInstanceList}" status="i" var="controleAspProdAgrCulturaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${controleAspProdAgrCulturaInstance.id}">${fieldValue(bean: controleAspProdAgrCulturaInstance, field: "cultura")}</g:link></td>
					
						<td>${fieldValue(bean: controleAspProdAgrCulturaInstance, field: "um")}</td>
					
						<td>${fieldValue(bean: controleAspProdAgrCulturaInstance, field: "producao")}</td>
					
						<td>${fieldValue(bean: controleAspProdAgrCulturaInstance, field: "area")}</td>
					
						<td><g:formatBoolean boolean="${controleAspProdAgrCulturaInstance.consumoProprio}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdAgrCulturaInstance.comercioExcedente}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${controleAspProdAgrCulturaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
