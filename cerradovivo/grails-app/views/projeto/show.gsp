
<%@ page import="br.com.cerradovivo.Projeto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projeto.label', default: 'Projeto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-projeto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-projeto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list projeto">

				<g:if test="${projetoInstance?.nomeProjeto}">
				<li class="fieldcontain">
					<span id="nomeProjeto-label" class="property-label"><g:message code="projeto.nomeProjeto.label" default="Nome Projeto" /></span>
					
						<span class="property-value" aria-labelledby="nomeProjeto-label"><g:fieldValue bean="${projetoInstance}" field="nomeProjeto"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${projetoInstance?.instituicaoParceira}">
				<li class="fieldcontain">
					<span id="instituicaoParceira-label" class="property-label"><g:message code="projeto.instituicaoParceira.label" default="Instituicao Parceira" /></span>
					
						<span class="property-value" aria-labelledby="instituicaoParceira-label"><g:fieldValue bean="${projetoInstance}" field="instituicaoParceira"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${projetoInstance?.municipio}">
				<li class="fieldcontain">
					<span id="municipio-label" class="property-label"><g:message code="projeto.municipio.label" default="Municipio" /></span>
					
						<span class="property-value" aria-labelledby="municipio-label"><g:fieldValue bean="${projetoInstance}" field="municipio"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${projetoInstance?.ufSede}">
				<li class="fieldcontain">
					<span id="ufSede-label" class="property-label"><g:message code="projeto.ufSede.label" default="Uf Sede" /></span>
					
						<span class="property-value" aria-labelledby="ufSede-label"><g:fieldValue bean="${projetoInstance}" field="ufSede"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projetoInstance?.dataInicioContrato}">
				<li class="fieldcontain">
					<span id="dataInicioContrato-label" class="property-label"><g:message code="projeto.dataInicioContrato.label" default="Data Inicio Contrato" /></span>
					
						<span class="property-value" aria-labelledby="dataInicioContrato-label"><g:formatDate date="${projetoInstance?.dataInicioContrato}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projetoInstance?.dataTerminoContrato}">
				<li class="fieldcontain">
					<span id="dataTerminoContrato-label" class="property-label"><g:message code="projeto.dataTerminoContrato.label" default="Data Termino Contrato" /></span>
					
						<span class="property-value" aria-labelledby="dataTerminoContrato-label"><g:formatDate date="${projetoInstance?.dataTerminoContrato}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projetoInstance?.linhaAtuacao}">
				<li class="fieldcontain">
					<span id="linhaAtuacao-label" class="property-label"><g:message code="projeto.linhaAtuacao.label" default="Linha Atuacao" /></span>
					
						<span class="property-value" aria-labelledby="linhaAtuacao-label"><g:fieldValue bean="${projetoInstance}" field="linhaAtuacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projetoInstance?.temaTransversal}">
				<li class="fieldcontain">
					<span id="temaTransversal-label" class="property-label"><g:message code="projeto.temaTransversal.label" default="Tema Transversal" /></span>
					
						<span class="property-value" aria-labelledby="temaTransversal-label"><g:fieldValue bean="${projetoInstance}" field="temaTransversal"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${projetoInstance?.id}" />
					<g:link class="edit" action="edit" id="${projetoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
