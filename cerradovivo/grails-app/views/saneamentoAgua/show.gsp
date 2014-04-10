
<%@ page import="br.com.cerradovivo.SaneamentoAgua" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'saneamentoAgua.label', default: 'SaneamentoAgua')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-saneamentoAgua" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-saneamentoAgua" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list saneamentoAgua">
			
				<g:if test="${saneamentoAguaInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="saneamentoAgua.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${saneamentoAguaInstance?.propriedade?.id}">${saneamentoAguaInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${saneamentoAguaInstance?.corrego}">
				<li class="fieldcontain">
					<span id="corrego-label" class="property-label"><g:message code="saneamentoAgua.corrego.label" default="Córrego" /></span>
					
						<span class="property-value" aria-labelledby="corrego-label"><g:fieldValue bean="${saneamentoAguaInstance}" field="corrego"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${saneamentoAguaInstance?.nascente}">
				<li class="fieldcontain">
					<span id="nascente-label" class="property-label"><g:message code="saneamentoAgua.nascente.label" default="Nascente" /></span>
					
						<span class="property-value" aria-labelledby="nascente-label"><g:fieldValue bean="${saneamentoAguaInstance}" field="nascente"/></span>
					
				</li>
				</g:if>


				<g:if test="${saneamentoAguaInstance?.cisterna}">
				<li class="fieldcontain">
					<span id="cisterna-label" class="property-label"><g:message code="saneamentoAgua.cisterna.label" default="Cisterna" /></span>
					
						<span class="property-value" aria-labelledby="cisterna-label"><g:fieldValue bean="${saneamentoAguaInstance}" field="cisterna"/></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.rio}">
				<li class="fieldcontain">
					<span id="rio-label" class="property-label"><g:message code="saneamentoAgua.rio.label" default="Rio" /></span>
					
						<span class="property-value" aria-labelledby="rio-label"><g:fieldValue bean="${saneamentoAguaInstance}" field="rio"/></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.represa}">
				<li class="fieldcontain">
					<span id="represa-label" class="property-label"><g:message code="saneamentoAgua.represa.label" default="Represa" /></span>
					
						<span class="property-value" aria-labelledby="represa-label"><g:fieldValue bean="${saneamentoAguaInstance}" field="represa"/></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.outrasFontes}">
				<li class="fieldcontain">
					<span id="outrasFontes-label" class="property-label"><g:message code="saneamentoAgua.outrasFontes.label" default="Outras fontes" /></span>
					
						<span class="property-value" aria-labelledby="outrasFontes-label"><g:fieldValue bean="${saneamentoAguaInstance}" field="outrasFontes"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${saneamentoAguaInstance?.gravidade}">
				<li class="fieldcontain">
					<span id="gravidade-label" class="property-label"><g:message code="saneamentoAgua.gravidade.label" default="Gravidade" /></span>
					
						<span class="property-value" aria-labelledby="gravidade-label"><g:formatBoolean boolean="${saneamentoAguaInstance?.gravidade}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.bombaEletricaCisterna}">
				<li class="fieldcontain">
					<span id="bombaEletricaCisterna-label" class="property-label"><g:message code="saneamentoAgua.bombaEletricaCisterna.label" default="Bomba elétrica na cisterna" /></span>
					
						<span class="property-value" aria-labelledby="bombaEletricaCisterna-label"><g:formatBoolean boolean="${saneamentoAguaInstance?.bombaEletricaCisterna}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.bombaEletricaOutro}">
				<li class="fieldcontain">
					<span id="bombaEletricaOutro-label" class="property-label"><g:message code="saneamentoAgua.bombaEletricaOutro.label" default="Bomba elétrica no córrego, rio, nascente, e represa" /></span>
					
						<span class="property-value" aria-labelledby="bombaEletricaOutro-label"><g:formatBoolean boolean="${saneamentoAguaInstance?.bombaEletricaOutro}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.rodaDagua}">
				<li class="fieldcontain">
					<span id="rodaDagua-label" class="property-label"><g:message code="saneamentoAgua.rodaDagua.label" default="Roda d'água" /></span>
					
						<span class="property-value" aria-labelledby="rodaDagua-label"><g:formatBoolean boolean="${saneamentoAguaInstance?.rodaDagua}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.outroAbastecimento}">
				<li class="fieldcontain">
					<span id="outroAbastecimento-label" class="property-label"><g:message code="saneamentoAgua.outroAbastecimento.label" default="Outro" /></span>
					
						<span class="property-value" aria-labelledby="outroAbastecimento-label"><g:fieldValue bean="${saneamentoAguaInstance}" field="outroAbastecimento"/></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.tratamentoAgua}">
				<li class="fieldcontain">
					<span id="tratamentoAgua-label" class="property-label"><g:message code="saneamentoAgua.tratamentoAgua.label" default="Tratamento da água de consumo da residência" /></span>
					
						<span class="property-value" aria-labelledby="tratamentoAgua-label"><g:fieldValue bean="${saneamentoAguaInstance}" field="tratamentoAgua"/></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.filtrada}">
				<li class="fieldcontain">
					<span id="filtrada-label" class="property-label"><g:message code="saneamentoAgua.filtrada.label" default="Filtrada" /></span>
					
						<span class="property-value" aria-labelledby="filtrada-label"><g:formatBoolean boolean="${saneamentoAguaInstance?.filtrada}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.diretoFonte}">
				<li class="fieldcontain">
					<span id="diretoFonte-label" class="property-label"><g:message code="saneamentoAgua.diretoFonte.label" default="Direto da fonte" /></span>
					
						<span class="property-value" aria-labelledby="diretoFonte-label"><g:formatBoolean boolean="${saneamentoAguaInstance?.diretoFonte}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.coada}">
				<li class="fieldcontain">
					<span id="coada-label" class="property-label"><g:message code="saneamentoAgua.coada.label" default="Coada" /></span>
					
						<span class="property-value" aria-labelledby="coada-label"><g:formatBoolean boolean="${saneamentoAguaInstance?.coada}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.aguaSanitaria}">
				<li class="fieldcontain">
					<span id="aguaSanitaria-label" class="property-label"><g:message code="saneamentoAgua.aguaSanitaria.label" default="Tratada com água sanitária" /></span>
					
						<span class="property-value" aria-labelledby="aguaSanitaria-label"><g:formatBoolean boolean="${saneamentoAguaInstance?.aguaSanitaria}" /></span>
					
				</li>
				</g:if>


				<g:if test="${saneamentoAguaInstance?.cloro}">
				<li class="fieldcontain">
					<span id="cloro-label" class="property-label"><g:message code="saneamentoAgua.cloro.label" default="Tratada com cloro" /></span>
					
						<span class="property-value" aria-labelledby="cloro-label"><g:formatBoolean boolean="${saneamentoAguaInstance?.cloro}" /></span>
					
				</li>
				</g:if>


				<g:if test="${saneamentoAguaInstance?.fervida}">
				<li class="fieldcontain">
					<span id="fervida-label" class="property-label"><g:message code="saneamentoAgua.fervida.label" default="Fervida" /></span>
					
						<span class="property-value" aria-labelledby="fervida-label"><g:formatBoolean boolean="${saneamentoAguaInstance?.fervida}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.coadaFervida}">
				<li class="fieldcontain">
					<span id="coadaFervida-label" class="property-label"><g:message code="saneamentoAgua.coadaFervida.label" default="Coada / fervida" /></span>
					
						<span class="property-value" aria-labelledby="coadaFervida-label"><g:formatBoolean boolean="${saneamentoAguaInstance?.coadaFervida}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${saneamentoAguaInstance?.coadaFiltrada}">
				<li class="fieldcontain">
					<span id="coadaFiltrada-label" class="property-label"><g:message code="saneamentoAgua.coadaFiltrada.label" default="Coada / filtrada" /></span>
					
						<span class="property-value" aria-labelledby="coadaFiltrada-label"><g:formatBoolean boolean="${saneamentoAguaInstance?.coadaFiltrada}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoAguaInstance?.outroTratamento}">
				<li class="fieldcontain">
					<span id="outroTratamento-label" class="property-label"><g:message code="saneamentoAgua.outroTratamento.label" default="Outro" /></span>
					
						<span class="property-value" aria-labelledby="outroTratamento-label"><g:fieldValue bean="${saneamentoAguaInstance}" field="outroTratamento"/></span>
					
				</li>
				</g:if>			
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${saneamentoAguaInstance?.id}" />
					<g:link class="edit" action="edit" id="${saneamentoAguaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
