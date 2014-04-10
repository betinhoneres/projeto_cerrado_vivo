
<%@ page import="br.com.cerradovivo.ControleAspProdPecCriacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspProdPecCriacao.label', default: 'ControleAspProdPecCriacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-controleAspProdPecCriacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-controleAspProdPecCriacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="controleAspProdPecCriacao.animalCriacao.label" default="Animal Criacao" /></th>
					
						<g:sortableColumn property="numeroAnimais" title="${message(code: 'controleAspProdPecCriacao.numeroAnimais.label', default: 'Numero Animais')}" />
					
						<g:sortableColumn property="consumoProprio" title="${message(code: 'controleAspProdPecCriacao.consumoProprio.label', default: 'Consumo Proprio')}" />
					
						<g:sortableColumn property="comercioExcedente" title="${message(code: 'controleAspProdPecCriacao.comercioExcedente.label', default: 'Comercio Excedente')}" />
					
						<g:sortableColumn property="comercioProducao" title="${message(code: 'controleAspProdPecCriacao.comercioProducao.label', default: 'Comercio Producao')}" />
					
						<g:sortableColumn property="agroindustrializar" title="${message(code: 'controleAspProdPecCriacao.agroindustrializar.label', default: 'Agroindustrializar')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${controleAspProdPecCriacaoInstanceList}" status="i" var="controleAspProdPecCriacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${controleAspProdPecCriacaoInstance.id}">${fieldValue(bean: controleAspProdPecCriacaoInstance, field: "animalCriacao")}</g:link></td>
					
						<td>${fieldValue(bean: controleAspProdPecCriacaoInstance, field: "numeroAnimais")}</td>
					
						<td><g:formatBoolean boolean="${controleAspProdPecCriacaoInstance.consumoProprio}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdPecCriacaoInstance.comercioExcedente}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdPecCriacaoInstance.comercioProducao}" /></td>
					
						<td><g:formatBoolean boolean="${controleAspProdPecCriacaoInstance.agroindustrializar}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${controleAspProdPecCriacaoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
