
<%@ page import="br.com.cerradovivo.AspectoEconomico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoEconomico.label', default: 'AspectoEconomico')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aspectoEconomico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aspectoEconomico" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="aspectoEconomico.propriedade.label" default="Propriedade" /></th>
					
						<g:sortableColumn property="qtdSalMin2007" title="${message(code: 'aspectoEconomico.qtdSalMin2007.label', default: 'Qtd Sal Min2007')}" />
					
						<g:sortableColumn property="qtdSalMin2008" title="${message(code: 'aspectoEconomico.qtdSalMin2008.label', default: 'Qtd Sal Min2008')}" />
					
						<g:sortableColumn property="qtdSalMin2009" title="${message(code: 'aspectoEconomico.qtdSalMin2009.label', default: 'Qtd Sal Min2009')}" />
					
						<g:sortableColumn property="qtdSalMin2010" title="${message(code: 'aspectoEconomico.qtdSalMin2010.label', default: 'Qtd Sal Min2010')}" />
					
						<g:sortableColumn property="qtdSalMin2011" title="${message(code: 'aspectoEconomico.qtdSalMin2011.label', default: 'Qtd Sal Min2011')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${aspectoEconomicoInstanceList}" status="i" var="aspectoEconomicoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${aspectoEconomicoInstance.id}">${fieldValue(bean: aspectoEconomicoInstance, field: "propriedade")}</g:link></td>
					
						<td>${fieldValue(bean: aspectoEconomicoInstance, field: "qtdSalMin2007")}</td>
					
						<td>${fieldValue(bean: aspectoEconomicoInstance, field: "qtdSalMin2008")}</td>
					
						<td>${fieldValue(bean: aspectoEconomicoInstance, field: "qtdSalMin2009")}</td>
					
						<td>${fieldValue(bean: aspectoEconomicoInstance, field: "qtdSalMin2010")}</td>
					
						<td>${fieldValue(bean: aspectoEconomicoInstance, field: "qtdSalMin2011")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${aspectoEconomicoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
