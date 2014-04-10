
<%@ page import="br.com.cerradovivo.ControleAspProdAgroInd" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspProdAgroInd.label', default: 'ControleAspProdAgroInd')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-controleAspProdAgroInd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-controleAspProdAgroInd" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list controleAspProdAgroInd">
			
				<g:if test="${controleAspProdAgroIndInstance?.produtoNaoAgricola}">
				<li class="fieldcontain">
					<span id="produtoNaoAgricola-label" class="property-label"><g:message code="controleAspProdAgroInd.produtoNaoAgricola.label" default="Produto Nao Agricola" /></span>
					
						<span class="property-value" aria-labelledby="produtoNaoAgricola-label"><g:link controller="produtoNaoAgricola" action="show" id="${controleAspProdAgroIndInstance?.produtoNaoAgricola?.id}">${controleAspProdAgroIndInstance?.produtoNaoAgricola?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgroIndInstance?.consumoProprio}">
				<li class="fieldcontain">
					<span id="consumoProprio-label" class="property-label"><g:message code="controleAspProdAgroInd.consumoProprio.label" default="Consumo Proprio" /></span>
					
						<span class="property-value" aria-labelledby="consumoProprio-label"><g:formatBoolean boolean="${controleAspProdAgroIndInstance?.consumoProprio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgroIndInstance?.comercioExcedente}">
				<li class="fieldcontain">
					<span id="comercioExcedente-label" class="property-label"><g:message code="controleAspProdAgroInd.comercioExcedente.label" default="Comercio Excedente" /></span>
					
						<span class="property-value" aria-labelledby="comercioExcedente-label"><g:formatBoolean boolean="${controleAspProdAgroIndInstance?.comercioExcedente}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgroIndInstance?.comercioProducao}">
				<li class="fieldcontain">
					<span id="comercioProducao-label" class="property-label"><g:message code="controleAspProdAgroInd.comercioProducao.label" default="Comercio Producao" /></span>
					
						<span class="property-value" aria-labelledby="comercioProducao-label"><g:formatBoolean boolean="${controleAspProdAgroIndInstance?.comercioProducao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgroIndInstance?.agroindustrializar}">
				<li class="fieldcontain">
					<span id="agroindustrializar-label" class="property-label"><g:message code="controleAspProdAgroInd.agroindustrializar.label" default="Agroindustrializar" /></span>
					
						<span class="property-value" aria-labelledby="agroindustrializar-label"><g:formatBoolean boolean="${controleAspProdAgroIndInstance?.agroindustrializar}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgroIndInstance?.aspectoProdutivoAgroIndustrializado}">
				<li class="fieldcontain">
					<span id="aspectoProdutivoAgroIndustrializado-label" class="property-label"><g:message code="controleAspProdAgroInd.aspectoProdutivoAgroIndustrializado.label" default="Aspecto Produtivo Agro Industrializado" /></span>
					
						<span class="property-value" aria-labelledby="aspectoProdutivoAgroIndustrializado-label"><g:link controller="aspectoProdutivoAgroIndustrializado" action="show" id="${controleAspProdAgroIndInstance?.aspectoProdutivoAgroIndustrializado?.id}">${controleAspProdAgroIndInstance?.aspectoProdutivoAgroIndustrializado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${controleAspProdAgroIndInstance?.id}" />
					<g:link class="edit" action="edit" id="${controleAspProdAgroIndInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
