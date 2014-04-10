
<%@ page import="br.com.cerradovivo.ControleAspProdAgrProduto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspProdAgrProduto.label', default: 'ControleAspProdAgrProduto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-controleAspProdAgrProduto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-controleAspProdAgrProduto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="controleAspProdAgrProduto.produtoAgricola.label" default="Produto Agricola" /></th>
					
						<g:sortableColumn property="um" title="${message(code: 'controleAspProdAgrProduto.um.label', default: 'Um')}" />
					
						<g:sortableColumn property="consumoProprio" title="${message(code: 'controleAspProdAgrProduto.consumoProprio.label', default: 'Consumo Proprio')}" />
					
						<g:sortableColumn property="comercioExcedente" title="${message(code: 'controleAspProdAgrProduto.comercioExcedente.label', default: 'Comercio Excedente')}" />
					
						<g:sortableColumn property="comercioProducao" title="${message(code: 'controleAspProdAgrProduto.comercioProducao.label', default: 'Comercio Producao')}" />
					
						<g:sortableColumn property="agroindustrializar" title="${message(code: 'controleAspProdAgrProduto.agroindustrializar.label', default: 'Agroindustrializar')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${controleAspProdAgrProdutoInstanceList}" status="i" var="controleAspProdAgrProdutoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${controleAspProdAgrProdutoInstance.id}">${fieldValue(bean: controleAspProdAgrProdutoInstance, field: "produtoAgricola")}</g:link></td>
					
						<td>${fieldValue(bean: controleAspProdAgrProdutoInstance, field: "um")}</td>
					
						<td><g:formatBoolean boolean="${controleAspProdAgrProdutoInstance.consumoProprio}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdAgrProdutoInstance.comercioExcedente}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdAgrProdutoInstance.comercioProducao}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdAgrProdutoInstance.agroindustrializar}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${controleAspProdAgrProdutoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
