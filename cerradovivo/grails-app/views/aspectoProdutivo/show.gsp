
<%@ page import="br.com.cerradovivo.AspectoProdutivo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoProdutivo.label', default: 'AspectoProdutivo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aspectoProdutivo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aspectoProdutivo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aspectoProdutivo">
			
				<g:if test="${aspectoProdutivoInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="aspectoProdutivo.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${aspectoProdutivoInstance?.propriedade?.id}">${aspectoProdutivoInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.pastagemNatural}">
				<li class="fieldcontain">
					<span id="pastagemNatural-label" class="property-label"><g:message code="aspectoProdutivo.pastagemNatural.label" default="Pastagem Natural" /></span>
					
						<span class="property-value" aria-labelledby="pastagemNatural-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.pastagemNatural}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaPastagemNatural}">
				<li class="fieldcontain">
					<span id="areaPastagemNatural-label" class="property-label"><g:message code="aspectoProdutivo.areaPastagemNatural.label" default="Area Pastagem Natural" /></span>
					
						<span class="property-value" aria-labelledby="areaPastagemNatural-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaPastagemNatural"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.pastagemCultivada}">
				<li class="fieldcontain">
					<span id="pastagemCultivada-label" class="property-label"><g:message code="aspectoProdutivo.pastagemCultivada.label" default="Pastagem Cultivada" /></span>
					
						<span class="property-value" aria-labelledby="pastagemCultivada-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.pastagemCultivada}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaPastagemCultivada}">
				<li class="fieldcontain">
					<span id="areaPastagemCultivada-label" class="property-label"><g:message code="aspectoProdutivo.areaPastagemCultivada.label" default="Area Pastagem Cultivada" /></span>
					
						<span class="property-value" aria-labelledby="areaPastagemCultivada-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaPastagemCultivada"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.lavoraTemporaria}">
				<li class="fieldcontain">
					<span id="lavoraTemporaria-label" class="property-label"><g:message code="aspectoProdutivo.lavoraTemporaria.label" default="Lavora Temporaria" /></span>
					
						<span class="property-value" aria-labelledby="lavoraTemporaria-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.lavoraTemporaria}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaLavoraTemporaria}">
				<li class="fieldcontain">
					<span id="areaLavoraTemporaria-label" class="property-label"><g:message code="aspectoProdutivo.areaLavoraTemporaria.label" default="Area Lavora Temporaria" /></span>
					
						<span class="property-value" aria-labelledby="areaLavoraTemporaria-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaLavoraTemporaria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.carpineiraCanavial}">
				<li class="fieldcontain">
					<span id="carpineiraCanavial-label" class="property-label"><g:message code="aspectoProdutivo.carpineiraCanavial.label" default="Carpineira Canavial" /></span>
					
						<span class="property-value" aria-labelledby="carpineiraCanavial-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.carpineiraCanavial}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaCarpineiraCanavial}">
				<li class="fieldcontain">
					<span id="areaCarpineiraCanavial-label" class="property-label"><g:message code="aspectoProdutivo.areaCarpineiraCanavial.label" default="Area Carpineira Canavial" /></span>
					
						<span class="property-value" aria-labelledby="areaCarpineiraCanavial-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaCarpineiraCanavial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.apps}">
				<li class="fieldcontain">
					<span id="apps-label" class="property-label"><g:message code="aspectoProdutivo.apps.label" default="Apps" /></span>
					
						<span class="property-value" aria-labelledby="apps-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.apps}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaApps}">
				<li class="fieldcontain">
					<span id="areaApps-label" class="property-label"><g:message code="aspectoProdutivo.areaApps.label" default="Area Apps" /></span>
					
						<span class="property-value" aria-labelledby="areaApps-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaApps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.mata}">
				<li class="fieldcontain">
					<span id="mata-label" class="property-label"><g:message code="aspectoProdutivo.mata.label" default="Mata" /></span>
					
						<span class="property-value" aria-labelledby="mata-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.mata}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaMata}">
				<li class="fieldcontain">
					<span id="areaMata-label" class="property-label"><g:message code="aspectoProdutivo.areaMata.label" default="Area Mata" /></span>
					
						<span class="property-value" aria-labelledby="areaMata-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaMata"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.capoeira}">
				<li class="fieldcontain">
					<span id="capoeira-label" class="property-label"><g:message code="aspectoProdutivo.capoeira.label" default="Capoeira" /></span>
					
						<span class="property-value" aria-labelledby="capoeira-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.capoeira}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaCapoeira}">
				<li class="fieldcontain">
					<span id="areaCapoeira-label" class="property-label"><g:message code="aspectoProdutivo.areaCapoeira.label" default="Area Capoeira" /></span>
					
						<span class="property-value" aria-labelledby="areaCapoeira-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaCapoeira"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.silvicultura}">
				<li class="fieldcontain">
					<span id="silvicultura-label" class="property-label"><g:message code="aspectoProdutivo.silvicultura.label" default="Silvicultura" /></span>
					
						<span class="property-value" aria-labelledby="silvicultura-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="silvicultura"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaSilvicultura}">
				<li class="fieldcontain">
					<span id="areaSilvicultura-label" class="property-label"><g:message code="aspectoProdutivo.areaSilvicultura.label" default="Area Silvicultura" /></span>
					
						<span class="property-value" aria-labelledby="areaSilvicultura-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaSilvicultura"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.fruticultura}">
				<li class="fieldcontain">
					<span id="fruticultura-label" class="property-label"><g:message code="aspectoProdutivo.fruticultura.label" default="Fruticultura" /></span>
					
						<span class="property-value" aria-labelledby="fruticultura-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.fruticultura}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaFruticultura}">
				<li class="fieldcontain">
					<span id="areaFruticultura-label" class="property-label"><g:message code="aspectoProdutivo.areaFruticultura.label" default="Area Fruticultura" /></span>
					
						<span class="property-value" aria-labelledby="areaFruticultura-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaFruticultura"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.outroCoberturaVegetal}">
				<li class="fieldcontain">
					<span id="outroCoberturaVegetal-label" class="property-label"><g:message code="aspectoProdutivo.outroCoberturaVegetal.label" default="Outro Cobertura Vegetal" /></span>
					
						<span class="property-value" aria-labelledby="outroCoberturaVegetal-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="outroCoberturaVegetal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaOutraCobVeg}">
				<li class="fieldcontain">
					<span id="areaOutraCobVeg-label" class="property-label"><g:message code="aspectoProdutivo.areaOutraCobVeg.label" default="Area Outra Cob Veg" /></span>
					
						<span class="property-value" aria-labelledby="areaOutraCobVeg-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaOutraCobVeg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.cultura}">
				<li class="fieldcontain">
					<span id="cultura-label" class="property-label"><g:message code="aspectoProdutivo.cultura.label" default="Cultura" /></span>
					
						<span class="property-value" aria-labelledby="cultura-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.cultura}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaCultura}">
				<li class="fieldcontain">
					<span id="areaCultura-label" class="property-label"><g:message code="aspectoProdutivo.areaCultura.label" default="Area Cultura" /></span>
					
						<span class="property-value" aria-labelledby="areaCultura-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaCultura"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.chaoVermelho}">
				<li class="fieldcontain">
					<span id="chaoVermelho-label" class="property-label"><g:message code="aspectoProdutivo.chaoVermelho.label" default="Chao Vermelho" /></span>
					
						<span class="property-value" aria-labelledby="chaoVermelho-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.chaoVermelho}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaChaoVermelha}">
				<li class="fieldcontain">
					<span id="areaChaoVermelha-label" class="property-label"><g:message code="aspectoProdutivo.areaChaoVermelha.label" default="Area Chao Vermelha" /></span>
					
						<span class="property-value" aria-labelledby="areaChaoVermelha-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaChaoVermelha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.chaoAmarelo}">
				<li class="fieldcontain">
					<span id="chaoAmarelo-label" class="property-label"><g:message code="aspectoProdutivo.chaoAmarelo.label" default="Chao Amarelo" /></span>
					
						<span class="property-value" aria-labelledby="chaoAmarelo-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.chaoAmarelo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaChaoAmarelo}">
				<li class="fieldcontain">
					<span id="areaChaoAmarelo-label" class="property-label"><g:message code="aspectoProdutivo.areaChaoAmarelo.label" default="Area Chao Amarelo" /></span>
					
						<span class="property-value" aria-labelledby="areaChaoAmarelo-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaChaoAmarelo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.argiloso}">
				<li class="fieldcontain">
					<span id="argiloso-label" class="property-label"><g:message code="aspectoProdutivo.argiloso.label" default="Argiloso" /></span>
					
						<span class="property-value" aria-labelledby="argiloso-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.argiloso}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaArgiloso}">
				<li class="fieldcontain">
					<span id="areaArgiloso-label" class="property-label"><g:message code="aspectoProdutivo.areaArgiloso.label" default="Area Argiloso" /></span>
					
						<span class="property-value" aria-labelledby="areaArgiloso-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaArgiloso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.arenoArgiloso}">
				<li class="fieldcontain">
					<span id="arenoArgiloso-label" class="property-label"><g:message code="aspectoProdutivo.arenoArgiloso.label" default="Areno Argiloso" /></span>
					
						<span class="property-value" aria-labelledby="arenoArgiloso-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.arenoArgiloso}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaArenoArgiloso}">
				<li class="fieldcontain">
					<span id="areaArenoArgiloso-label" class="property-label"><g:message code="aspectoProdutivo.areaArenoArgiloso.label" default="Area Areno Argiloso" /></span>
					
						<span class="property-value" aria-labelledby="areaArenoArgiloso-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaArenoArgiloso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.pedregoso}">
				<li class="fieldcontain">
					<span id="pedregoso-label" class="property-label"><g:message code="aspectoProdutivo.pedregoso.label" default="Pedregoso" /></span>
					
						<span class="property-value" aria-labelledby="pedregoso-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.pedregoso}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaPedregoso}">
				<li class="fieldcontain">
					<span id="areaPedregoso-label" class="property-label"><g:message code="aspectoProdutivo.areaPedregoso.label" default="Area Pedregoso" /></span>
					
						<span class="property-value" aria-labelledby="areaPedregoso-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaPedregoso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.outroTipoSolo}">
				<li class="fieldcontain">
					<span id="outroTipoSolo-label" class="property-label"><g:message code="aspectoProdutivo.outroTipoSolo.label" default="Outro Tipo Solo" /></span>
					
						<span class="property-value" aria-labelledby="outroTipoSolo-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="outroTipoSolo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaOutroTipoSolo}">
				<li class="fieldcontain">
					<span id="areaOutroTipoSolo-label" class="property-label"><g:message code="aspectoProdutivo.areaOutroTipoSolo.label" default="Area Outro Tipo Solo" /></span>
					
						<span class="property-value" aria-labelledby="areaOutroTipoSolo-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaOutroTipoSolo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.planoSuave}">
				<li class="fieldcontain">
					<span id="planoSuave-label" class="property-label"><g:message code="aspectoProdutivo.planoSuave.label" default="Plano Suave" /></span>
					
						<span class="property-value" aria-labelledby="planoSuave-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.planoSuave}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaPlanoSuave}">
				<li class="fieldcontain">
					<span id="areaPlanoSuave-label" class="property-label"><g:message code="aspectoProdutivo.areaPlanoSuave.label" default="Area Plano Suave" /></span>
					
						<span class="property-value" aria-labelledby="areaPlanoSuave-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaPlanoSuave"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.ondulado}">
				<li class="fieldcontain">
					<span id="ondulado-label" class="property-label"><g:message code="aspectoProdutivo.ondulado.label" default="Ondulado" /></span>
					
						<span class="property-value" aria-labelledby="ondulado-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.ondulado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaOndulado}">
				<li class="fieldcontain">
					<span id="areaOndulado-label" class="property-label"><g:message code="aspectoProdutivo.areaOndulado.label" default="Area Ondulado" /></span>
					
						<span class="property-value" aria-labelledby="areaOndulado-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaOndulado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.forteOndulado}">
				<li class="fieldcontain">
					<span id="forteOndulado-label" class="property-label"><g:message code="aspectoProdutivo.forteOndulado.label" default="Forte Ondulado" /></span>
					
						<span class="property-value" aria-labelledby="forteOndulado-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.forteOndulado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaForteOndulado}">
				<li class="fieldcontain">
					<span id="areaForteOndulado-label" class="property-label"><g:message code="aspectoProdutivo.areaForteOndulado.label" default="Area Forte Ondulado" /></span>
					
						<span class="property-value" aria-labelledby="areaForteOndulado-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaForteOndulado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.montanhoso}">
				<li class="fieldcontain">
					<span id="montanhoso-label" class="property-label"><g:message code="aspectoProdutivo.montanhoso.label" default="Montanhoso" /></span>
					
						<span class="property-value" aria-labelledby="montanhoso-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.montanhoso}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.areaMontanhoso}">
				<li class="fieldcontain">
					<span id="areaMontanhoso-label" class="property-label"><g:message code="aspectoProdutivo.areaMontanhoso.label" default="Area Montanhoso" /></span>
					
						<span class="property-value" aria-labelledby="areaMontanhoso-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="areaMontanhoso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.curral}">
				<li class="fieldcontain">
					<span id="curral-label" class="property-label"><g:message code="aspectoProdutivo.curral.label" default="Curral" /></span>
					
						<span class="property-value" aria-labelledby="curral-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.curral}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.mangueiro}">
				<li class="fieldcontain">
					<span id="mangueiro-label" class="property-label"><g:message code="aspectoProdutivo.mangueiro.label" default="Mangueiro" /></span>
					
						<span class="property-value" aria-labelledby="mangueiro-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.mangueiro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.estabulo}">
				<li class="fieldcontain">
					<span id="estabulo-label" class="property-label"><g:message code="aspectoProdutivo.estabulo.label" default="Estabulo" /></span>
					
						<span class="property-value" aria-labelledby="estabulo-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.estabulo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.cerca}">
				<li class="fieldcontain">
					<span id="cerca-label" class="property-label"><g:message code="aspectoProdutivo.cerca.label" default="Cerca" /></span>
					
						<span class="property-value" aria-labelledby="cerca-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.cerca}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.paiol}">
				<li class="fieldcontain">
					<span id="paiol-label" class="property-label"><g:message code="aspectoProdutivo.paiol.label" default="Paiol" /></span>
					
						<span class="property-value" aria-labelledby="paiol-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.paiol}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.chiqueiroPocilga}">
				<li class="fieldcontain">
					<span id="chiqueiroPocilga-label" class="property-label"><g:message code="aspectoProdutivo.chiqueiroPocilga.label" default="Chiqueiro Pocilga" /></span>
					
						<span class="property-value" aria-labelledby="chiqueiroPocilga-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.chiqueiroPocilga}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.silo}">
				<li class="fieldcontain">
					<span id="silo-label" class="property-label"><g:message code="aspectoProdutivo.silo.label" default="Silo" /></span>
					
						<span class="property-value" aria-labelledby="silo-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.silo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.acude}">
				<li class="fieldcontain">
					<span id="acude-label" class="property-label"><g:message code="aspectoProdutivo.acude.label" default="Acude" /></span>
					
						<span class="property-value" aria-labelledby="acude-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.acude}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.apiario}">
				<li class="fieldcontain">
					<span id="apiario-label" class="property-label"><g:message code="aspectoProdutivo.apiario.label" default="Apiario" /></span>
					
						<span class="property-value" aria-labelledby="apiario-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.apiario}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.tanquePiscicultua}">
				<li class="fieldcontain">
					<span id="tanquePiscicultua-label" class="property-label"><g:message code="aspectoProdutivo.tanquePiscicultua.label" default="Tanque Piscicultua" /></span>
					
						<span class="property-value" aria-labelledby="tanquePiscicultua-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.tanquePiscicultua}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.poco}">
				<li class="fieldcontain">
					<span id="poco-label" class="property-label"><g:message code="aspectoProdutivo.poco.label" default="Poco" /></span>
					
						<span class="property-value" aria-labelledby="poco-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.poco}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.galpao}">
				<li class="fieldcontain">
					<span id="galpao-label" class="property-label"><g:message code="aspectoProdutivo.galpao.label" default="Galpao" /></span>
					
						<span class="property-value" aria-labelledby="galpao-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.galpao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.caixaDagua}">
				<li class="fieldcontain">
					<span id="caixaDagua-label" class="property-label"><g:message code="aspectoProdutivo.caixaDagua.label" default="Caixa Dagua" /></span>
					
						<span class="property-value" aria-labelledby="caixaDagua-label"><g:formatBoolean boolean="${aspectoProdutivoInstance?.caixaDagua}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoInstance?.outraInstalacaoProd}">
				<li class="fieldcontain">
					<span id="outraInstalacaoProd-label" class="property-label"><g:message code="aspectoProdutivo.outraInstalacaoProd.label" default="Outra Instalacao Prod" /></span>
					
						<span class="property-value" aria-labelledby="outraInstalacaoProd-label"><g:fieldValue bean="${aspectoProdutivoInstance}" field="outraInstalacaoProd"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${aspectoProdutivoInstance?.id}" />
					<g:link class="edit" action="edit" id="${aspectoProdutivoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
