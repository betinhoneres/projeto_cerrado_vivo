
<%@ page import="br.com.cerradovivo.AspectoAmbiental" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aspectoAmbiental.label', default: 'AspectoAmbiental')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aspectoAmbiental" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aspectoAmbiental" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aspectoAmbiental">
			
				<g:if test="${aspectoAmbientalInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="aspectoAmbiental.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${aspectoAmbientalInstance?.propriedade?.id}">${aspectoAmbientalInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.animaisSilvestres}">
				<li class="fieldcontain">
					<span id="animaisSilvestres-label" class="property-label"><g:message code="aspectoAmbiental.animaisSilvestres.label" default="Animais Silvestres" /></span>
					
						<span class="property-value" aria-labelledby="animaisSilvestres-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="animaisSilvestres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.app}">
				<li class="fieldcontain">
					<span id="app-label" class="property-label"><g:message code="aspectoAmbiental.app.label" default="App" /></span>
					
						<span class="property-value" aria-labelledby="app-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="app"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.areaApp}">
				<li class="fieldcontain">
					<span id="areaApp-label" class="property-label"><g:message code="aspectoAmbiental.areaApp.label" default="Area App" /></span>
					
						<span class="property-value" aria-labelledby="areaApp-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="areaApp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.brejo}">
				<li class="fieldcontain">
					<span id="brejo-label" class="property-label"><g:message code="aspectoAmbiental.brejo.label" default="Brejo" /></span>
					
						<span class="property-value" aria-labelledby="brejo-label"><g:formatBoolean boolean="${aspectoAmbientalInstance?.brejo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.controleAspAmbAniSils}">
				<li class="fieldcontain">
					<span id="controleAspAmbAniSils-label" class="property-label"><g:message code="aspectoAmbiental.controleAspAmbAniSils.label" default="Controle Asp Amb Ani Sils" /></span>
					
						<g:each in="${aspectoAmbientalInstance.controleAspAmbAniSils}" var="c">
						<span class="property-value" aria-labelledby="controleAspAmbAniSils-label"><g:link controller="controleAspAmbAniSil" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.controleAspAmbEspVegs}">
				<li class="fieldcontain">
					<span id="controleAspAmbEspVegs-label" class="property-label"><g:message code="aspectoAmbiental.controleAspAmbEspVegs.label" default="Controle Asp Amb Esp Vegs" /></span>
					
						<g:each in="${aspectoAmbientalInstance.controleAspAmbEspVegs}" var="c">
						<span class="property-value" aria-labelledby="controleAspAmbEspVegs-label"><g:link controller="controleAspAmbEspVeg" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.corrego}">
				<li class="fieldcontain">
					<span id="corrego-label" class="property-label"><g:message code="aspectoAmbiental.corrego.label" default="Corrego" /></span>
					
						<span class="property-value" aria-labelledby="corrego-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="corrego"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.disponibilidadeAguaAnimal}">
				<li class="fieldcontain">
					<span id="disponibilidadeAguaAnimal-label" class="property-label"><g:message code="aspectoAmbiental.disponibilidadeAguaAnimal.label" default="Disponibilidade Agua Animal" /></span>
					
						<span class="property-value" aria-labelledby="disponibilidadeAguaAnimal-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="disponibilidadeAguaAnimal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.disponibilidadeAguaCultivo}">
				<li class="fieldcontain">
					<span id="disponibilidadeAguaCultivo-label" class="property-label"><g:message code="aspectoAmbiental.disponibilidadeAguaCultivo.label" default="Disponibilidade Agua Cultivo" /></span>
					
						<span class="property-value" aria-labelledby="disponibilidadeAguaCultivo-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="disponibilidadeAguaCultivo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.disponibilidadeAguaHumano}">
				<li class="fieldcontain">
					<span id="disponibilidadeAguaHumano-label" class="property-label"><g:message code="aspectoAmbiental.disponibilidadeAguaHumano.label" default="Disponibilidade Agua Humano" /></span>
					
						<span class="property-value" aria-labelledby="disponibilidadeAguaHumano-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="disponibilidadeAguaHumano"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.estadoConsApp}">
				<li class="fieldcontain">
					<span id="estadoConsApp-label" class="property-label"><g:message code="aspectoAmbiental.estadoConsApp.label" default="Estado Cons App" /></span>
					
						<span class="property-value" aria-labelledby="estadoConsApp-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="estadoConsApp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.estadoConsArl}">
				<li class="fieldcontain">
					<span id="estadoConsArl-label" class="property-label"><g:message code="aspectoAmbiental.estadoConsArl.label" default="Estado Cons Arl" /></span>
					
						<span class="property-value" aria-labelledby="estadoConsArl-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="estadoConsArl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.estadoPresRecHid}">
				<li class="fieldcontain">
					<span id="estadoPresRecHid-label" class="property-label"><g:message code="aspectoAmbiental.estadoPresRecHid.label" default="Estado Pres Rec Hid" /></span>
					
						<span class="property-value" aria-labelledby="estadoPresRecHid-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="estadoPresRecHid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.formaDisponibilizarAguaAni}">
				<li class="fieldcontain">
					<span id="formaDisponibilizarAguaAni-label" class="property-label"><g:message code="aspectoAmbiental.formaDisponibilizarAguaAni.label" default="Forma Disponibilizar Agua Ani" /></span>
					
						<span class="property-value" aria-labelledby="formaDisponibilizarAguaAni-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="formaDisponibilizarAguaAni"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.formaDisponibilizarAguaCult}">
				<li class="fieldcontain">
					<span id="formaDisponibilizarAguaCult-label" class="property-label"><g:message code="aspectoAmbiental.formaDisponibilizarAguaCult.label" default="Forma Disponibilizar Agua Cult" /></span>
					
						<span class="property-value" aria-labelledby="formaDisponibilizarAguaCult-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="formaDisponibilizarAguaCult"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.formaDisponibilizarAguaHum}">
				<li class="fieldcontain">
					<span id="formaDisponibilizarAguaHum-label" class="property-label"><g:message code="aspectoAmbiental.formaDisponibilizarAguaHum.label" default="Forma Disponibilizar Agua Hum" /></span>
					
						<span class="property-value" aria-labelledby="formaDisponibilizarAguaHum-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="formaDisponibilizarAguaHum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.nascentePerene}">
				<li class="fieldcontain">
					<span id="nascentePerene-label" class="property-label"><g:message code="aspectoAmbiental.nascentePerene.label" default="Nascente Perene" /></span>
					
						<span class="property-value" aria-labelledby="nascentePerene-label"><g:formatBoolean boolean="${aspectoAmbientalInstance?.nascentePerene}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.nascenteTemporaria}">
				<li class="fieldcontain">
					<span id="nascenteTemporaria-label" class="property-label"><g:message code="aspectoAmbiental.nascenteTemporaria.label" default="Nascente Temporaria" /></span>
					
						<span class="property-value" aria-labelledby="nascenteTemporaria-label"><g:formatBoolean boolean="${aspectoAmbientalInstance?.nascenteTemporaria}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.outroEstadoConsApp}">
				<li class="fieldcontain">
					<span id="outroEstadoConsApp-label" class="property-label"><g:message code="aspectoAmbiental.outroEstadoConsApp.label" default="Outro Estado Cons App" /></span>
					
						<span class="property-value" aria-labelledby="outroEstadoConsApp-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="outroEstadoConsApp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.outroEstadoConsArl}">
				<li class="fieldcontain">
					<span id="outroEstadoConsArl-label" class="property-label"><g:message code="aspectoAmbiental.outroEstadoConsArl.label" default="Outro Estado Cons Arl" /></span>
					
						<span class="property-value" aria-labelledby="outroEstadoConsArl-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="outroEstadoConsArl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.outroEstadoPresRecHid}">
				<li class="fieldcontain">
					<span id="outroEstadoPresRecHid-label" class="property-label"><g:message code="aspectoAmbiental.outroEstadoPresRecHid.label" default="Outro Estado Pres Rec Hid" /></span>
					
						<span class="property-value" aria-labelledby="outroEstadoPresRecHid-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="outroEstadoPresRecHid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.outroRecHidrico}">
				<li class="fieldcontain">
					<span id="outroRecHidrico-label" class="property-label"><g:message code="aspectoAmbiental.outroRecHidrico.label" default="Outro Rec Hidrico" /></span>
					
						<span class="property-value" aria-labelledby="outroRecHidrico-label"><g:fieldValue bean="${aspectoAmbientalInstance}" field="outroRecHidrico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.represaLago}">
				<li class="fieldcontain">
					<span id="represaLago-label" class="property-label"><g:message code="aspectoAmbiental.represaLago.label" default="Represa Lago" /></span>
					
						<span class="property-value" aria-labelledby="represaLago-label"><g:formatBoolean boolean="${aspectoAmbientalInstance?.represaLago}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.rioDoPeixe}">
				<li class="fieldcontain">
					<span id="rioDoPeixe-label" class="property-label"><g:message code="aspectoAmbiental.rioDoPeixe.label" default="Rio Do Peixe" /></span>
					
						<span class="property-value" aria-labelledby="rioDoPeixe-label"><g:formatBoolean boolean="${aspectoAmbientalInstance?.rioDoPeixe}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aspectoAmbientalInstance?.vereda}">
				<li class="fieldcontain">
					<span id="vereda-label" class="property-label"><g:message code="aspectoAmbiental.vereda.label" default="Vereda" /></span>
					
						<span class="property-value" aria-labelledby="vereda-label"><g:formatBoolean boolean="${aspectoAmbientalInstance?.vereda}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${aspectoAmbientalInstance?.id}" />
					<g:link class="edit" action="edit" id="${aspectoAmbientalInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
