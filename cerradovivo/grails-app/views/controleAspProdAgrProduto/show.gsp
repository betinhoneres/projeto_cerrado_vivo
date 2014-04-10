
<%@ page import="br.com.cerradovivo.ControleAspProdAgrProduto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspProdAgrProduto.label', default: 'ControleAspProdAgrProduto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-controleAspProdAgrProduto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-controleAspProdAgrProduto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list controleAspProdAgrProduto">
			
				<g:if test="${controleAspProdAgrProdutoInstance?.produtoAgricola}">
				<li class="fieldcontain">
					<span id="produtoAgricola-label" class="property-label"><g:message code="controleAspProdAgrProduto.produtoAgricola.label" default="Produto Agricola" /></span>
					
						<span class="property-value" aria-labelledby="produtoAgricola-label"><g:link controller="produtoAgricola" action="show" id="${controleAspProdAgrProdutoInstance?.produtoAgricola?.id}">${controleAspProdAgrProdutoInstance?.produtoAgricola?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrProdutoInstance?.um}">
				<li class="fieldcontain">
					<span id="um-label" class="property-label"><g:message code="controleAspProdAgrProduto.um.label" default="Um" /></span>
					
						<span class="property-value" aria-labelledby="um-label"><g:fieldValue bean="${controleAspProdAgrProdutoInstance}" field="um"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrProdutoInstance?.consumoProprio}">
				<li class="fieldcontain">
					<span id="consumoProprio-label" class="property-label"><g:message code="controleAspProdAgrProduto.consumoProprio.label" default="Consumo Proprio" /></span>
					
						<span class="property-value" aria-labelledby="consumoProprio-label"><g:formatBoolean boolean="${controleAspProdAgrProdutoInstance?.consumoProprio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrProdutoInstance?.comercioExcedente}">
				<li class="fieldcontain">
					<span id="comercioExcedente-label" class="property-label"><g:message code="controleAspProdAgrProduto.comercioExcedente.label" default="Comercio Excedente" /></span>
					
						<span class="property-value" aria-labelledby="comercioExcedente-label"><g:formatBoolean boolean="${controleAspProdAgrProdutoInstance?.comercioExcedente}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrProdutoInstance?.comercioProducao}">
				<li class="fieldcontain">
					<span id="comercioProducao-label" class="property-label"><g:message code="controleAspProdAgrProduto.comercioProducao.label" default="Comercio Producao" /></span>
					
						<span class="property-value" aria-labelledby="comercioProducao-label"><g:formatBoolean boolean="${controleAspProdAgrProdutoInstance?.comercioProducao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrProdutoInstance?.agroindustrializar}">
				<li class="fieldcontain">
					<span id="agroindustrializar-label" class="property-label"><g:message code="controleAspProdAgrProduto.agroindustrializar.label" default="Agroindustrializar" /></span>
					
						<span class="property-value" aria-labelledby="agroindustrializar-label"><g:formatBoolean boolean="${controleAspProdAgrProdutoInstance?.agroindustrializar}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrProdutoInstance?.aspectoProdutivoAgricola}">
				<li class="fieldcontain">
					<span id="aspectoProdutivoAgricola-label" class="property-label"><g:message code="controleAspProdAgrProduto.aspectoProdutivoAgricola.label" default="Aspecto Produtivo Agricola" /></span>
					
						<span class="property-value" aria-labelledby="aspectoProdutivoAgricola-label"><g:link controller="aspectoProdutivoAgricola" action="show" id="${controleAspProdAgrProdutoInstance?.aspectoProdutivoAgricola?.id}">${controleAspProdAgrProdutoInstance?.aspectoProdutivoAgricola?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdAgrProdutoInstance?.quantidade}">
				<li class="fieldcontain">
					<span id="quantidade-label" class="property-label"><g:message code="controleAspProdAgrProduto.quantidade.label" default="Quantidade" /></span>
					
						<span class="property-value" aria-labelledby="quantidade-label"><g:fieldValue bean="${controleAspProdAgrProdutoInstance}" field="quantidade"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${controleAspProdAgrProdutoInstance?.id}" />
					<g:link class="edit" action="edit" id="${controleAspProdAgrProdutoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
