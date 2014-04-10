
<%@ page import="br.com.cerradovivo.AspectoEconomico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoEconomico.label', default: 'AspectoEconomico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aspectoEconomico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aspectoEconomico" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aspectoEconomico">
			
				<g:if test="${aspectoEconomicoInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="aspectoEconomico.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${aspectoEconomicoInstance?.propriedade?.id}">${aspectoEconomicoInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.qtdSalMin2007}">
				<li class="fieldcontain">
					<span id="qtdSalMin2007-label" class="property-label"><g:message code="aspectoEconomico.qtdSalMin2007.label" default="Qtd Sal Min2007" /></span>
					
						<span class="property-value" aria-labelledby="qtdSalMin2007-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="qtdSalMin2007"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.qtdSalMin2008}">
				<li class="fieldcontain">
					<span id="qtdSalMin2008-label" class="property-label"><g:message code="aspectoEconomico.qtdSalMin2008.label" default="Qtd Sal Min2008" /></span>
					
						<span class="property-value" aria-labelledby="qtdSalMin2008-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="qtdSalMin2008"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.qtdSalMin2009}">
				<li class="fieldcontain">
					<span id="qtdSalMin2009-label" class="property-label"><g:message code="aspectoEconomico.qtdSalMin2009.label" default="Qtd Sal Min2009" /></span>
					
						<span class="property-value" aria-labelledby="qtdSalMin2009-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="qtdSalMin2009"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.qtdSalMin2010}">
				<li class="fieldcontain">
					<span id="qtdSalMin2010-label" class="property-label"><g:message code="aspectoEconomico.qtdSalMin2010.label" default="Qtd Sal Min2010" /></span>
					
						<span class="property-value" aria-labelledby="qtdSalMin2010-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="qtdSalMin2010"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.qtdSalMin2011}">
				<li class="fieldcontain">
					<span id="qtdSalMin2011-label" class="property-label"><g:message code="aspectoEconomico.qtdSalMin2011.label" default="Qtd Sal Min2011" /></span>
					
						<span class="property-value" aria-labelledby="qtdSalMin2011-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="qtdSalMin2011"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.qtdSalMin2012}">
				<li class="fieldcontain">
					<span id="qtdSalMin2012-label" class="property-label"><g:message code="aspectoEconomico.qtdSalMin2012.label" default="Qtd Sal Min2012" /></span>
					
						<span class="property-value" aria-labelledby="qtdSalMin2012-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="qtdSalMin2012"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.bolsaFamilia}">
				<li class="fieldcontain">
					<span id="bolsaFamilia-label" class="property-label"><g:message code="aspectoEconomico.bolsaFamilia.label" default="Bolsa Familia" /></span>
					
						<span class="property-value" aria-labelledby="bolsaFamilia-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.bolsaFamilia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.aposentadoria}">
				<li class="fieldcontain">
					<span id="aposentadoria-label" class="property-label"><g:message code="aspectoEconomico.aposentadoria.label" default="Aposentadoria" /></span>
					
						<span class="property-value" aria-labelledby="aposentadoria-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.aposentadoria}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.pensao}">
				<li class="fieldcontain">
					<span id="pensao-label" class="property-label"><g:message code="aspectoEconomico.pensao.label" default="Pensao" /></span>
					
						<span class="property-value" aria-labelledby="pensao-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.pensao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.outroBeneficio}">
				<li class="fieldcontain">
					<span id="outroBeneficio-label" class="property-label"><g:message code="aspectoEconomico.outroBeneficio.label" default="Outro Beneficio" /></span>
					
						<span class="property-value" aria-labelledby="outroBeneficio-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="outroBeneficio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.rendaDaPropriedade}">
				<li class="fieldcontain">
					<span id="rendaDaPropriedade-label" class="property-label"><g:message code="aspectoEconomico.rendaDaPropriedade.label" default="Renda Da Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="rendaDaPropriedade-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="rendaDaPropriedade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.suino}">
				<li class="fieldcontain">
					<span id="suino-label" class="property-label"><g:message code="aspectoEconomico.suino.label" default="Suino" /></span>
					
						<span class="property-value" aria-labelledby="suino-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.suino}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.bovinoCorte}">
				<li class="fieldcontain">
					<span id="bovinoCorte-label" class="property-label"><g:message code="aspectoEconomico.bovinoCorte.label" default="Bovino Corte" /></span>
					
						<span class="property-value" aria-labelledby="bovinoCorte-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.bovinoCorte}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.leite}">
				<li class="fieldcontain">
					<span id="leite-label" class="property-label"><g:message code="aspectoEconomico.leite.label" default="Leite" /></span>
					
						<span class="property-value" aria-labelledby="leite-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.leite}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.aves}">
				<li class="fieldcontain">
					<span id="aves-label" class="property-label"><g:message code="aspectoEconomico.aves.label" default="Aves" /></span>
					
						<span class="property-value" aria-labelledby="aves-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.aves}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.pecuariaOutro}">
				<li class="fieldcontain">
					<span id="pecuariaOutro-label" class="property-label"><g:message code="aspectoEconomico.pecuariaOutro.label" default="Pecuaria Outro" /></span>
					
						<span class="property-value" aria-labelledby="pecuariaOutro-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="pecuariaOutro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.culturaAnual}">
				<li class="fieldcontain">
					<span id="culturaAnual-label" class="property-label"><g:message code="aspectoEconomico.culturaAnual.label" default="Cultura Anual" /></span>
					
						<span class="property-value" aria-labelledby="culturaAnual-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.culturaAnual}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.hortalica}">
				<li class="fieldcontain">
					<span id="hortalica-label" class="property-label"><g:message code="aspectoEconomico.hortalica.label" default="Hortalica" /></span>
					
						<span class="property-value" aria-labelledby="hortalica-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.hortalica}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.fruticultura}">
				<li class="fieldcontain">
					<span id="fruticultura-label" class="property-label"><g:message code="aspectoEconomico.fruticultura.label" default="Fruticultura" /></span>
					
						<span class="property-value" aria-labelledby="fruticultura-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.fruticultura}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.agriculturaOutro}">
				<li class="fieldcontain">
					<span id="agriculturaOutro-label" class="property-label"><g:message code="aspectoEconomico.agriculturaOutro.label" default="Agricultura Outro" /></span>
					
						<span class="property-value" aria-labelledby="agriculturaOutro-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="agriculturaOutro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.arrendamento}">
				<li class="fieldcontain">
					<span id="arrendamento-label" class="property-label"><g:message code="aspectoEconomico.arrendamento.label" default="Arrendamento" /></span>
					
						<span class="property-value" aria-labelledby="arrendamento-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.arrendamento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.trabalhoExterno}">
				<li class="fieldcontain">
					<span id="trabalhoExterno-label" class="property-label"><g:message code="aspectoEconomico.trabalhoExterno.label" default="Trabalho Externo" /></span>
					
						<span class="property-value" aria-labelledby="trabalhoExterno-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.trabalhoExterno}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.aluguelPasto}">
				<li class="fieldcontain">
					<span id="aluguelPasto-label" class="property-label"><g:message code="aspectoEconomico.aluguelPasto.label" default="Aluguel Pasto" /></span>
					
						<span class="property-value" aria-labelledby="aluguelPasto-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.aluguelPasto}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.programaSocial}">
				<li class="fieldcontain">
					<span id="programaSocial-label" class="property-label"><g:message code="aspectoEconomico.programaSocial.label" default="Programa Social" /></span>
					
						<span class="property-value" aria-labelledby="programaSocial-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.programaSocial}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.ajudaFamiliar}">
				<li class="fieldcontain">
					<span id="ajudaFamiliar-label" class="property-label"><g:message code="aspectoEconomico.ajudaFamiliar.label" default="Ajuda Familiar" /></span>
					
						<span class="property-value" aria-labelledby="ajudaFamiliar-label"><g:formatBoolean boolean="${aspectoEconomicoInstance?.ajudaFamiliar}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.outro}">
				<li class="fieldcontain">
					<span id="outro-label" class="property-label"><g:message code="aspectoEconomico.outro.label" default="Outro" /></span>
					
						<span class="property-value" aria-labelledby="outro-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="outro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.empreitadaAssentamento}">
				<li class="fieldcontain">
					<span id="empreitadaAssentamento-label" class="property-label"><g:message code="aspectoEconomico.empreitadaAssentamento.label" default="Empreitada Assentamento" /></span>
					
						<span class="property-value" aria-labelledby="empreitadaAssentamento-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="empreitadaAssentamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.diarista}">
				<li class="fieldcontain">
					<span id="diarista-label" class="property-label"><g:message code="aspectoEconomico.diarista.label" default="Diarista" /></span>
					
						<span class="property-value" aria-labelledby="diarista-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="diarista"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.intermediacao}">
				<li class="fieldcontain">
					<span id="intermediacao-label" class="property-label"><g:message code="aspectoEconomico.intermediacao.label" default="Intermediacao" /></span>
					
						<span class="property-value" aria-labelledby="intermediacao-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="intermediacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.safrista}">
				<li class="fieldcontain">
					<span id="safrista-label" class="property-label"><g:message code="aspectoEconomico.safrista.label" default="Safrista" /></span>
					
						<span class="property-value" aria-labelledby="safrista-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="safrista"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.assalariada}">
				<li class="fieldcontain">
					<span id="assalariada-label" class="property-label"><g:message code="aspectoEconomico.assalariada.label" default="Assalariada" /></span>
					
						<span class="property-value" aria-labelledby="assalariada-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="assalariada"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.outroaAtv}">
				<li class="fieldcontain">
					<span id="outroaAtv-label" class="property-label"><g:message code="aspectoEconomico.outroaAtv.label" default="Outroa Atv" /></span>
					
						<span class="property-value" aria-labelledby="outroaAtv-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="outroaAtv"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.outroaAtvForaOuDentro}">
				<li class="fieldcontain">
					<span id="outroaAtvForaOuDentro-label" class="property-label"><g:message code="aspectoEconomico.outroaAtvForaOuDentro.label" default="Outroa Atv Fora Ou Dentro" /></span>
					
						<span class="property-value" aria-labelledby="outroaAtvForaOuDentro-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="outroaAtvForaOuDentro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.artesanato}">
				<li class="fieldcontain">
					<span id="artesanato-label" class="property-label"><g:message code="aspectoEconomico.artesanato.label" default="Artesanato" /></span>
					
						<span class="property-value" aria-labelledby="artesanato-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="artesanato"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.corte}">
				<li class="fieldcontain">
					<span id="corte-label" class="property-label"><g:message code="aspectoEconomico.corte.label" default="Corte" /></span>
					
						<span class="property-value" aria-labelledby="corte-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="corte"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.comercioNaoAgricola}">
				<li class="fieldcontain">
					<span id="comercioNaoAgricola-label" class="property-label"><g:message code="aspectoEconomico.comercioNaoAgricola.label" default="Comercio Nao Agricola" /></span>
					
						<span class="property-value" aria-labelledby="comercioNaoAgricola-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="comercioNaoAgricola"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.servicoNaoAgricola}">
				<li class="fieldcontain">
					<span id="servicoNaoAgricola-label" class="property-label"><g:message code="aspectoEconomico.servicoNaoAgricola.label" default="Servico Nao Agricola" /></span>
					
						<span class="property-value" aria-labelledby="servicoNaoAgricola-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="servicoNaoAgricola"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.outroServico}">
				<li class="fieldcontain">
					<span id="outroServico-label" class="property-label"><g:message code="aspectoEconomico.outroServico.label" default="Outro Servico" /></span>
					
						<span class="property-value" aria-labelledby="outroServico-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="outroServico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.outroSerForaOuDentro}">
				<li class="fieldcontain">
					<span id="outroSerForaOuDentro-label" class="property-label"><g:message code="aspectoEconomico.outroSerForaOuDentro.label" default="Outro Ser Fora Ou Dentro" /></span>
					
						<span class="property-value" aria-labelledby="outroSerForaOuDentro-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="outroSerForaOuDentro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.creditoInst}">
				<li class="fieldcontain">
					<span id="creditoInst-label" class="property-label"><g:message code="aspectoEconomico.creditoInst.label" default="Credito Inst" /></span>
					
						<span class="property-value" aria-labelledby="creditoInst-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="creditoInst"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.valorCredInst}">
				<li class="fieldcontain">
					<span id="valorCredInst-label" class="property-label"><g:message code="aspectoEconomico.valorCredInst.label" default="Valor Cred Inst" /></span>
					
						<span class="property-value" aria-labelledby="valorCredInst-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="valorCredInst"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.creditoMaterial}">
				<li class="fieldcontain">
					<span id="creditoMaterial-label" class="property-label"><g:message code="aspectoEconomico.creditoMaterial.label" default="Credito Material" /></span>
					
						<span class="property-value" aria-labelledby="creditoMaterial-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="creditoMaterial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.valorMaterial}">
				<li class="fieldcontain">
					<span id="valorMaterial-label" class="property-label"><g:message code="aspectoEconomico.valorMaterial.label" default="Valor Material" /></span>
					
						<span class="property-value" aria-labelledby="valorMaterial-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="valorMaterial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.pronaf}">
				<li class="fieldcontain">
					<span id="pronaf-label" class="property-label"><g:message code="aspectoEconomico.pronaf.label" default="Pronaf" /></span>
					
						<span class="property-value" aria-labelledby="pronaf-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="pronaf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.valorPronaf}">
				<li class="fieldcontain">
					<span id="valorPronaf-label" class="property-label"><g:message code="aspectoEconomico.valorPronaf.label" default="Valor Pronaf" /></span>
					
						<span class="property-value" aria-labelledby="valorPronaf-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="valorPronaf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.creditoCompraGado}">
				<li class="fieldcontain">
					<span id="creditoCompraGado-label" class="property-label"><g:message code="aspectoEconomico.creditoCompraGado.label" default="Credito Compra Gado" /></span>
					
						<span class="property-value" aria-labelledby="creditoCompraGado-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="creditoCompraGado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoEconomicoInstance?.valorCompraGado}">
				<li class="fieldcontain">
					<span id="valorCompraGado-label" class="property-label"><g:message code="aspectoEconomico.valorCompraGado.label" default="Valor Compra Gado" /></span>
					
						<span class="property-value" aria-labelledby="valorCompraGado-label"><g:fieldValue bean="${aspectoEconomicoInstance}" field="valorCompraGado"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${aspectoEconomicoInstance?.id}" />
					<g:link class="edit" action="edit" id="${aspectoEconomicoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
