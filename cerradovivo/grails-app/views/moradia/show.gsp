
<%@ page import="br.com.cerradovivo.Moradia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'moradia.label', default: 'Moradia')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-moradia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-moradia" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list moradia">
			
				<g:if test="${moradiaInstance?.propriedade}">
				<li class="fieldcontain">
					<span id="propriedade-label" class="property-label"><g:message code="moradia.propriedade.label" default="Propriedade" /></span>
					
						<span class="property-value" aria-labelledby="propriedade-label"><g:link controller="propriedade" action="show" id="${moradiaInstance?.propriedade?.id}">${moradiaInstance?.propriedade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${moradiaInstance?.numeroComodos}">
				<li class="fieldcontain">
					<span id="numeroComodos-label" class="property-label"><g:message code="moradia.numeroComodos.label" default="Número de cômodos" /></span>
					
						<span class="property-value" aria-labelledby="numeroComodos-label"><g:fieldValue bean="${moradiaInstance}" field="numeroComodos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moradiaInstance?.tamanho}">
				<li class="fieldcontain">
					<span id="tamanho-label" class="property-label"><g:message code="moradia.tamanho.label" default="Tamanho da moradia em m²" /></span>
					
						<span class="property-value" aria-labelledby="tamanho-label"><g:fieldValue bean="${moradiaInstance}" field="tamanho"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moradiaInstance?.tipoMoradia}">
				<li class="fieldcontain">
					<span id="tipoMoradia-label" class="property-label"><g:message code="moradia.tipoMoradia.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipoMoradia-label"><g:fieldValue bean="${moradiaInstance}" field="tipoMoradia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moradiaInstance?.tipoCobertura}">
				<li class="fieldcontain">
					<span id="tipoCobertura-label" class="property-label"><g:message code="moradia.tipoCobertura.label" default="Cobertura" /></span>
					
						<span class="property-value" aria-labelledby="tipoCobertura-label"><g:fieldValue bean="${moradiaInstance}" field="tipoCobertura"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moradiaInstance?.tipoPiso}">
				<li class="fieldcontain">
					<span id="tipoPiso-label" class="property-label"><g:message code="moradia.tipoPiso.label" default="Piso" /></span>
					
						<span class="property-value" aria-labelledby="tipoPiso-label"><g:fieldValue bean="${moradiaInstance}" field="tipoPiso"/></span>
					
				</li>
				</g:if>
			
			
			<!--  1.2.6 Situação atual		 -->
			
				<g:if test="${moradiaInstance?.comAcabamento}">
				<li class="fieldcontain">
					<span id="comAcabamento-label" class="property-label"><g:message code="moradia.comAcabamento.label" default="Residência com acabamento" /></span>
					
						<span class="property-value" aria-labelledby="comAcabamento-label"><g:formatBoolean boolean="${moradiaInstance?.comAcabamento}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${moradiaInstance?.esgoto}">
				<li class="fieldcontain">
					<span id="esgoto-label" class="property-label"><g:message code="moradia.esgoto.label" default="Rede de esgoto" /></span>
					
						<span class="property-value" aria-labelledby="esgoto-label"><g:formatBoolean boolean="${moradiaInstance?.esgoto}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${moradiaInstance?.banheiro}">
				<li class="fieldcontain">
					<span id="banheiro-label" class="property-label"><g:message code="moradia.banheiro.label" default="Banheiro" /></span>
					
						<span class="property-value" aria-labelledby="banheiro-label"><g:formatBoolean boolean="${moradiaInstance?.banheiro}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${moradiaInstance?.agua}">
				<li class="fieldcontain">
					<span id="agua-label" class="property-label"><g:message code="moradia.agua.label" default="Água" /></span>
					
						<span class="property-value" aria-labelledby="agua-label"><g:formatBoolean boolean="${moradiaInstance?.agua}" /></span>
					
				</li>
				</g:if>

				<g:if test="${moradiaInstance?.energiaEletrica}">
				<li class="fieldcontain">
					<span id="energiaEletrica-label" class="property-label"><g:message code="moradia.energiaEletrica.label" default="Energia Elétrica" /></span>
					
						<span class="property-value" aria-labelledby="energiaEletrica-label"><g:formatBoolean boolean="${moradiaInstance?.energiaEletrica}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${moradiaInstance?.forro}">
				<li class="fieldcontain">
					<span id="forro-label" class="property-label"><g:message code="moradia.forro.label" default="Forro" /></span>
					
						<span class="property-value" aria-labelledby="forro-label"><g:formatBoolean boolean="${moradiaInstance?.forro}" /></span>
					
				</li>
				</g:if>

				<g:if test="${moradiaInstance?.semAcabamento}">
				<li class="fieldcontain">
					<span id="semAcabamento-label" class="property-label"><g:message code="moradia.semAcabamento.label" default="Residência sem acabamento (sem reboco, sem pintura, piso, banheiros inacabados, etc.)" /></span>
					
						<span class="property-value" aria-labelledby="semAcabamento-label"><g:formatBoolean boolean="${moradiaInstance?.semAcabamento}" /></span>
					
				</li>
				</g:if>

				<g:if test="${moradiaInstance?.fosa}">
				<li class="fieldcontain">
					<span id="fosa-label" class="property-label"><g:message code="moradia.fosa.label" default="Fossa" /></span>
					
						<span class="property-value" aria-labelledby="fosa-label"><g:formatBoolean boolean="${moradiaInstance?.fosa}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${moradiaInstance?.chuveiro}">
				<li class="fieldcontain">
					<span id="chuveiro-label" class="property-label"><g:message code="moradia.chuveiro.label" default="Chuveiro" /></span>
					
						<span class="property-value" aria-labelledby="chuveiro-label"><g:formatBoolean boolean="${moradiaInstance?.chuveiro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${moradiaInstance?.outros}">
				<li class="fieldcontain">
					<span id="outros-label" class="property-label"><g:message code="moradia.outros.label" default="Outros" /></span>
					
						<span class="property-value" aria-labelledby="outros-label"><g:fieldValue bean="${moradiaInstance}" field="outros"/></span>
					
				</li>
				</g:if>
			
			<!--  FIM 1.2.6 Situação atual		 -->
			
			
			<!--  1.2.7 			INICIO							 -->			

				<g:if test="${moradiaInstance?.qtdAutomovel}">
				<li class="fieldcontain">
					<span id="qtdAutomovel-label" class="property-label"><g:message code="moradia.qtdAutomovel.label" default="Automóvel?" /></span>
					
						<span class="property-value" aria-labelledby="qtdAutomovel-label"><g:fieldValue bean="${moradiaInstance}" field="qtdAutomovel"/></span>
					
				</li>
				</g:if>

				<g:if test="${moradiaInstance?.qtdBanheiro}">
				<li class="fieldcontain">
					<span id="qtdBanheiro-label" class="property-label"><g:message code="moradia.qtdBanheiro.label" default="Banheiro?" /></span>
					
						<span class="property-value" aria-labelledby="qtdBanheiro-label"><g:fieldValue bean="${moradiaInstance}" field="qtdBanheiro"/></span>
					
				</li>
				</g:if>

				<g:if test="${moradiaInstance?.qtdGeladeira}">
				<li class="fieldcontain">
					<span id="qtdGeladeira-label" class="property-label"><g:message code="moradia.qtdGeladeira.label" default="Geladeira?" /></span>
					
						<span class="property-value" aria-labelledby="qtdGeladeira-label"><g:fieldValue bean="${moradiaInstance}" field="qtdGeladeira"/></span>
					
				</li>
				</g:if>

				<g:if test="${moradiaInstance?.qtdTelevisao}">
				<li class="fieldcontain">
					<span id="qtdTelevisao-label" class="property-label"><g:message code="moradia.qtdTelevisao.label" default="Televisao?" /></span>
					
						<span class="property-value" aria-labelledby="qtdTelevisao-label"><g:fieldValue bean="${moradiaInstance}" field="qtdTelevisao"/></span>
					
				</li>
				</g:if>				
							
				<g:if test="${moradiaInstance?.qtdAparelhoSom}">
				<li class="fieldcontain">
					<span id="qtdAparelhoSom-label" class="property-label"><g:message code="moradia.qtdAparelhoSom.label" default="Aparelho de som?" /></span>
					
						<span class="property-value" aria-labelledby="qtdAparelhoSom-label"><g:fieldValue bean="${moradiaInstance}" field="qtdAparelhoSom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moradiaInstance?.qtdLavadouraRoupa}">
				<li class="fieldcontain">
					<span id="qtdLavadouraRoupa-label" class="property-label"><g:message code="moradia.qtdLavadouraRoupa.label" default="Lavadoura de roupa?" /></span>
					
						<span class="property-value" aria-labelledby="qtdLavadouraRoupa-label"><g:fieldValue bean="${moradiaInstance}" field="qtdLavadouraRoupa"/></span>
					
				</li>
				</g:if>
							
				<g:if test="${moradiaInstance?.qtdFogaoGas}">
				<li class="fieldcontain">
					<span id="qtdFogaoGas-label" class="property-label"><g:message code="moradia.qtdFogaoGas.label" default="Fogão a gás?" /></span>
					
						<span class="property-value" aria-labelledby="qtdFogaoGas-label"><g:fieldValue bean="${moradiaInstance}" field="qtdFogaoGas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moradiaInstance?.qtdFogaoLenha}">
				<li class="fieldcontain">
					<span id="qtdFogaoLenha-label" class="property-label"><g:message code="moradia.qtdFogaoLenha.label" default="Fogão a lenha?" /></span>
					
						<span class="property-value" aria-labelledby="qtdFogaoLenha-label"><g:fieldValue bean="${moradiaInstance}" field="qtdFogaoLenha"/></span>
					
				</li>
				</g:if>
											
				<g:if test="${moradiaInstance?.qtdMotocicleta}">
				<li class="fieldcontain">
					<span id="qtdMotocicleta-label" class="property-label"><g:message code="moradia.qtdMotocicleta.label" default="Motocicleta?" /></span>
					
						<span class="property-value" aria-labelledby="qtdMotocicleta-label"><g:fieldValue bean="${moradiaInstance}" field="qtdMotocicleta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moradiaInstance?.qtdQuartos}">
				<li class="fieldcontain">
					<span id="qtdQuartos-label" class="property-label"><g:message code="moradia.qtdQuartos.label" default="Quartos?" /></span>
					
						<span class="property-value" aria-labelledby="qtdQuartos-label"><g:fieldValue bean="${moradiaInstance}" field="qtdQuartos"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${moradiaInstance?.qtdFreezer}">
				<li class="fieldcontain">
					<span id="qtdFreezer-label" class="property-label"><g:message code="moradia.qtdFreezer.label" default="Freezer?" /></span>
					
						<span class="property-value" aria-labelledby="qtdFreezer-label"><g:fieldValue bean="${moradiaInstance}" field="qtdFreezer"/></span>
					
				</li>
				</g:if>

				<g:if test="${moradiaInstance?.qtdDvd}">
				<li class="fieldcontain">
					<span id="qtdDvd-label" class="property-label"><g:message code="moradia.qtdDvd.label" default="DVD?" /></span>
					
						<span class="property-value" aria-labelledby="qtdDvd-label"><g:fieldValue bean="${moradiaInstance}" field="qtdDvd"/></span>
					
				</li>
				</g:if>
																			
				<g:if test="${moradiaInstance?.qtdComputador}">
				<li class="fieldcontain">
					<span id="qtdComputador-label" class="property-label"><g:message code="moradia.qtdComputador.label" default="Computador (micro, laptop ou notebook)?" /></span>
					
						<span class="property-value" aria-labelledby="qtdComputador-label"><g:fieldValue bean="${moradiaInstance}" field="qtdComputador"/></span>
					
				</li>
				</g:if>

				<g:if test="${moradiaInstance?.qtdTanquinhoLavarRoupa}">
				<li class="fieldcontain">
					<span id="qtdTanquinhoLavarRoupa-label" class="property-label"><g:message code="moradia.qtdTanquinhoLavarRoupa.label" default="Tanquinho de lavar roupa?" /></span>
					
						<span class="property-value" aria-labelledby="qtdTanquinhoLavarRoupa-label"><g:fieldValue bean="${moradiaInstance}" field="qtdTanquinhoLavarRoupa"/></span>
					
				</li>
				</g:if>
							
				<g:if test="${moradiaInstance?.qtdMicroondas}">
				<li class="fieldcontain">
					<span id="qtdMicroondas-label" class="property-label"><g:message code="moradia.qtdMicroondas.label" default="Microondas?" /></span>
					
						<span class="property-value" aria-labelledby="qtdMicroondas-label"><g:fieldValue bean="${moradiaInstance}" field="qtdMicroondas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moradiaInstance?.qtdCelular}">
				<li class="fieldcontain">
					<span id="qtdCelular-label" class="property-label"><g:message code="moradia.qtdCelular.label" default="Telefone celular?" /></span>
					
						<span class="property-value" aria-labelledby="qtdCelular-label"><g:fieldValue bean="${moradiaInstance}" field="qtdCelular"/></span>
					
				</li>
				</g:if>
							
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${moradiaInstance?.id}" />
					<g:link class="edit" action="edit" id="${moradiaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:actionSubmit class="previous" action="previous" value="${message(code: 'default.button.previous.label', default: 'Anterior')}" />
					<g:actionSubmit class="next" action="next" value="${message(code: 'default.button.next.label', default: 'Próximo')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
