
<%@ page import="br.com.cerradovivo.Transporte" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transporte.label', default: 'Transporte')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-transporte" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-transporte" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list transporte">
			
				<g:if test="${transporteInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="transporte.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${transporteInstance?.propriedade?.id}">${transporteInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>

				<g:if test="${transporteInstance?.distSedeMun}">
				<li class="fieldcontain">
					<span id="distSedeMun-label" class="property-label"><g:message code="transporte.distSedeMun.label" default="Qual é a distância da unidade familiar a sede do município?" /></span>
					
						<span class="property-value" aria-labelledby="distSedeMun-label"><g:fieldValue bean="${transporteInstance}" field="distSedeMun"/></span>
					
				</li>
				</g:if>
				
				
				<g:if test="${transporteInstance?.controleTransporteCidade}">
				<li class="fieldcontain">
					<span id="controleTransporteCidade-label" class="property-label"><g:message code="transporte.controleTransporteCidade.label" default="Qual é a distância da unidade familiar em relação ao aglomerado de famílias (vila, sede comunitária, sede de bairro rural, distrito) mais próximo?" /></span>
					
						<g:each in="${transporteInstance.controleTransporteCidade}" var="c">
						<span class="property-value" aria-labelledby="controleTransporteCidade-label"><g:link controller="controleTransporteCidade" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>

				<g:if test="${transporteInstance?.acessoSemChuva}">
				<li class="fieldcontain">
					<span id="acessoSemChuva-label" class="property-label"><g:message code="transporte.acessoSemChuva.label" default="Período sem chuvas" /></span>
					
						<span class="property-value" aria-labelledby="acessoSemChuva-label"><g:fieldValue bean="${transporteInstance}" field="acessoSemChuva"/></span>
					
				</li>
				</g:if>				
				
				<g:if test="${transporteInstance?.acessoComChuva}">
				<li class="fieldcontain">
					<span id="acessoComChuva-label" class="property-label"><g:message code="transporte.acessoComChuva.label" default="Período com chuva" /></span>
					
						<span class="property-value" aria-labelledby="acessoComChuva-label"><g:fieldValue bean="${transporteInstance}" field="acessoComChuva"/></span>
					
				</li>
				</g:if>
			

				<g:if test="${transporteInstance?.onibusProvado}">
				<li class="fieldcontain">
					<span id="onibusProvado-label" class="property-label"><g:message code="transporte.onibusProvado.label" default="Ônibus de linha - transporte privado" /></span>
					
						<span class="property-value" aria-labelledby="onibusProvado-label"><g:formatBoolean boolean="${transporteInstance?.onibusProvado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${transporteInstance?.onibusPublico}">
				<li class="fieldcontain">
					<span id="onibusPublico-label" class="property-label"><g:message code="transporte.onibusPublico.label" default="Ônibus de linha - transporte público" /></span>
					
						<span class="property-value" aria-labelledby="onibusPublico-label"><g:formatBoolean boolean="${transporteInstance?.onibusPublico}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${transporteInstance?.carro}">
				<li class="fieldcontain">
					<span id="carro-label" class="property-label"><g:message code="transporte.carro.label" default="Carro ou utilitário própio" /></span>
					
						<span class="property-value" aria-labelledby="carro-label"><g:formatBoolean boolean="${transporteInstance?.carro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${transporteInstance?.cavalo}">
				<li class="fieldcontain">
					<span id="cavalo-label" class="property-label"><g:message code="transporte.cavalo.label" default="Cavalo ou outros animais" /></span>
					
						<span class="property-value" aria-labelledby="cavalo-label"><g:formatBoolean boolean="${transporteInstance?.cavalo}" /></span>
					
				</li>
				</g:if>				
				
				<g:if test="${transporteInstance?.moto}">
				<li class="fieldcontain">
					<span id="moto-label" class="property-label"><g:message code="transporte.moto.label" default="Moto própia" /></span>
					
						<span class="property-value" aria-labelledby="moto-label"><g:formatBoolean boolean="${transporteInstance?.moto}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${transporteInstance?.trator}">
				<li class="fieldcontain">
					<span id="trator-label" class="property-label"><g:message code="transporte.trator.label" default="Trator" /></span>
					
						<span class="property-value" aria-labelledby="trator-label"><g:formatBoolean boolean="${transporteInstance?.trator}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${transporteInstance?.bicicleta}">
				<li class="fieldcontain">
					<span id="bicicleta-label" class="property-label"><g:message code="transporte.bicicleta.label" default="Bicicleta própia" /></span>
					
						<span class="property-value" aria-labelledby="bicicleta-label"><g:formatBoolean boolean="${transporteInstance?.bicicleta}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${transporteInstance?.aPe}">
				<li class="fieldcontain">
					<span id="aPe-label" class="property-label"><g:message code="transporte.aPe.label" default="A pé" /></span>
					
						<span class="property-value" aria-labelledby="aPe-label"><g:formatBoolean boolean="${transporteInstance?.aPe}" /></span>
					
				</li>
				</g:if>
				
				
				<g:if test="${transporteInstance?.outroTransporte}">
				<li class="fieldcontain">
					<span id="outroTransporte-label" class="property-label"><g:message code="transporte.outroTransporte.label" default="Outro" /></span>
					
						<span class="property-value" aria-labelledby="outroTransporte-label"><g:fieldValue bean="${transporteInstance}" field="outroTransporte"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${transporteInstance?.goianesia}">
				<li class="fieldcontain">
					<span id="goianesia-label" class="property-label"><g:message code="transporte.goianesia.label" default="Goianésia" /></span>
					
						<span class="property-value" aria-labelledby="goianesia-label"><g:formatBoolean boolean="${transporteInstance?.goianesia}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${transporteInstance?.goiania}">
				<li class="fieldcontain">
					<span id="goiania-label" class="property-label"><g:message code="transporte.goiania.label" default="Goiânia" /></span>
					
						<span class="property-value" aria-labelledby="goiania-label"><g:formatBoolean boolean="${transporteInstance?.goiania}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${transporteInstance?.staisabel}">
				<li class="fieldcontain">
					<span id="staisabel-label" class="property-label"><g:message code="transporte.staisabel.label" default="Santa Isabel/Cirilândia" /></span>
					
						<span class="property-value" aria-labelledby="staisabel-label"><g:formatBoolean boolean="${transporteInstance?.staisabel}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${transporteInstance?.ceres}">
				<li class="fieldcontain">
					<span id="ceres-label" class="property-label"><g:message code="transporte.ceres.label" default="Ceres/Rialma" /></span>
					
						<span class="property-value" aria-labelledby="ceres-label"><g:formatBoolean boolean="${transporteInstance?.ceres}" /></span>
					
				</li>
				</g:if>
				
				
				<g:if test="${transporteInstance?.jaragua}">
				<li class="fieldcontain">
					<span id="jaragua-label" class="property-label"><g:message code="transporte.jaragua.label" default="Jaraguá" /></span>
					
						<span class="property-value" aria-labelledby="jaragua-label"><g:formatBoolean boolean="${transporteInstance?.jaragua}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${transporteInstance?.outroLocal}">
				<li class="fieldcontain">
					<span id="outroLocal-label" class="property-label"><g:message code="transporte.outroLocal.label" default="Outro" /></span>
					
						<span class="property-value" aria-labelledby="outroLocal-label"><g:fieldValue bean="${transporteInstance}" field="outroLocal"/></span>
					
				</li>
				</g:if>				
				
				<g:if test="${transporteInstance?.energiaEletrica}">
				<li class="fieldcontain">
					<span id="energiaEletrica-label" class="property-label"><g:message code="transporte.energiaEletrica.label" default="Energia Elétrica" /></span>
					
						<span class="property-value" aria-labelledby="energiaEletrica-label"><g:fieldValue bean="${transporteInstance}" field="energiaEletrica"/></span>
					
				</li>
				</g:if>
				
				
				<g:if test="${transporteInstance?.redeGeral}">
				<li class="fieldcontain">
					<span id="redeGeral-label" class="property-label"><g:message code="transporte.redeGeral.label" default="Rede geral" /></span>
					
						<span class="property-value" aria-labelledby="redeGeral-label"><g:formatBoolean boolean="${transporteInstance?.redeGeral}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${transporteInstance?.geradorMotor}">
				<li class="fieldcontain">
					<span id="geradorMotor-label" class="property-label"><g:message code="transporte.geradorMotor.label" default="Gerador/Motor" /></span>
					
						<span class="property-value" aria-labelledby="geradorMotor-label"><g:formatBoolean boolean="${transporteInstance?.geradorMotor}" /></span>
					
				</li>
				</g:if>				
				
				<g:if test="${transporteInstance?.placaSolar}">
				<li class="fieldcontain">
					<span id="placaSolar-label" class="property-label"><g:message code="transporte.placaSolar.label" default="Placa solar" /></span>
					
						<span class="property-value" aria-labelledby="placaSolar-label"><g:formatBoolean boolean="${transporteInstance?.placaSolar}" /></span>
					
				</li>
				</g:if>				
				
				<g:if test="${transporteInstance?.outroEE}">
				<li class="fieldcontain">
					<span id="outroEE-label" class="property-label"><g:message code="transporte.outroEE.label" default="Outro" /></span>
					
						<span class="property-value" aria-labelledby="outroEE-label"><g:fieldValue bean="${transporteInstance}" field="outroEE"/></span>
					
				</li>
				</g:if>			
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${transporteInstance?.id}" />
					<g:link class="edit" action="edit" id="${transporteInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
