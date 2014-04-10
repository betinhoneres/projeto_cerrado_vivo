
<%@ page import="br.com.cerradovivo.Propriedade" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'propriedade.label', default: 'Propriedade')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-propriedade" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-propriedade" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list propriedade">
			
				<g:if test="${propriedadeInstance?.dataEntrevista}">
				<li class="fieldcontain">
					<span id="dataEntrevista-label" class="property-label"><g:message code="propriedade.dataEntrevista.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="dataEntrevista-label"><g:formatDate date="${propriedadeInstance?.dataEntrevista}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${propriedadeInstance?.entrevistador}">
				<li class="fieldcontain">
					<span id="entrevistador-label" class="property-label"><g:message code="propriedade.entrevistador.label" default="Entrevistador" /></span>
					
						<span class="property-value" aria-labelledby="entrevistador-label"><g:fieldValue bean="${propriedadeInstance}" field="entrevistador"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${propriedadeInstance?.nomePropietario}">
				<li class="fieldcontain">
					<span id="nomePropietario-label" class="property-label"><g:message code="propriedade.nomePropietario.label" default="Nome do Propietário" /></span>
					
						<span class="property-value" aria-labelledby="nomePropietario-label"><g:fieldValue bean="${propriedadeInstance}" field="nomePropietario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propriedadeInstance?.telefonePropietario}">
				<li class="fieldcontain">
					<span id="telefonePropietario-label" class="property-label"><g:message code="propriedade.telefonePropietario.label" default="Telefone/Celular" /></span>
					
						<span class="property-value" aria-labelledby="telefonePropietario-label"><g:fieldValue bean="${propriedadeInstance}" field="telefonePropietario"/></span>
					
				</li>
				</g:if>				
				
				<g:if test="${propriedadeInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="propriedade.nome.label" default="Nome da Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${propriedadeInstance}" field="nome"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${propriedadeInstance?.numeroParcela}">
				<li class="fieldcontain">
					<span id="numeroParcela-label" class="property-label"><g:message code="propriedade.numeroParcela.label" default="Número da Parcela" /></span>
					
						<span class="property-value" aria-labelledby="numeroParcela-label"><g:fieldValue bean="${propriedadeInstance}" field="numeroParcela"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propriedadeInstance?.microRegiao}">
				<li class="fieldcontain">
					<span id="microRegiao-label" class="property-label"><g:message code="propriedade.microRegiao.label" default="Micro Região" /></span>
					
						<span class="property-value" aria-labelledby="microRegiao-label"><g:fieldValue bean="${propriedadeInstance}" field="microRegiao"/></span>
					
				</li>
				</g:if>			
			
				<g:if test="${propriedadeInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="propriedade.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${propriedadeInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propriedadeInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="propriedade.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${propriedadeInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propriedadeInstance?.altitude}">
				<li class="fieldcontain">
					<span id="altitude-label" class="property-label"><g:message code="propriedade.altitude.label" default="Altitude" /></span>
					
						<span class="property-value" aria-labelledby="altitude-label"><g:fieldValue bean="${propriedadeInstance}" field="altitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propriedadeInstance?.areaHa}">
				<li class="fieldcontain">
					<span id="areaHa-label" class="property-label"><g:message code="propriedade.areaHa.label" default="Area da Propriedade (ha)" /></span>
					
						<span class="property-value" aria-labelledby="areaHa-label"><g:fieldValue bean="${propriedadeInstance}" field="areaHa"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${propriedadeInstance?.roteiroAcesso}">
				<li class="fieldcontain">
					<span id="roteiroAcesso-label" class="property-label"><g:message code="propriedade.roteiroAcesso.label" default="Roteiro de Acesso a Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="roteiroAcesso-label"><g:fieldValue bean="${propriedadeInstance}" field="roteiroAcesso"/></span>
					
				</li>
				</g:if>				
			
			
			<!--  Area com os checkbox para seleção  -->
			
			
				<g:if test="${propriedadeInstance?.socioAmbiental}">
				<li class="fieldcontain">
					<span id="socioAmbiental-label" class="property-label"><g:message code="propriedade.socioAmbiental.label" default="Diagnóstico Socioambiental" /></span>
					
						<span class="property-value" aria-labelledby="socioAmbiental-label"><g:formatBoolean boolean="${propriedadeInstance?.socioAmbiental}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${propriedadeInstance?.conservacao}">
				<li class="fieldcontain">
					<span id="conservacao-label" class="property-label"><g:message code="propriedade.conservacao.label" default="Conservação de Solo" /></span>
					
						<span class="property-value" aria-labelledby="conservacao-label"><g:formatBoolean boolean="${propriedadeInstance?.conservacao}" /></span>
					
				</li>
				</g:if>				
				
				<g:if test="${propriedadeInstance?.agroflorestal}">
				<li class="fieldcontain">
					<span id="agroflorestal-label" class="property-label"><g:message code="propriedade.agroflorestal.label" default="Sistema Agroflorestal" /></span>
					
						<span class="property-value" aria-labelledby="agroflorestal-label"><g:formatBoolean boolean="${propriedadeInstance?.agroflorestal}" /></span>
					
				</li>
				</g:if>				
				
				<g:if test="${propriedadeInstance?.agrosilvipastoril}">
				<li class="fieldcontain">
					<span id="agrosilvipastoril-label" class="property-label"><g:message code="propriedade.agrosilvipastoril.label" default="Sistema Agrossilvipastoril" /></span>
					
						<span class="property-value" aria-labelledby="agrosilvipastoril-label"><g:formatBoolean boolean="${propriedadeInstance?.agrosilvipastoril}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${propriedadeInstance?.viveiro}">
				<li class="fieldcontain">
					<span id="viveiro-label" class="property-label"><g:message code="propriedade.viveiro.label" default="Viveiro Florestal Familiar" /></span>
					
						<span class="property-value" aria-labelledby="viveiro-label"><g:formatBoolean boolean="${propriedadeInstance?.viveiro}" /></span>
					
				</li>
				</g:if>			
			
				<g:if test="${propriedadeInstance?.pais}">
				<li class="fieldcontain">
					<span id="pais-label" class="property-label"><g:message code="propriedade.pais.label" default="PAIS" /></span>
					
						<span class="property-value" aria-labelledby="pais-label"><g:formatBoolean boolean="${propriedadeInstance?.pais}" /></span>
					
				</li>
				</g:if>			
			
				<g:if test="${propriedadeInstance?.cisterna}">
				<li class="fieldcontain">
					<span id="cisterna-label" class="property-label"><g:message code="propriedade.cisterna.label" default="Cisterna de Captação de Água da Chuva" /></span>
					
						<span class="property-value" aria-labelledby="cisterna-label"><g:formatBoolean boolean="${propriedadeInstance?.cisterna}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${propriedadeInstance?.app}">
				<li class="fieldcontain">
					<span id="app-label" class="property-label"><g:message code="propriedade.app.label" default="Recuperação de APP's" /></span>
					
						<span class="property-value" aria-labelledby="app-label"><g:formatBoolean boolean="${propriedadeInstance?.app}" /></span>
					
				</li>
				</g:if>			
			
				<g:if test="${propriedadeInstance?.reservaLegal}">
				<li class="fieldcontain">
					<span id="reservaLegal-label" class="property-label"><g:message code="propriedade.reservaLegal.label" default="Recuperação de Áreas de Reserva Legal" /></span>
					
						<span class="property-value" aria-labelledby="reservaLegal-label"><g:formatBoolean boolean="${propriedadeInstance?.reservaLegal}" /></span>
					
				</li>
				</g:if>
							
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${propriedadeInstance?.id}" />
					<g:link class="edit" action="edit" id="${propriedadeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:actionSubmit class="next" action="next" value="${message(code: 'default.button.next.label', default: 'Próximo')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
