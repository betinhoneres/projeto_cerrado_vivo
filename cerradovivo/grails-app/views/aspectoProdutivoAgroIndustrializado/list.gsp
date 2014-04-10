
<%@ page import="br.com.cerradovivo.AspectoProdutivoAgroIndustrializado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoProdutivoAgroIndustrializado.label', default: 'AspectoProdutivoAgroIndustrializado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aspectoProdutivoAgroIndustrializado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aspectoProdutivoAgroIndustrializado" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="aspectoProdutivoAgroIndustrializado.propriedade.label" default="Propriedade" /></th>
					
						<g:sortableColumn property="producaoAgroindustrializada" title="${message(code: 'aspectoProdutivoAgroIndustrializado.producaoAgroindustrializada.label', default: 'Producao Agroindustrializada')}" />
					
						<g:sortableColumn property="carne" title="${message(code: 'aspectoProdutivoAgroIndustrializado.carne.label', default: 'Carne')}" />
					
						<g:sortableColumn property="ceres" title="${message(code: 'aspectoProdutivoAgroIndustrializado.ceres.label', default: 'Ceres')}" />
					
						<g:sortableColumn property="compotas" title="${message(code: 'aspectoProdutivoAgroIndustrializado.compotas.label', default: 'Compotas')}" />
					
						<g:sortableColumn property="conservas" title="${message(code: 'aspectoProdutivoAgroIndustrializado.conservas.label', default: 'Conservas')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${aspectoProdutivoAgroIndustrializadoInstanceList}" status="i" var="aspectoProdutivoAgroIndustrializadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${aspectoProdutivoAgroIndustrializadoInstance.id}">${fieldValue(bean: aspectoProdutivoAgroIndustrializadoInstance, field: "propriedade")}</g:link></td>
					
						<td>${fieldValue(bean: aspectoProdutivoAgroIndustrializadoInstance, field: "producaoAgroindustrializada")}</td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance.carne}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance.ceres}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance.compotas}" /></td>
					
						<td><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance.conservas}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${aspectoProdutivoAgroIndustrializadoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
