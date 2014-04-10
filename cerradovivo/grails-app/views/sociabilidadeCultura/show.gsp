
<%@ page import="br.com.cerradovivo.SociabilidadeCultura" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sociabilidadeCultura.label', default: 'SociabilidadeCultura')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sociabilidadeCultura" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sociabilidadeCultura" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sociabilidadeCultura">
			
				<g:if test="${sociabilidadeCulturaInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="sociabilidadeCultura.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${sociabilidadeCulturaInstance?.propriedade?.id}">${sociabilidadeCulturaInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.associacaoProdutores}">
				<li class="fieldcontain">
					<span id="associacaoProdutores-label" class="property-label"><g:message code="sociabilidadeCultura.associacaoProdutores.label" default="Associacao Produtores" /></span>
					
						<span class="property-value" aria-labelledby="associacaoProdutores-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="associacaoProdutores"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.cooperativaProdutores}">
				<li class="fieldcontain">
					<span id="cooperativaProdutores-label" class="property-label"><g:message code="sociabilidadeCultura.cooperativaProdutores.label" default="Cooperativa Produtores" /></span>
					
						<span class="property-value" aria-labelledby="cooperativaProdutores-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="cooperativaProdutores"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.sindicato}">
				<li class="fieldcontain">
					<span id="sindicato-label" class="property-label"><g:message code="sociabilidadeCultura.sindicato.label" default="Sindicato" /></span>
					
						<span class="property-value" aria-labelledby="sindicato-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="sindicato"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.partido}">
				<li class="fieldcontain">
					<span id="partido-label" class="property-label"><g:message code="sociabilidadeCultura.partido.label" default="Partido" /></span>
					
						<span class="property-value" aria-labelledby="partido-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="partido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.pastoral}">
				<li class="fieldcontain">
					<span id="pastoral-label" class="property-label"><g:message code="sociabilidadeCultura.pastoral.label" default="Pastoral" /></span>
					
						<span class="property-value" aria-labelledby="pastoral-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="pastoral"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.outrasAssociacoes}">
				<li class="fieldcontain">
					<span id="outrasAssociacoes-label" class="property-label"><g:message code="sociabilidadeCultura.outrasAssociacoes.label" default="Outras Associacoes" /></span>
					
						<span class="property-value" aria-labelledby="outrasAssociacoes-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="outrasAssociacoes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.nenhumaAssociacao}">
				<li class="fieldcontain">
					<span id="nenhumaAssociacao-label" class="property-label"><g:message code="sociabilidadeCultura.nenhumaAssociacao.label" default="Nenhuma Associacao" /></span>
					
						<span class="property-value" aria-labelledby="nenhumaAssociacao-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.nenhumaAssociacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.catolico}">
				<li class="fieldcontain">
					<span id="catolico-label" class="property-label"><g:message code="sociabilidadeCultura.catolico.label" default="Catolico" /></span>
					
						<span class="property-value" aria-labelledby="catolico-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.catolico}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.evangelico}">
				<li class="fieldcontain">
					<span id="evangelico-label" class="property-label"><g:message code="sociabilidadeCultura.evangelico.label" default="Evangelico" /></span>
					
						<span class="property-value" aria-labelledby="evangelico-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="evangelico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.afroBrasileiro}">
				<li class="fieldcontain">
					<span id="afroBrasileiro-label" class="property-label"><g:message code="sociabilidadeCultura.afroBrasileiro.label" default="Afro Brasileiro" /></span>
					
						<span class="property-value" aria-labelledby="afroBrasileiro-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="afroBrasileiro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.espirita}">
				<li class="fieldcontain">
					<span id="espirita-label" class="property-label"><g:message code="sociabilidadeCultura.espirita.label" default="Espirita" /></span>
					
						<span class="property-value" aria-labelledby="espirita-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.espirita}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.outraReligiao}">
				<li class="fieldcontain">
					<span id="outraReligiao-label" class="property-label"><g:message code="sociabilidadeCultura.outraReligiao.label" default="Outra Religiao" /></span>
					
						<span class="property-value" aria-labelledby="outraReligiao-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="outraReligiao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.nenhumaReligiao}">
				<li class="fieldcontain">
					<span id="nenhumaReligiao-label" class="property-label"><g:message code="sociabilidadeCultura.nenhumaReligiao.label" default="Nenhuma Religiao" /></span>
					
						<span class="property-value" aria-labelledby="nenhumaReligiao-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.nenhumaReligiao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.foliaReis}">
				<li class="fieldcontain">
					<span id="foliaReis-label" class="property-label"><g:message code="sociabilidadeCultura.foliaReis.label" default="Folia Reis" /></span>
					
						<span class="property-value" aria-labelledby="foliaReis-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.foliaReis}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.congada}">
				<li class="fieldcontain">
					<span id="congada-label" class="property-label"><g:message code="sociabilidadeCultura.congada.label" default="Congada" /></span>
					
						<span class="property-value" aria-labelledby="congada-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.congada}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.catira}">
				<li class="fieldcontain">
					<span id="catira-label" class="property-label"><g:message code="sociabilidadeCultura.catira.label" default="Catira" /></span>
					
						<span class="property-value" aria-labelledby="catira-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.catira}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.violeiros}">
				<li class="fieldcontain">
					<span id="violeiros-label" class="property-label"><g:message code="sociabilidadeCultura.violeiros.label" default="Violeiros" /></span>
					
						<span class="property-value" aria-labelledby="violeiros-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.violeiros}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.festaJunina}">
				<li class="fieldcontain">
					<span id="festaJunina-label" class="property-label"><g:message code="sociabilidadeCultura.festaJunina.label" default="Festa Junina" /></span>
					
						<span class="property-value" aria-labelledby="festaJunina-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.festaJunina}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.outraFestaRelig}">
				<li class="fieldcontain">
					<span id="outraFestaRelig-label" class="property-label"><g:message code="sociabilidadeCultura.outraFestaRelig.label" default="Outra Festa Relig" /></span>
					
						<span class="property-value" aria-labelledby="outraFestaRelig-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="outraFestaRelig"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.teatro}">
				<li class="fieldcontain">
					<span id="teatro-label" class="property-label"><g:message code="sociabilidadeCultura.teatro.label" default="Teatro" /></span>
					
						<span class="property-value" aria-labelledby="teatro-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.teatro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.cavalgada}">
				<li class="fieldcontain">
					<span id="cavalgada-label" class="property-label"><g:message code="sociabilidadeCultura.cavalgada.label" default="Cavalgada" /></span>
					
						<span class="property-value" aria-labelledby="cavalgada-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.cavalgada}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.danca}">
				<li class="fieldcontain">
					<span id="danca-label" class="property-label"><g:message code="sociabilidadeCultura.danca.label" default="Danca" /></span>
					
						<span class="property-value" aria-labelledby="danca-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.danca}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.quermesse}">
				<li class="fieldcontain">
					<span id="quermesse-label" class="property-label"><g:message code="sociabilidadeCultura.quermesse.label" default="Quermesse" /></span>
					
						<span class="property-value" aria-labelledby="quermesse-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.quermesse}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.mitica}">
				<li class="fieldcontain">
					<span id="mitica-label" class="property-label"><g:message code="sociabilidadeCultura.mitica.label" default="Mitica" /></span>
					
						<span class="property-value" aria-labelledby="mitica-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.mitica}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.outraFesta}">
				<li class="fieldcontain">
					<span id="outraFesta-label" class="property-label"><g:message code="sociabilidadeCultura.outraFesta.label" default="Outra Festa" /></span>
					
						<span class="property-value" aria-labelledby="outraFesta-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="outraFesta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.igreja}">
				<li class="fieldcontain">
					<span id="igreja-label" class="property-label"><g:message code="sociabilidadeCultura.igreja.label" default="Igreja" /></span>
					
						<span class="property-value" aria-labelledby="igreja-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.igreja}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.sedeComun}">
				<li class="fieldcontain">
					<span id="sedeComun-label" class="property-label"><g:message code="sociabilidadeCultura.sedeComun.label" default="Sede Comun" /></span>
					
						<span class="property-value" aria-labelledby="sedeComun-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.sedeComun}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.casaFamilia}">
				<li class="fieldcontain">
					<span id="casaFamilia-label" class="property-label"><g:message code="sociabilidadeCultura.casaFamilia.label" default="Casa Familia" /></span>
					
						<span class="property-value" aria-labelledby="casaFamilia-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.casaFamilia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.outraReuniao}">
				<li class="fieldcontain">
					<span id="outraReuniao-label" class="property-label"><g:message code="sociabilidadeCultura.outraReuniao.label" default="Outra Reuniao" /></span>
					
						<span class="property-value" aria-labelledby="outraReuniao-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="outraReuniao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.nenhumaReuniao}">
				<li class="fieldcontain">
					<span id="nenhumaReuniao-label" class="property-label"><g:message code="sociabilidadeCultura.nenhumaReuniao.label" default="Nenhuma Reuniao" /></span>
					
						<span class="property-value" aria-labelledby="nenhumaReuniao-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.nenhumaReuniao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.tv}">
				<li class="fieldcontain">
					<span id="tv-label" class="property-label"><g:message code="sociabilidadeCultura.tv.label" default="Tv" /></span>
					
						<span class="property-value" aria-labelledby="tv-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.tv}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.radio}">
				<li class="fieldcontain">
					<span id="radio-label" class="property-label"><g:message code="sociabilidadeCultura.radio.label" default="Radio" /></span>
					
						<span class="property-value" aria-labelledby="radio-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.radio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.lideranca}">
				<li class="fieldcontain">
					<span id="lideranca-label" class="property-label"><g:message code="sociabilidadeCultura.lideranca.label" default="Lideranca" /></span>
					
						<span class="property-value" aria-labelledby="lideranca-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.lideranca}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.jornal}">
				<li class="fieldcontain">
					<span id="jornal-label" class="property-label"><g:message code="sociabilidadeCultura.jornal.label" default="Jornal" /></span>
					
						<span class="property-value" aria-labelledby="jornal-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.jornal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.escola}">
				<li class="fieldcontain">
					<span id="escola-label" class="property-label"><g:message code="sociabilidadeCultura.escola.label" default="Escola" /></span>
					
						<span class="property-value" aria-labelledby="escola-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.escola}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.repReligioso}">
				<li class="fieldcontain">
					<span id="repReligioso-label" class="property-label"><g:message code="sociabilidadeCultura.repReligioso.label" default="Rep Religioso" /></span>
					
						<span class="property-value" aria-labelledby="repReligioso-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.repReligioso}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.internet}">
				<li class="fieldcontain">
					<span id="internet-label" class="property-label"><g:message code="sociabilidadeCultura.internet.label" default="Internet" /></span>
					
						<span class="property-value" aria-labelledby="internet-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.internet}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.amigoVizinho}">
				<li class="fieldcontain">
					<span id="amigoVizinho-label" class="property-label"><g:message code="sociabilidadeCultura.amigoVizinho.label" default="Amigo Vizinho" /></span>
					
						<span class="property-value" aria-labelledby="amigoVizinho-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.amigoVizinho}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.cartaz}">
				<li class="fieldcontain">
					<span id="cartaz-label" class="property-label"><g:message code="sociabilidadeCultura.cartaz.label" default="Cartaz" /></span>
					
						<span class="property-value" aria-labelledby="cartaz-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.cartaz}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.carroSom}">
				<li class="fieldcontain">
					<span id="carroSom-label" class="property-label"><g:message code="sociabilidadeCultura.carroSom.label" default="Carro Som" /></span>
					
						<span class="property-value" aria-labelledby="carroSom-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.carroSom}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.semInformacao}">
				<li class="fieldcontain">
					<span id="semInformacao-label" class="property-label"><g:message code="sociabilidadeCultura.semInformacao.label" default="Sem Informacao" /></span>
					
						<span class="property-value" aria-labelledby="semInformacao-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.semInformacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.outraFonteinf}">
				<li class="fieldcontain">
					<span id="outraFonteinf-label" class="property-label"><g:message code="sociabilidadeCultura.outraFonteinf.label" default="Outra Fonteinf" /></span>
					
						<span class="property-value" aria-labelledby="outraFonteinf-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="outraFonteinf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.visitaFamiliar}">
				<li class="fieldcontain">
					<span id="visitaFamiliar-label" class="property-label"><g:message code="sociabilidadeCultura.visitaFamiliar.label" default="Visita Familiar" /></span>
					
						<span class="property-value" aria-labelledby="visitaFamiliar-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.visitaFamiliar}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.visitaIgreja}">
				<li class="fieldcontain">
					<span id="visitaIgreja-label" class="property-label"><g:message code="sociabilidadeCultura.visitaIgreja.label" default="Visita Igreja" /></span>
					
						<span class="property-value" aria-labelledby="visitaIgreja-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.visitaIgreja}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.visitaRio}">
				<li class="fieldcontain">
					<span id="visitaRio-label" class="property-label"><g:message code="sociabilidadeCultura.visitaRio.label" default="Visita Rio" /></span>
					
						<span class="property-value" aria-labelledby="visitaRio-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.visitaRio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.visitaPesca}">
				<li class="fieldcontain">
					<span id="visitaPesca-label" class="property-label"><g:message code="sociabilidadeCultura.visitaPesca.label" default="Visita Pesca" /></span>
					
						<span class="property-value" aria-labelledby="visitaPesca-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.visitaPesca}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.visitaFesta}">
				<li class="fieldcontain">
					<span id="visitaFesta-label" class="property-label"><g:message code="sociabilidadeCultura.visitaFesta.label" default="Visita Festa" /></span>
					
						<span class="property-value" aria-labelledby="visitaFesta-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.visitaFesta}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.visitaFutebol}">
				<li class="fieldcontain">
					<span id="visitaFutebol-label" class="property-label"><g:message code="sociabilidadeCultura.visitaFutebol.label" default="Visita Futebol" /></span>
					
						<span class="property-value" aria-labelledby="visitaFutebol-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.visitaFutebol}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.visitaBar}">
				<li class="fieldcontain">
					<span id="visitaBar-label" class="property-label"><g:message code="sociabilidadeCultura.visitaBar.label" default="Visita Bar" /></span>
					
						<span class="property-value" aria-labelledby="visitaBar-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.visitaBar}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.visitaTv}">
				<li class="fieldcontain">
					<span id="visitaTv-label" class="property-label"><g:message code="sociabilidadeCultura.visitaTv.label" default="Visita Tv" /></span>
					
						<span class="property-value" aria-labelledby="visitaTv-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.visitaTv}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.visitaCidade}">
				<li class="fieldcontain">
					<span id="visitaCidade-label" class="property-label"><g:message code="sociabilidadeCultura.visitaCidade.label" default="Visita Cidade" /></span>
					
						<span class="property-value" aria-labelledby="visitaCidade-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.visitaCidade}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.visitaRadio}">
				<li class="fieldcontain">
					<span id="visitaRadio-label" class="property-label"><g:message code="sociabilidadeCultura.visitaRadio.label" default="Visita Radio" /></span>
					
						<span class="property-value" aria-labelledby="visitaRadio-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.visitaRadio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.visitaNada}">
				<li class="fieldcontain">
					<span id="visitaNada-label" class="property-label"><g:message code="sociabilidadeCultura.visitaNada.label" default="Visita Nada" /></span>
					
						<span class="property-value" aria-labelledby="visitaNada-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.visitaNada}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.probRemuneracao}">
				<li class="fieldcontain">
					<span id="probRemuneracao-label" class="property-label"><g:message code="sociabilidadeCultura.probRemuneracao.label" default="Prob Remuneracao" /></span>
					
						<span class="property-value" aria-labelledby="probRemuneracao-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.probRemuneracao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.probEducacao}">
				<li class="fieldcontain">
					<span id="probEducacao-label" class="property-label"><g:message code="sociabilidadeCultura.probEducacao.label" default="Prob Educacao" /></span>
					
						<span class="property-value" aria-labelledby="probEducacao-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.probEducacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.probSaude}">
				<li class="fieldcontain">
					<span id="probSaude-label" class="property-label"><g:message code="sociabilidadeCultura.probSaude.label" default="Prob Saude" /></span>
					
						<span class="property-value" aria-labelledby="probSaude-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.probSaude}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.probEstrada}">
				<li class="fieldcontain">
					<span id="probEstrada-label" class="property-label"><g:message code="sociabilidadeCultura.probEstrada.label" default="Prob Estrada" /></span>
					
						<span class="property-value" aria-labelledby="probEstrada-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.probEstrada}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.probEnergia}">
				<li class="fieldcontain">
					<span id="probEnergia-label" class="property-label"><g:message code="sociabilidadeCultura.probEnergia.label" default="Prob Energia" /></span>
					
						<span class="property-value" aria-labelledby="probEnergia-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.probEnergia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.probAssistTecnico}">
				<li class="fieldcontain">
					<span id="probAssistTecnico-label" class="property-label"><g:message code="sociabilidadeCultura.probAssistTecnico.label" default="Prob Assist Tecnico" /></span>
					
						<span class="property-value" aria-labelledby="probAssistTecnico-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.probAssistTecnico}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.probSaneamento}">
				<li class="fieldcontain">
					<span id="probSaneamento-label" class="property-label"><g:message code="sociabilidadeCultura.probSaneamento.label" default="Prob Saneamento" /></span>
					
						<span class="property-value" aria-labelledby="probSaneamento-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.probSaneamento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.probTransporte}">
				<li class="fieldcontain">
					<span id="probTransporte-label" class="property-label"><g:message code="sociabilidadeCultura.probTransporte.label" default="Prob Transporte" /></span>
					
						<span class="property-value" aria-labelledby="probTransporte-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.probTransporte}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.probAcessoInf}">
				<li class="fieldcontain">
					<span id="probAcessoInf-label" class="property-label"><g:message code="sociabilidadeCultura.probAcessoInf.label" default="Prob Acesso Inf" /></span>
					
						<span class="property-value" aria-labelledby="probAcessoInf-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.probAcessoInf}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.probAcessoServ}">
				<li class="fieldcontain">
					<span id="probAcessoServ-label" class="property-label"><g:message code="sociabilidadeCultura.probAcessoServ.label" default="Prob Acesso Serv" /></span>
					
						<span class="property-value" aria-labelledby="probAcessoServ-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.probAcessoServ}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.probAcessoCom}">
				<li class="fieldcontain">
					<span id="probAcessoCom-label" class="property-label"><g:message code="sociabilidadeCultura.probAcessoCom.label" default="Prob Acesso Com" /></span>
					
						<span class="property-value" aria-labelledby="probAcessoCom-label"><g:formatBoolean boolean="${sociabilidadeCulturaInstance?.probAcessoCom}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sociabilidadeCulturaInstance?.outroProblema}">
				<li class="fieldcontain">
					<span id="outroProblema-label" class="property-label"><g:message code="sociabilidadeCultura.outroProblema.label" default="Outro Problema" /></span>
					
						<span class="property-value" aria-labelledby="outroProblema-label"><g:fieldValue bean="${sociabilidadeCulturaInstance}" field="outroProblema"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${sociabilidadeCulturaInstance?.id}" />
					<g:link class="edit" action="edit" id="${sociabilidadeCulturaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
