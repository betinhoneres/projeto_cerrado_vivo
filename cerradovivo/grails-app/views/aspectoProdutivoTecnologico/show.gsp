
<%@ page import="br.com.cerradovivo.AspectoProdutivoTecnologico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoProdutivoTecnologico.label', default: 'AspectoProdutivoTecnologico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aspectoProdutivoTecnologico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aspectoProdutivoTecnologico" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aspectoProdutivoTecnologico">
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${aspectoProdutivoTecnologicoInstance?.propriedade?.id}">${aspectoProdutivoTecnologicoInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.trator}">
				<li class="fieldcontain">
					<span id="trator-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.trator.label" default="Trator" /></span>
					
						<span class="property-value" aria-labelledby="trator-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.trator}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.colheitadeira}">
				<li class="fieldcontain">
					<span id="colheitadeira-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.colheitadeira.label" default="Colheitadeira" /></span>
					
						<span class="property-value" aria-labelledby="colheitadeira-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.colheitadeira}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.aradoMecanico}">
				<li class="fieldcontain">
					<span id="aradoMecanico-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.aradoMecanico.label" default="Arado Mecanico" /></span>
					
						<span class="property-value" aria-labelledby="aradoMecanico-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.aradoMecanico}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.aradoAnimal}">
				<li class="fieldcontain">
					<span id="aradoAnimal-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.aradoAnimal.label" default="Arado Animal" /></span>
					
						<span class="property-value" aria-labelledby="aradoAnimal-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.aradoAnimal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.plantadeiraMecanica}">
				<li class="fieldcontain">
					<span id="plantadeiraMecanica-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.plantadeiraMecanica.label" default="Plantadeira Mecanica" /></span>
					
						<span class="property-value" aria-labelledby="plantadeiraMecanica-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.plantadeiraMecanica}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.plantadeiraAnimal}">
				<li class="fieldcontain">
					<span id="plantadeiraAnimal-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.plantadeiraAnimal.label" default="Plantadeira Animal" /></span>
					
						<span class="property-value" aria-labelledby="plantadeiraAnimal-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.plantadeiraAnimal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.triturador}">
				<li class="fieldcontain">
					<span id="triturador-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.triturador.label" default="Triturador" /></span>
					
						<span class="property-value" aria-labelledby="triturador-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.triturador}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.facao}">
				<li class="fieldcontain">
					<span id="facao-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.facao.label" default="Facao" /></span>
					
						<span class="property-value" aria-labelledby="facao-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.facao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.pa}">
				<li class="fieldcontain">
					<span id="pa-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.pa.label" default="Pa" /></span>
					
						<span class="property-value" aria-labelledby="pa-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.pa}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.matraca}">
				<li class="fieldcontain">
					<span id="matraca-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.matraca.label" default="Matraca" /></span>
					
						<span class="property-value" aria-labelledby="matraca-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.matraca}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.picareta}">
				<li class="fieldcontain">
					<span id="picareta-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.picareta.label" default="Picareta" /></span>
					
						<span class="property-value" aria-labelledby="picareta-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.picareta}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.foice}">
				<li class="fieldcontain">
					<span id="foice-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.foice.label" default="Foice" /></span>
					
						<span class="property-value" aria-labelledby="foice-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.foice}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.machado}">
				<li class="fieldcontain">
					<span id="machado-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.machado.label" default="Machado" /></span>
					
						<span class="property-value" aria-labelledby="machado-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.machado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.pulverizadorMecanico}">
				<li class="fieldcontain">
					<span id="pulverizadorMecanico-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.pulverizadorMecanico.label" default="Pulverizador Mecanico" /></span>
					
						<span class="property-value" aria-labelledby="pulverizadorMecanico-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.pulverizadorMecanico}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.pulverizadorCostal}">
				<li class="fieldcontain">
					<span id="pulverizadorCostal-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.pulverizadorCostal.label" default="Pulverizador Costal" /></span>
					
						<span class="property-value" aria-labelledby="pulverizadorCostal-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.pulverizadorCostal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.enxada}">
				<li class="fieldcontain">
					<span id="enxada-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.enxada.label" default="Enxada" /></span>
					
						<span class="property-value" aria-labelledby="enxada-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.enxada}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.outroEquipamento}">
				<li class="fieldcontain">
					<span id="outroEquipamento-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.outroEquipamento.label" default="Outro Equipamento" /></span>
					
						<span class="property-value" aria-labelledby="outroEquipamento-label"><g:fieldValue bean="${aspectoProdutivoTecnologicoInstance}" field="outroEquipamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.adeqEstrada}">
				<li class="fieldcontain">
					<span id="adeqEstrada-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.adeqEstrada.label" default="Adeq Estrada" /></span>
					
						<span class="property-value" aria-labelledby="adeqEstrada-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.adeqEstrada}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.adubacaoOrganica}">
				<li class="fieldcontain">
					<span id="adubacaoOrganica-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.adubacaoOrganica.label" default="Adubacao Organica" /></span>
					
						<span class="property-value" aria-labelledby="adubacaoOrganica-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.adubacaoOrganica}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.adubacaoVerde}">
				<li class="fieldcontain">
					<span id="adubacaoVerde-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.adubacaoVerde.label" default="Adubacao Verde" /></span>
					
						<span class="property-value" aria-labelledby="adubacaoVerde-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.adubacaoVerde}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.calagem}">
				<li class="fieldcontain">
					<span id="calagem-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.calagem.label" default="Calagem" /></span>
					
						<span class="property-value" aria-labelledby="calagem-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.calagem}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.cordoes}">
				<li class="fieldcontain">
					<span id="cordoes-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.cordoes.label" default="Cordoes" /></span>
					
						<span class="property-value" aria-labelledby="cordoes-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.cordoes}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.plantio}">
				<li class="fieldcontain">
					<span id="plantio-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.plantio.label" default="Plantio" /></span>
					
						<span class="property-value" aria-labelledby="plantio-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.plantio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.faixas}">
				<li class="fieldcontain">
					<span id="faixas-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.faixas.label" default="Faixas" /></span>
					
						<span class="property-value" aria-labelledby="faixas-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.faixas}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.queimada}">
				<li class="fieldcontain">
					<span id="queimada-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.queimada.label" default="Queimada" /></span>
					
						<span class="property-value" aria-labelledby="queimada-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.queimada}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.reflorestamento}">
				<li class="fieldcontain">
					<span id="reflorestamento-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.reflorestamento.label" default="Reflorestamento" /></span>
					
						<span class="property-value" aria-labelledby="reflorestamento-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.reflorestamento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.rotacao}">
				<li class="fieldcontain">
					<span id="rotacao-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.rotacao.label" default="Rotacao" /></span>
					
						<span class="property-value" aria-labelledby="rotacao-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.rotacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.terraceamento}">
				<li class="fieldcontain">
					<span id="terraceamento-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.terraceamento.label" default="Terraceamento" /></span>
					
						<span class="property-value" aria-labelledby="terraceamento-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.terraceamento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.nenhumaTecninca}">
				<li class="fieldcontain">
					<span id="nenhumaTecninca-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.nenhumaTecninca.label" default="Nenhuma Tecninca" /></span>
					
						<span class="property-value" aria-labelledby="nenhumaTecninca-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.nenhumaTecninca}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.outroTecnica}">
				<li class="fieldcontain">
					<span id="outroTecnica-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.outroTecnica.label" default="Outro Tecnica" /></span>
					
						<span class="property-value" aria-labelledby="outroTecnica-label"><g:fieldValue bean="${aspectoProdutivoTecnologicoInstance}" field="outroTecnica"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.utilizaFertOutros}">
				<li class="fieldcontain">
					<span id="utilizaFertOutros-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.utilizaFertOutros.label" default="Utiliza Fert Outros" /></span>
					
						<span class="property-value" aria-labelledby="utilizaFertOutros-label"><g:fieldValue bean="${aspectoProdutivoTecnologicoInstance}" field="utilizaFertOutros"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.adubosQuimicos}">
				<li class="fieldcontain">
					<span id="adubosQuimicos-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.adubosQuimicos.label" default="Adubos Quimicos" /></span>
					
						<span class="property-value" aria-labelledby="adubosQuimicos-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.adubosQuimicos}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.adubosOrganicos}">
				<li class="fieldcontain">
					<span id="adubosOrganicos-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.adubosOrganicos.label" default="Adubos Organicos" /></span>
					
						<span class="property-value" aria-labelledby="adubosOrganicos-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.adubosOrganicos}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.defensivosTradicionais}">
				<li class="fieldcontain">
					<span id="defensivosTradicionais-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.defensivosTradicionais.label" default="Defensivos Tradicionais" /></span>
					
						<span class="property-value" aria-labelledby="defensivosTradicionais-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.defensivosTradicionais}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.defensivosNaturais}">
				<li class="fieldcontain">
					<span id="defensivosNaturais-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.defensivosNaturais.label" default="Defensivos Naturais" /></span>
					
						<span class="property-value" aria-labelledby="defensivosNaturais-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.defensivosNaturais}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.medicamentosNaturais}">
				<li class="fieldcontain">
					<span id="medicamentosNaturais-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.medicamentosNaturais.label" default="Medicamentos Naturais" /></span>
					
						<span class="property-value" aria-labelledby="medicamentosNaturais-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.medicamentosNaturais}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.medicamentoAlternativos}">
				<li class="fieldcontain">
					<span id="medicamentoAlternativos-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.medicamentoAlternativos.label" default="Medicamento Alternativos" /></span>
					
						<span class="property-value" aria-labelledby="medicamentoAlternativos-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.medicamentoAlternativos}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.vacinas}">
				<li class="fieldcontain">
					<span id="vacinas-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.vacinas.label" default="Vacinas" /></span>
					
						<span class="property-value" aria-labelledby="vacinas-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.vacinas}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.outraMedicamentos}">
				<li class="fieldcontain">
					<span id="outraMedicamentos-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.outraMedicamentos.label" default="Outra Medicamentos" /></span>
					
						<span class="property-value" aria-labelledby="outraMedicamentos-label"><g:fieldValue bean="${aspectoProdutivoTecnologicoInstance}" field="outraMedicamentos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.acompanhamentoTecnico}">
				<li class="fieldcontain">
					<span id="acompanhamentoTecnico-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.acompanhamentoTecnico.label" default="Acompanhamento Tecnico" /></span>
					
						<span class="property-value" aria-labelledby="acompanhamentoTecnico-label"><g:fieldValue bean="${aspectoProdutivoTecnologicoInstance}" field="acompanhamentoTecnico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.incra}">
				<li class="fieldcontain">
					<span id="incra-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.incra.label" default="Incra" /></span>
					
						<span class="property-value" aria-labelledby="incra-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.incra}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.emater}">
				<li class="fieldcontain">
					<span id="emater-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.emater.label" default="Emater" /></span>
					
						<span class="property-value" aria-labelledby="emater-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.emater}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.empresaPrivada}">
				<li class="fieldcontain">
					<span id="empresaPrivada-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.empresaPrivada.label" default="Empresa Privada" /></span>
					
						<span class="property-value" aria-labelledby="empresaPrivada-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.empresaPrivada}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.prefeitura}">
				<li class="fieldcontain">
					<span id="prefeitura-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.prefeitura.label" default="Prefeitura" /></span>
					
						<span class="property-value" aria-labelledby="prefeitura-label"><g:formatBoolean boolean="${aspectoProdutivoTecnologicoInstance?.prefeitura}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoProdutivoTecnologicoInstance?.outraAssistencia}">
				<li class="fieldcontain">
					<span id="outraAssistencia-label" class="property-label"><g:message code="aspectoProdutivoTecnologico.outraAssistencia.label" default="Outra Assistencia" /></span>
					
						<span class="property-value" aria-labelledby="outraAssistencia-label"><g:fieldValue bean="${aspectoProdutivoTecnologicoInstance}" field="outraAssistencia"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${aspectoProdutivoTecnologicoInstance?.id}" />
					<g:link class="edit" action="edit" id="${aspectoProdutivoTecnologicoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
