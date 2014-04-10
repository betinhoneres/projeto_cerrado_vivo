
<%@ page import="br.com.cerradovivo.ControleAspProdAgroInd" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspProdAgroInd.label', default: 'ControleAspProdAgroInd')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-controleAspProdAgroInd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-controleAspProdAgroInd" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="controleAspProdAgroInd.produtoNaoAgricola.label" default="Produto Nao Agricola" /></th>
					
						<g:sortableColumn property="consumoProprio" title="${message(code: 'controleAspProdAgroInd.consumoProprio.label', default: 'Consumo Proprio')}" />
					
						<g:sortableColumn property="comercioExcedente" title="${message(code: 'controleAspProdAgroInd.comercioExcedente.label', default: 'Comercio Excedente')}" />
					
						<g:sortableColumn property="comercioProducao" title="${message(code: 'controleAspProdAgroInd.comercioProducao.label', default: 'Comercio Producao')}" />
					
						<g:sortableColumn property="agroindustrializar" title="${message(code: 'controleAspProdAgroInd.agroindustrializar.label', default: 'Agroindustrializar')}" />
					
						<th><g:message code="controleAspProdAgroInd.aspectoProdutivoAgroIndustrializado.label" default="Aspecto Produtivo Agro Industrializado" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${controleAspProdAgroIndInstanceList}" status="i" var="controleAspProdAgroIndInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${controleAspProdAgroIndInstance.id}">${fieldValue(bean: controleAspProdAgroIndInstance, field: "produtoNaoAgricola")}</g:link></td>
					
						<td><g:formatBoolean boolean="${controleAspProdAgroIndInstance.consumoProprio}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdAgroIndInstance.comercioExcedente}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdAgroIndInstance.comercioProducao}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdAgroIndInstance.agroindustrializar}" /></td>
					
						<td>${fieldValue(bean: controleAspProdAgroIndInstance, field: "aspectoProdutivoAgroIndustrializado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${controleAspProdAgroIndInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
