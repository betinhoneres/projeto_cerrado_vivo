
<%@ page import="br.com.cerradovivo.ControleAspProdAgrCultura" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspProdAgrCultura.label', default: 'ControleAspProdAgrCultura')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-controleAspProdAgrCultura" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-controleAspProdAgrCultura" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list controleAspProdAgrCultura">
			
				<g:if test="${controleAspProdAgrCulturaInstance?.cultura}">
				<li class="fieldcontain">
					<span id="cultura-label" class="property-label"><g:message code="controleAspProdAgrCultura.cultura.label" default="Cultura" /></span>
					
						<span class="property-value" aria-labelledby="cultura-label"><g:link controller="cultura" action="show" id="${controleAspProdAgrCulturaInstance?.cultura?.id}">${controleAspProdAgrCulturaInstance?.cultura?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrCulturaInstance?.um}">
				<li class="fieldcontain">
					<span id="um-label" class="property-label"><g:message code="controleAspProdAgrCultura.um.label" default="Um" /></span>
					
						<span class="property-value" aria-labelledby="um-label"><g:fieldValue bean="${controleAspProdAgrCulturaInstance}" field="um"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrCulturaInstance?.producao}">
				<li class="fieldcontain">
					<span id="producao-label" class="property-label"><g:message code="controleAspProdAgrCultura.producao.label" default="Producao" /></span>
					
						<span class="property-value" aria-labelledby="producao-label"><g:fieldValue bean="${controleAspProdAgrCulturaInstance}" field="producao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrCulturaInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="controleAspProdAgrCultura.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:fieldValue bean="${controleAspProdAgrCulturaInstance}" field="area"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrCulturaInstance?.consumoProprio}">
				<li class="fieldcontain">
					<span id="consumoProprio-label" class="property-label"><g:message code="controleAspProdAgrCultura.consumoProprio.label" default="Consumo Proprio" /></span>
					
						<span class="property-value" aria-labelledby="consumoProprio-label"><g:formatBoolean boolean="${controleAspProdAgrCulturaInstance?.consumoProprio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrCulturaInstance?.comercioExcedente}">
				<li class="fieldcontain">
					<span id="comercioExcedente-label" class="property-label"><g:message code="controleAspProdAgrCultura.comercioExcedente.label" default="Comercio Excedente" /></span>
					
						<span class="property-value" aria-labelledby="comercioExcedente-label"><g:formatBoolean boolean="${controleAspProdAgrCulturaInstance?.comercioExcedente}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrCulturaInstance?.comercioProducao}">
				<li class="fieldcontain">
					<span id="comercioProducao-label" class="property-label"><g:message code="controleAspProdAgrCultura.comercioProducao.label" default="Comercio Producao" /></span>
					
						<span class="property-value" aria-labelledby="comercioProducao-label"><g:formatBoolean boolean="${controleAspProdAgrCulturaInstance?.comercioProducao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrCulturaInstance?.agroindustrializar}">
				<li class="fieldcontain">
					<span id="agroindustrializar-label" class="property-label"><g:message code="controleAspProdAgrCultura.agroindustrializar.label" default="Agroindustrializar" /></span>
					
						<span class="property-value" aria-labelledby="agroindustrializar-label"><g:formatBoolean boolean="${controleAspProdAgrCulturaInstance?.agroindustrializar}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrCulturaInstance?.aspectoProdutivoAgricola}">
				<li class="fieldcontain">
					<span id="aspectoProdutivoAgricola-label" class="property-label"><g:message code="controleAspProdAgrCultura.aspectoProdutivoAgricola.label" default="Aspecto Produtivo Agricola" /></span>
					
						<span class="property-value" aria-labelledby="aspectoProdutivoAgricola-label"><g:link controller="aspectoProdutivoAgricola" action="show" id="${controleAspProdAgrCulturaInstance?.aspectoProdutivoAgricola?.id}">${controleAspProdAgrCulturaInstance?.aspectoProdutivoAgricola?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${controleAspProdAgrCulturaInstance?.id}" />
					<g:link class="edit" action="edit" id="${controleAspProdAgrCulturaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
