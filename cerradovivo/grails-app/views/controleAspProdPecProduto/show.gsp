
<%@ page import="br.com.cerradovivo.ControleAspProdPecProduto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controleAspProdPecProduto.label', default: 'ControleAspProdPecProduto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-controleAspProdPecProduto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-controleAspProdPecProduto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list controleAspProdPecProduto">
			
				<g:if test="${controleAspProdPecProdutoInstance?.produtoPecuaria}">
				<li class="fieldcontain">
					<span id="produtoPecuaria-label" class="property-label"><g:message code="controleAspProdPecProduto.produtoPecuaria.label" default="Produto Pecuaria" /></span>
					
						<span class="property-value" aria-labelledby="produtoPecuaria-label"><g:link controller="produtoPecuaria" action="show" id="${controleAspProdPecProdutoInstance?.produtoPecuaria?.id}">${controleAspProdPecProdutoInstance?.produtoPecuaria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdPecProdutoInstance?.numeroAnimais}">
				<li class="fieldcontain">
					<span id="numeroAnimais-label" class="property-label"><g:message code="controleAspProdPecProduto.numeroAnimais.label" default="Numero Animais" /></span>
					
						<span class="property-value" aria-labelledby="numeroAnimais-label"><g:fieldValue bean="${controleAspProdPecProdutoInstance}" field="numeroAnimais"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdPecProdutoInstance?.consumoProprio}">
				<li class="fieldcontain">
					<span id="consumoProprio-label" class="property-label"><g:message code="controleAspProdPecProduto.consumoProprio.label" default="Consumo Proprio" /></span>
					
						<span class="property-value" aria-labelledby="consumoProprio-label"><g:formatBoolean boolean="${controleAspProdPecProdutoInstance?.consumoProprio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdPecProdutoInstance?.comercioExcedente}">
				<li class="fieldcontain">
					<span id="comercioExcedente-label" class="property-label"><g:message code="controleAspProdPecProduto.comercioExcedente.label" default="Comercio Excedente" /></span>
					
						<span class="property-value" aria-labelledby="comercioExcedente-label"><g:formatBoolean boolean="${controleAspProdPecProdutoInstance?.comercioExcedente}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdPecProdutoInstance?.comercioProducao}">
				<li class="fieldcontain">
					<span id="comercioProducao-label" class="property-label"><g:message code="controleAspProdPecProduto.comercioProducao.label" default="Comercio Producao" /></span>
					
						<span class="property-value" aria-labelledby="comercioProducao-label"><g:formatBoolean boolean="${controleAspProdPecProdutoInstance?.comercioProducao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdPecProdutoInstance?.agroindustrializar}">
				<li class="fieldcontain">
					<span id="agroindustrializar-label" class="property-label"><g:message code="controleAspProdPecProduto.agroindustrializar.label" default="Agroindustrializar" /></span>
					
						<span class="property-value" aria-labelledby="agroindustrializar-label"><g:formatBoolean boolean="${controleAspProdPecProdutoInstance?.agroindustrializar}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${controleAspProdPecProdutoInstance?.aspectoProdutivoPecuaria}">
				<li class="fieldcontain">
					<span id="aspectoProdutivoPecuaria-label" class="property-label"><g:message code="controleAspProdPecProduto.aspectoProdutivoPecuaria.label" default="Aspecto Produtivo Pecuaria" /></span>
					
						<span class="property-value" aria-labelledby="aspectoProdutivoPecuaria-label"><g:link controller="aspectoProdutivoPecuaria" action="show" id="${controleAspProdPecProdutoInstance?.aspectoProdutivoPecuaria?.id}">${controleAspProdPecProdutoInstance?.aspectoProdutivoPecuaria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${controleAspProdPecProdutoInstance?.id}" />
					<g:link class="edit" action="edit" id="${controleAspProdPecProdutoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
