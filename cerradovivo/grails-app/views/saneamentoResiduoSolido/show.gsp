
<%@ page import="br.com.cerradovivo.SaneamentoResiduoSolido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'saneamentoResiduoSolido.label', default: 'SaneamentoResiduoSolido')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-saneamentoResiduoSolido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-saneamentoResiduoSolido" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list saneamentoResiduoSolido">
			
				<g:if test="${saneamentoResiduoSolidoInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="saneamentoResiduoSolido.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${saneamentoResiduoSolidoInstance?.propriedade?.id}">${saneamentoResiduoSolidoInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${saneamentoResiduoSolidoInstance?.esgPeptica}">
				<li class="fieldcontain">
					<span id="esgPeptica-label" class="property-label"><g:message code="saneamentoResiduoSolido.esgPeptica.label" default="Fossa séptica" /></span>
					
						<span class="property-value" aria-labelledby="esgPeptica-label"><g:formatBoolean boolean="${saneamentoResiduoSolidoInstance?.esgPeptica}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${saneamentoResiduoSolidoInstance?.fossaComum}">
				<li class="fieldcontain">
					<span id="fossaComum-label" class="property-label"><g:message code="saneamentoResiduoSolido.fossaComum.label" default="Fossa comum (rudimentar)" /></span>
					
						<span class="property-value" aria-labelledby="fossaComum-label"><g:formatBoolean boolean="${saneamentoResiduoSolidoInstance?.fossaComum}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${saneamentoResiduoSolidoInstance?.fosaSeptica}">
				<li class="fieldcontain">
					<span id="fosaSeptica-label" class="property-label"><g:message code="saneamentoResiduoSolido.fosaSeptica.label" default="Fossa séptica" /></span>
					
						<span class="property-value" aria-labelledby="fosaSeptica-label"><g:formatBoolean boolean="${saneamentoResiduoSolidoInstance?.fosaSeptica}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoResiduoSolidoInstance?.naoTem}">
				<li class="fieldcontain">
					<span id="naoTem-label" class="property-label"><g:message code="saneamentoResiduoSolido.naoTem.label" default="Não tem" /></span>
					
						<span class="property-value" aria-labelledby="naoTem-label"><g:formatBoolean boolean="${saneamentoResiduoSolidoInstance?.naoTem}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoResiduoSolidoInstance?.outroEfluente}">
				<li class="fieldcontain">
					<span id="outroEfluente-label" class="property-label"><g:message code="saneamentoResiduoSolido.outroEfluente.label" default="Outro" /></span>
					
						<span class="property-value" aria-labelledby="outroEfluente-label"><g:fieldValue bean="${saneamentoResiduoSolidoInstance}" field="outroEfluente"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${saneamentoResiduoSolidoInstance?.esgotoCeuAberto}">
				<li class="fieldcontain">
					<span id="esgotoCeuAberto-label" class="property-label"><g:message code="saneamentoResiduoSolido.esgotoCeuAberto.label" default="Esgoto a céu aberto" /></span>
					
						<span class="property-value" aria-labelledby="esgotoCeuAberto-label"><g:formatBoolean boolean="${saneamentoResiduoSolidoInstance?.esgotoCeuAberto}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoResiduoSolidoInstance?.esgPrivada}">
				<li class="fieldcontain">
					<span id="esgPrivada-label" class="property-label"><g:message code="saneamentoResiduoSolido.esgPrivada.label" default="Privada ou casinha" /></span>
					
						<span class="property-value" aria-labelledby="esgPrivada-label"><g:formatBoolean boolean="${saneamentoResiduoSolidoInstance?.esgPrivada}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoResiduoSolidoInstance?.esgNegra}">
				<li class="fieldcontain">
					<span id="esgNegra-label" class="property-label"><g:message code="saneamentoResiduoSolido.esgNegra.label" default="Fossa negra" /></span>
					
						<span class="property-value" aria-labelledby="esgNegra-label"><g:formatBoolean boolean="${saneamentoResiduoSolidoInstance?.esgNegra}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoResiduoSolidoInstance?.outroEsgoto}">
				<li class="fieldcontain">
					<span id="outroEsgoto-label" class="property-label"><g:message code="saneamentoResiduoSolido.outroEsgoto.label" default="Outros" /></span>
					
						<span class="property-value" aria-labelledby="outroEsgoto-label"><g:fieldValue bean="${saneamentoResiduoSolidoInstance}" field="outroEsgoto"/></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoResiduoSolidoInstance?.lixoCeuAberto}">
				<li class="fieldcontain">
					<span id="lixoCeuAberto-label" class="property-label"><g:message code="saneamentoResiduoSolido.lixoCeuAberto.label" default="A céu aberto" /></span>
					
						<span class="property-value" aria-labelledby="lixoCeuAberto-label"><g:formatBoolean boolean="${saneamentoResiduoSolidoInstance?.lixoCeuAberto}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoResiduoSolidoInstance?.lixoNascente}">
				<li class="fieldcontain">
					<span id="lixoNascente-label" class="property-label"><g:message code="saneamentoResiduoSolido.lixoNascente.label" default="Em nascente, rio e córrego" /></span>
					
						<span class="property-value" aria-labelledby="lixoNascente-label"><g:formatBoolean boolean="${saneamentoResiduoSolidoInstance?.lixoNascente}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoResiduoSolidoInstance?.lixoQueimado}">
				<li class="fieldcontain">
					<span id="lixoQueimado-label" class="property-label"><g:message code="saneamentoResiduoSolido.lixoQueimado.label" default="Queimado" /></span>
					
						<span class="property-value" aria-labelledby="lixoQueimado-label"><g:formatBoolean boolean="${saneamentoResiduoSolidoInstance?.lixoQueimado}" /></span>
					
				</li>
				</g:if>

				<g:if test="${saneamentoResiduoSolidoInstance?.lixoEnterrado}">
				<li class="fieldcontain">
					<span id="lixoEnterrado-label" class="property-label"><g:message code="saneamentoResiduoSolido.lixoEnterrado.label" default="Enterrado" /></span>
					
						<span class="property-value" aria-labelledby="lixoEnterrado-label"><g:formatBoolean boolean="${saneamentoResiduoSolidoInstance?.lixoEnterrado}" /></span>
					
				</li>
				</g:if>
			
			
			
				<g:if test="${saneamentoResiduoSolidoInstance?.lixoReciclado}">
				<li class="fieldcontain">
					<span id="lixoReciclado-label" class="property-label"><g:message code="saneamentoResiduoSolido.lixoReciclado.label" default="Reciclado" /></span>
					
						<span class="property-value" aria-labelledby="lixoReciclado-label"><g:formatBoolean boolean="${saneamentoResiduoSolidoInstance?.lixoReciclado}" /></span>
					
				</li>
				</g:if>
			
			

			
			
				<g:if test="${saneamentoResiduoSolidoInstance?.outroLixo}">
				<li class="fieldcontain">
					<span id="outroLixo-label" class="property-label"><g:message code="saneamentoResiduoSolido.outroLixo.label" default="Outro" /></span>
					
						<span class="property-value" aria-labelledby="outroLixo-label"><g:fieldValue bean="${saneamentoResiduoSolidoInstance}" field="outroLixo"/></span>
					
				</li>
				</g:if>				
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${saneamentoResiduoSolidoInstance?.id}" />
					<g:link class="edit" action="edit" id="${saneamentoResiduoSolidoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
