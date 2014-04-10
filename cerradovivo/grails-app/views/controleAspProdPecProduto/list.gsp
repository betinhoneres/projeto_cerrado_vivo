
<%@ page import="br.com.cerradovivo.ControleAspProdPecProduto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspProdPecProduto.label', default: 'ControleAspProdPecProduto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-controleAspProdPecProduto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-controleAspProdPecProduto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="controleAspProdPecProduto.produtoPecuaria.label" default="Produto Pecuaria" /></th>
					
						<g:sortableColumn property="numeroAnimais" title="${message(code: 'controleAspProdPecProduto.numeroAnimais.label', default: 'Numero Animais')}" />
					
						<g:sortableColumn property="consumoProprio" title="${message(code: 'controleAspProdPecProduto.consumoProprio.label', default: 'Consumo Proprio')}" />
					
						<g:sortableColumn property="comercioExcedente" title="${message(code: 'controleAspProdPecProduto.comercioExcedente.label', default: 'Comercio Excedente')}" />
					
						<g:sortableColumn property="comercioProducao" title="${message(code: 'controleAspProdPecProduto.comercioProducao.label', default: 'Comercio Producao')}" />
					
						<g:sortableColumn property="agroindustrializar" title="${message(code: 'controleAspProdPecProduto.agroindustrializar.label', default: 'Agroindustrializar')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${controleAspProdPecProdutoInstanceList}" status="i" var="controleAspProdPecProdutoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${controleAspProdPecProdutoInstance.id}">${fieldValue(bean: controleAspProdPecProdutoInstance, field: "produtoPecuaria")}</g:link></td>
					
						<td>${fieldValue(bean: controleAspProdPecProdutoInstance, field: "numeroAnimais")}</td>
					
						<td><g:formatBoolean boolean="${controleAspProdPecProdutoInstance.consumoProprio}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdPecProdutoInstance.comercioExcedente}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdPecProdutoInstance.comercioProducao}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdPecProdutoInstance.agroindustrializar}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${controleAspProdPecProdutoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
