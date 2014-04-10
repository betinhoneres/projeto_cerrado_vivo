
<%@ page import="br.com.cerradovivo.AspectoProdutivoPecuaria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoProdutivoPecuaria.label', default: 'AspectoProdutivoPecuaria')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aspectoProdutivoPecuaria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aspectoProdutivoPecuaria" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aspectoProdutivoPecuaria">
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${aspectoProdutivoPecuariaInstance?.propriedade?.id}">${aspectoProdutivoPecuariaInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.ceres}">
				<li class="fieldcontain">
					<span id="ceres-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.ceres.label" default="Ceres" /></span>
					
						<span class="property-value" aria-labelledby="ceres-label"><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance?.ceres}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.controleAspProdPecCriacaos}">
				<li class="fieldcontain">
					<span id="controleAspProdPecCriacaos-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.controleAspProdPecCriacaos.label" default="Controle Asp Prod Pec Criacaos" /></span>
					
						<g:each in="${aspectoProdutivoPecuariaInstance.controleAspProdPecCriacaos}" var="c">
						<span class="property-value" aria-labelledby="controleAspProdPecCriacaos-label"><g:link controller="controleAspProdPecCriacao" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.controleAspProdPecProdutos}">
				<li class="fieldcontain">
					<span id="controleAspProdPecProdutos-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.controleAspProdPecProdutos.label" default="Controle Asp Prod Pec Produtos" /></span>
					
						<g:each in="${aspectoProdutivoPecuariaInstance.controleAspProdPecProdutos}" var="c">
						<span class="property-value" aria-labelledby="controleAspProdPecProdutos-label"><g:link controller="controleAspProdPecProduto" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.feiraLivre}">
				<li class="fieldcontain">
					<span id="feiraLivre-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.feiraLivre.label" default="Feira Livre" /></span>
					
						<span class="property-value" aria-labelledby="feiraLivre-label"><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance?.feiraLivre}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.feiraProdutor}">
				<li class="fieldcontain">
					<span id="feiraProdutor-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.feiraProdutor.label" default="Feira Produtor" /></span>
					
						<span class="property-value" aria-labelledby="feiraProdutor-label"><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance?.feiraProdutor}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.goianesia}">
				<li class="fieldcontain">
					<span id="goianesia-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.goianesia.label" default="Goianesia" /></span>
					
						<span class="property-value" aria-labelledby="goianesia-label"><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance?.goianesia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.jaragua}">
				<li class="fieldcontain">
					<span id="jaragua-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.jaragua.label" default="Jaragua" /></span>
					
						<span class="property-value" aria-labelledby="jaragua-label"><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance?.jaragua}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.naPropriedade}">
				<li class="fieldcontain">
					<span id="naPropriedade-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.naPropriedade.label" default="Na Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="naPropriedade-label"><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance?.naPropriedade}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.outroComercioLocal}">
				<li class="fieldcontain">
					<span id="outroComercioLocal-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.outroComercioLocal.label" default="Outro Comercio Local" /></span>
					
						<span class="property-value" aria-labelledby="outroComercioLocal-label"><g:fieldValue bean="${aspectoProdutivoPecuariaInstance}" field="outroComercioLocal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.outroComercioMun}">
				<li class="fieldcontain">
					<span id="outroComercioMun-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.outroComercioMun.label" default="Outro Comercio Mun" /></span>
					
						<span class="property-value" aria-labelledby="outroComercioMun-label"><g:fieldValue bean="${aspectoProdutivoPecuariaInstance}" field="outroComercioMun"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.rianapolis}">
				<li class="fieldcontain">
					<span id="rianapolis-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.rianapolis.label" default="Rianapolis" /></span>
					
						<span class="property-value" aria-labelledby="rianapolis-label"><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance?.rianapolis}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.staIsabel}">
				<li class="fieldcontain">
					<span id="staIsabel-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.staIsabel.label" default="Sta Isabel" /></span>
					
						<span class="property-value" aria-labelledby="staIsabel-label"><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance?.staIsabel}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.supermercado}">
				<li class="fieldcontain">
					<span id="supermercado-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.supermercado.label" default="Supermercado" /></span>
					
						<span class="property-value" aria-labelledby="supermercado-label"><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance?.supermercado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoPecuariaInstance?.vizinho}">
				<li class="fieldcontain">
					<span id="vizinho-label" class="property-label"><g:message code="aspectoProdutivoPecuaria.vizinho.label" default="Vizinho" /></span>
					
						<span class="property-value" aria-labelledby="vizinho-label"><g:formatBoolean boolean="${aspectoProdutivoPecuariaInstance?.vizinho}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${aspectoProdutivoPecuariaInstance?.id}" />
					<g:link class="edit" action="edit" id="${aspectoProdutivoPecuariaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
