
<%@ page import="br.com.cerradovivo.AspectoProdutivoAgricola" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoProdutivoAgricola.label', default: 'AspectoProdutivoAgricola')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aspectoProdutivoAgricola" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aspectoProdutivoAgricola" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aspectoProdutivoAgricola">
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="aspectoProdutivoAgricola.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${aspectoProdutivoAgricolaInstance?.propriedade?.id}">${aspectoProdutivoAgricolaInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.ceres}">
				<li class="fieldcontain">
					<span id="ceres-label" class="property-label"><g:message code="aspectoProdutivoAgricola.ceres.label" default="Ceres" /></span>
					
						<span class="property-value" aria-labelledby="ceres-label"><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance?.ceres}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.controleAspProdAgrCulturas}">
				<li class="fieldcontain">
					<span id="controleAspProdAgrCulturas-label" class="property-label"><g:message code="aspectoProdutivoAgricola.controleAspProdAgrCulturas.label" default="Controle Asp Prod Agr Culturas" /></span>
					
						<g:each in="${aspectoProdutivoAgricolaInstance.controleAspProdAgrCulturas}" var="c">
						<span class="property-value" aria-labelledby="controleAspProdAgrCulturas-label"><g:link controller="controleAspProdAgrCultura" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.controleAspProdAgrProdutos}">
				<li class="fieldcontain">
					<span id="controleAspProdAgrProdutos-label" class="property-label"><g:message code="aspectoProdutivoAgricola.controleAspProdAgrProdutos.label" default="Controle Asp Prod Agr Produtos" /></span>
					
						<g:each in="${aspectoProdutivoAgricolaInstance.controleAspProdAgrProdutos}" var="c">
						<span class="property-value" aria-labelledby="controleAspProdAgrProdutos-label"><g:link controller="controleAspProdAgrProduto" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.feiraLivre}">
				<li class="fieldcontain">
					<span id="feiraLivre-label" class="property-label"><g:message code="aspectoProdutivoAgricola.feiraLivre.label" default="Feira Livre" /></span>
					
						<span class="property-value" aria-labelledby="feiraLivre-label"><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance?.feiraLivre}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.feiraProdutor}">
				<li class="fieldcontain">
					<span id="feiraProdutor-label" class="property-label"><g:message code="aspectoProdutivoAgricola.feiraProdutor.label" default="Feira Produtor" /></span>
					
						<span class="property-value" aria-labelledby="feiraProdutor-label"><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance?.feiraProdutor}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.goianesia}">
				<li class="fieldcontain">
					<span id="goianesia-label" class="property-label"><g:message code="aspectoProdutivoAgricola.goianesia.label" default="Goianesia" /></span>
					
						<span class="property-value" aria-labelledby="goianesia-label"><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance?.goianesia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.jaragua}">
				<li class="fieldcontain">
					<span id="jaragua-label" class="property-label"><g:message code="aspectoProdutivoAgricola.jaragua.label" default="Jaragua" /></span>
					
						<span class="property-value" aria-labelledby="jaragua-label"><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance?.jaragua}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.naPropriedade}">
				<li class="fieldcontain">
					<span id="naPropriedade-label" class="property-label"><g:message code="aspectoProdutivoAgricola.naPropriedade.label" default="Na Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="naPropriedade-label"><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance?.naPropriedade}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.outroComercioLocal}">
				<li class="fieldcontain">
					<span id="outroComercioLocal-label" class="property-label"><g:message code="aspectoProdutivoAgricola.outroComercioLocal.label" default="Outro Comercio Local" /></span>
					
						<span class="property-value" aria-labelledby="outroComercioLocal-label"><g:fieldValue bean="${aspectoProdutivoAgricolaInstance}" field="outroComercioLocal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.outroComercioMun}">
				<li class="fieldcontain">
					<span id="outroComercioMun-label" class="property-label"><g:message code="aspectoProdutivoAgricola.outroComercioMun.label" default="Outro Comercio Mun" /></span>
					
						<span class="property-value" aria-labelledby="outroComercioMun-label"><g:fieldValue bean="${aspectoProdutivoAgricolaInstance}" field="outroComercioMun"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.rianapolis}">
				<li class="fieldcontain">
					<span id="rianapolis-label" class="property-label"><g:message code="aspectoProdutivoAgricola.rianapolis.label" default="Rianapolis" /></span>
					
						<span class="property-value" aria-labelledby="rianapolis-label"><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance?.rianapolis}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.staIsabel}">
				<li class="fieldcontain">
					<span id="staIsabel-label" class="property-label"><g:message code="aspectoProdutivoAgricola.staIsabel.label" default="Sta Isabel" /></span>
					
						<span class="property-value" aria-labelledby="staIsabel-label"><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance?.staIsabel}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.supermercado}">
				<li class="fieldcontain">
					<span id="supermercado-label" class="property-label"><g:message code="aspectoProdutivoAgricola.supermercado.label" default="Supermercado" /></span>
					
						<span class="property-value" aria-labelledby="supermercado-label"><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance?.supermercado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgricolaInstance?.vizinho}">
				<li class="fieldcontain">
					<span id="vizinho-label" class="property-label"><g:message code="aspectoProdutivoAgricola.vizinho.label" default="Vizinho" /></span>
					
						<span class="property-value" aria-labelledby="vizinho-label"><g:formatBoolean boolean="${aspectoProdutivoAgricolaInstance?.vizinho}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${aspectoProdutivoAgricolaInstance?.id}" />
					<g:link class="edit" action="edit" id="${aspectoProdutivoAgricolaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
