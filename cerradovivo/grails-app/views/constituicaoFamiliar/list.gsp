
<%@ page import="br.com.cerradovivo.ConstituicaoFamiliar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'constituicaoFamiliar.label', default: 'ConstituicaoFamiliar')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-constituicaoFamiliar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-constituicaoFamiliar" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="constituicaoFamiliar.grupoFamiliar.label" default="Grupo Familiar" /></th>
					
						<g:sortableColumn property="nome" title="${message(code: 'constituicaoFamiliar.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="posicaoFamiliar" title="${message(code: 'constituicaoFamiliar.posicaoFamiliar.label', default: 'Posicao Familiar')}" />
					
						<g:sortableColumn property="idade" title="${message(code: 'constituicaoFamiliar.idade.label', default: 'Idade')}" />
					
						<g:sortableColumn property="sexo" title="${message(code: 'constituicaoFamiliar.sexo.label', default: 'Sexo')}" />
					
						<g:sortableColumn property="naturalidade" title="${message(code: 'constituicaoFamiliar.naturalidade.label', default: 'Naturalidade')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${constituicaoFamiliarInstanceList}" status="i" var="constituicaoFamiliarInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${constituicaoFamiliarInstance.id}">${fieldValue(bean: constituicaoFamiliarInstance, field: "grupoFamiliar")}</g:link></td>
					
						<td>${fieldValue(bean: constituicaoFamiliarInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: constituicaoFamiliarInstance, field: "posicaoFamiliar")}</td>
					
						<td>${fieldValue(bean: constituicaoFamiliarInstance, field: "idade")}</td>
					
						<td>${fieldValue(bean: constituicaoFamiliarInstance, field: "sexo")}</td>
					
						<td>${fieldValue(bean: constituicaoFamiliarInstance, field: "naturalidade")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${constituicaoFamiliarInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
