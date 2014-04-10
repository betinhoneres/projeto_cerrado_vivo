
<%@ page import="br.com.cerradovivo.AspectoProdutivoAgroIndustrializado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoProdutivoAgroIndustrializado.label', default: 'AspectoProdutivoAgroIndustrializado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aspectoProdutivoAgroIndustrializado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aspectoProdutivoAgroIndustrializado" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aspectoProdutivoAgroIndustrializado">
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${aspectoProdutivoAgroIndustrializadoInstance?.propriedade?.id}">${aspectoProdutivoAgroIndustrializadoInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.producaoAgroindustrializada}">
				<li class="fieldcontain">
					<span id="producaoAgroindustrializada-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.producaoAgroindustrializada.label" default="Producao Agroindustrializada" /></span>
					
						<span class="property-value" aria-labelledby="producaoAgroindustrializada-label"><g:fieldValue bean="${aspectoProdutivoAgroIndustrializadoInstance}" field="producaoAgroindustrializada"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.carne}">
				<li class="fieldcontain">
					<span id="carne-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.carne.label" default="Carne" /></span>
					
						<span class="property-value" aria-labelledby="carne-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.carne}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.ceres}">
				<li class="fieldcontain">
					<span id="ceres-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.ceres.label" default="Ceres" /></span>
					
						<span class="property-value" aria-labelledby="ceres-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.ceres}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.compotas}">
				<li class="fieldcontain">
					<span id="compotas-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.compotas.label" default="Compotas" /></span>
					
						<span class="property-value" aria-labelledby="compotas-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.compotas}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.conservas}">
				<li class="fieldcontain">
					<span id="conservas-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.conservas.label" default="Conservas" /></span>
					
						<span class="property-value" aria-labelledby="conservas-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.conservas}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.controleAspProdAgroInds}">
				<li class="fieldcontain">
					<span id="controleAspProdAgroInds-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.controleAspProdAgroInds.label" default="Controle Asp Prod Agro Inds" /></span>
					
						<g:each in="${aspectoProdutivoAgroIndustrializadoInstance.controleAspProdAgroInds}" var="c">
						<span class="property-value" aria-labelledby="controleAspProdAgroInds-label"><g:link controller="controleAspProdAgroInd" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.doces}">
				<li class="fieldcontain">
					<span id="doces-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.doces.label" default="Doces" /></span>
					
						<span class="property-value" aria-labelledby="doces-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.doces}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.embutido}">
				<li class="fieldcontain">
					<span id="embutido-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.embutido.label" default="Embutido" /></span>
					
						<span class="property-value" aria-labelledby="embutido-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.embutido}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.empacotaLeite}">
				<li class="fieldcontain">
					<span id="empacotaLeite-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.empacotaLeite.label" default="Empacota Leite" /></span>
					
						<span class="property-value" aria-labelledby="empacotaLeite-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.empacotaLeite}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.farinhaMandioca}">
				<li class="fieldcontain">
					<span id="farinhaMandioca-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.farinhaMandioca.label" default="Farinha Mandioca" /></span>
					
						<span class="property-value" aria-labelledby="farinhaMandioca-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.farinhaMandioca}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.farinhaMilho}">
				<li class="fieldcontain">
					<span id="farinhaMilho-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.farinhaMilho.label" default="Farinha Milho" /></span>
					
						<span class="property-value" aria-labelledby="farinhaMilho-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.farinhaMilho}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.feiraLivre}">
				<li class="fieldcontain">
					<span id="feiraLivre-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.feiraLivre.label" default="Feira Livre" /></span>
					
						<span class="property-value" aria-labelledby="feiraLivre-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.feiraLivre}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.feiraProdutor}">
				<li class="fieldcontain">
					<span id="feiraProdutor-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.feiraProdutor.label" default="Feira Produtor" /></span>
					
						<span class="property-value" aria-labelledby="feiraProdutor-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.feiraProdutor}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.goianesia}">
				<li class="fieldcontain">
					<span id="goianesia-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.goianesia.label" default="Goianesia" /></span>
					
						<span class="property-value" aria-labelledby="goianesia-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.goianesia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.jaragua}">
				<li class="fieldcontain">
					<span id="jaragua-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.jaragua.label" default="Jaragua" /></span>
					
						<span class="property-value" aria-labelledby="jaragua-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.jaragua}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.licores}">
				<li class="fieldcontain">
					<span id="licores-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.licores.label" default="Licores" /></span>
					
						<span class="property-value" aria-labelledby="licores-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.licores}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.naPropriedade}">
				<li class="fieldcontain">
					<span id="naPropriedade-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.naPropriedade.label" default="Na Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="naPropriedade-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.naPropriedade}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.outroComercioLocal}">
				<li class="fieldcontain">
					<span id="outroComercioLocal-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.outroComercioLocal.label" default="Outro Comercio Local" /></span>
					
						<span class="property-value" aria-labelledby="outroComercioLocal-label"><g:fieldValue bean="${aspectoProdutivoAgroIndustrializadoInstance}" field="outroComercioLocal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.outroComercioMun}">
				<li class="fieldcontain">
					<span id="outroComercioMun-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.outroComercioMun.label" default="Outro Comercio Mun" /></span>
					
						<span class="property-value" aria-labelledby="outroComercioMun-label"><g:fieldValue bean="${aspectoProdutivoAgroIndustrializadoInstance}" field="outroComercioMun"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.outroProdAgroInd}">
				<li class="fieldcontain">
					<span id="outroProdAgroInd-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.outroProdAgroInd.label" default="Outro Prod Agro Ind" /></span>
					
						<span class="property-value" aria-labelledby="outroProdAgroInd-label"><g:fieldValue bean="${aspectoProdutivoAgroIndustrializadoInstance}" field="outroProdAgroInd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.polvilho}">
				<li class="fieldcontain">
					<span id="polvilho-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.polvilho.label" default="Polvilho" /></span>
					
						<span class="property-value" aria-labelledby="polvilho-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.polvilho}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.queijos}">
				<li class="fieldcontain">
					<span id="queijos-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.queijos.label" default="Queijos" /></span>
					
						<span class="property-value" aria-labelledby="queijos-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.queijos}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.rapadura}">
				<li class="fieldcontain">
					<span id="rapadura-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.rapadura.label" default="Rapadura" /></span>
					
						<span class="property-value" aria-labelledby="rapadura-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.rapadura}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.rianapolis}">
				<li class="fieldcontain">
					<span id="rianapolis-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.rianapolis.label" default="Rianapolis" /></span>
					
						<span class="property-value" aria-labelledby="rianapolis-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.rianapolis}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.staIsabel}">
				<li class="fieldcontain">
					<span id="staIsabel-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.staIsabel.label" default="Sta Isabel" /></span>
					
						<span class="property-value" aria-labelledby="staIsabel-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.staIsabel}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.supermercado}">
				<li class="fieldcontain">
					<span id="supermercado-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.supermercado.label" default="Supermercado" /></span>
					
						<span class="property-value" aria-labelledby="supermercado-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.supermercado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoAgroIndustrializadoInstance?.vizinho}">
				<li class="fieldcontain">
					<span id="vizinho-label" class="property-label"><g:message code="aspectoProdutivoAgroIndustrializado.vizinho.label" default="Vizinho" /></span>
					
						<span class="property-value" aria-labelledby="vizinho-label"><g:formatBoolean boolean="${aspectoProdutivoAgroIndustrializadoInstance?.vizinho}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${aspectoProdutivoAgroIndustrializadoInstance?.id}" />
					<g:link class="edit" action="edit" id="${aspectoProdutivoAgroIndustrializadoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
