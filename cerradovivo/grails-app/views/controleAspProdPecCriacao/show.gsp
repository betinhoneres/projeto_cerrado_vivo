
<%@ page import="br.com.cerradovivo.ControleAspProdPecCriacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspProdPecCriacao.label', default: 'ControleAspProdPecCriacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-controleAspProdPecCriacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-controleAspProdPecCriacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list controleAspProdPecCriacao">
			
				<g:if test="${controleAspProdPecCriacaoInstance?.animalCriacao}">
				<li class="fieldcontain">
					<span id="animalCriacao-label" class="property-label"><g:message code="controleAspProdPecCriacao.animalCriacao.label" default="Animal Criacao" /></span>
					
						<span class="property-value" aria-labelledby="animalCriacao-label"><g:link controller="animalCriacao" action="show" id="${controleAspProdPecCriacaoInstance?.animalCriacao?.id}">${controleAspProdPecCriacaoInstance?.animalCriacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdPecCriacaoInstance?.numeroAnimais}">
				<li class="fieldcontain">
					<span id="numeroAnimais-label" class="property-label"><g:message code="controleAspProdPecCriacao.numeroAnimais.label" default="Numero Animais" /></span>
					
						<span class="property-value" aria-labelledby="numeroAnimais-label"><g:fieldValue bean="${controleAspProdPecCriacaoInstance}" field="numeroAnimais"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdPecCriacaoInstance?.consumoProprio}">
				<li class="fieldcontain">
					<span id="consumoProprio-label" class="property-label"><g:message code="controleAspProdPecCriacao.consumoProprio.label" default="Consumo Proprio" /></span>
					
						<span class="property-value" aria-labelledby="consumoProprio-label"><g:formatBoolean boolean="${controleAspProdPecCriacaoInstance?.consumoProprio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdPecCriacaoInstance?.comercioExcedente}">
				<li class="fieldcontain">
					<span id="comercioExcedente-label" class="property-label"><g:message code="controleAspProdPecCriacao.comercioExcedente.label" default="Comercio Excedente" /></span>
					
						<span class="property-value" aria-labelledby="comercioExcedente-label"><g:formatBoolean boolean="${controleAspProdPecCriacaoInstance?.comercioExcedente}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdPecCriacaoInstance?.comercioProducao}">
				<li class="fieldcontain">
					<span id="comercioProducao-label" class="property-label"><g:message code="controleAspProdPecCriacao.comercioProducao.label" default="Comercio Producao" /></span>
					
						<span class="property-value" aria-labelledby="comercioProducao-label"><g:formatBoolean boolean="${controleAspProdPecCriacaoInstance?.comercioProducao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdPecCriacaoInstance?.agroindustrializar}">
				<li class="fieldcontain">
					<span id="agroindustrializar-label" class="property-label"><g:message code="controleAspProdPecCriacao.agroindustrializar.label" default="Agroindustrializar" /></span>
					
						<span class="property-value" aria-labelledby="agroindustrializar-label"><g:formatBoolean boolean="${controleAspProdPecCriacaoInstance?.agroindustrializar}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdPecCriacaoInstance?.aspectoProdutivoPecuaria}">
				<li class="fieldcontain">
					<span id="aspectoProdutivoPecuaria-label" class="property-label"><g:message code="controleAspProdPecCriacao.aspectoProdutivoPecuaria.label" default="Aspecto Produtivo Pecuaria" /></span>
					
						<span class="property-value" aria-labelledby="aspectoProdutivoPecuaria-label"><g:link controller="aspectoProdutivoPecuaria" action="show" id="${controleAspProdPecCriacaoInstance?.aspectoProdutivoPecuaria?.id}">${controleAspProdPecCriacaoInstance?.aspectoProdutivoPecuaria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${controleAspProdPecCriacaoInstance?.id}" />
					<g:link class="edit" action="edit" id="${controleAspProdPecCriacaoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
