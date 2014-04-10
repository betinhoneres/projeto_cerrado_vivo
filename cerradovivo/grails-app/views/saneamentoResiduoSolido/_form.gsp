<%@ page import="br.com.cerradovivo.SaneamentoResiduoSolido" %>



<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="saneamentoResiduoSolido.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${saneamentoResiduoSolidoInstance?.propriedade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'fossaComum', 'error')} ">
	<label for="fossaComum">
		<g:message code="saneamentoResiduoSolido.fossaComum.label" default="Fossa comum (rudimentar)" />
		
	</label>
	<g:checkBox name="fossaComum" value="${saneamentoResiduoSolidoInstance?.fossaComum}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'fosaSeptica', 'error')} ">
	<label for="fosaSeptica">
		<g:message code="saneamentoResiduoSolido.fosaSeptica.label" default="Fossa séptica" />
		
	</label>
	<g:checkBox name="fosaSeptica" value="${saneamentoResiduoSolidoInstance?.fosaSeptica}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'naoTem', 'error')} ">
	<label for="naoTem">
		<g:message code="saneamentoResiduoSolido.naoTem.label" default="Não tem" />
		
	</label>
	<g:checkBox name="naoTem" value="${saneamentoResiduoSolidoInstance?.naoTem}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'outroEfluente', 'error')} ">
	<label for="outroEfluente">
		<g:message code="saneamentoResiduoSolido.outroEfluente.label" default="Outro" />
		
	</label>
	<g:textField name="outroEfluente" value="${saneamentoResiduoSolidoInstance?.outroEfluente}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'esgotoCeuAberto', 'error')} ">
	<label for="esgotoCeuAberto">
		<g:message code="saneamentoResiduoSolido.esgotoCeuAberto.label" default="Esgoto a céu aberto" />
		
	</label>
	<g:checkBox name="esgotoCeuAberto" value="${saneamentoResiduoSolidoInstance?.esgotoCeuAberto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'esgPrivada', 'error')} ">
	<label for="esgPrivada">
		<g:message code="saneamentoResiduoSolido.esgPrivada.label" default="Privada ou casinha" />
		
	</label>
	<g:checkBox name="esgPrivada" value="${saneamentoResiduoSolidoInstance?.esgPrivada}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'esgPeptica', 'error')} ">
	<label for="esgPeptica">
		<g:message code="saneamentoResiduoSolido.esgPeptica.label" default="Fossa séptica" />
		
	</label>
	<g:checkBox name="esgPeptica" value="${saneamentoResiduoSolidoInstance?.esgPeptica}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'esgNegra', 'error')} ">
	<label for="esgNegra">
		<g:message code="saneamentoResiduoSolido.esgNegra.label" default="Fossa negra" />
		
	</label>
	<g:checkBox name="esgNegra" value="${saneamentoResiduoSolidoInstance?.esgNegra}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'outroEsgoto', 'error')} ">
	<label for="outroEsgoto">
		<g:message code="saneamentoResiduoSolido.outroEsgoto.label" default="Outro" />
		
	</label>
	<g:textField name="outroEsgoto" value="${saneamentoResiduoSolidoInstance?.outroEsgoto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'lixoCeuAberto', 'error')} ">
	<label for="lixoCeuAberto">
		<g:message code="saneamentoResiduoSolido.lixoCeuAberto.label" default="A céu aberto" />
		
	</label>
	<g:checkBox name="lixoCeuAberto" value="${saneamentoResiduoSolidoInstance?.lixoCeuAberto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'lixoNascente', 'error')} ">
	<label for="lixoNascente">
		<g:message code="saneamentoResiduoSolido.lixoNascente.label" default="Em nascente, rio e córrego" />
		
	</label>
	<g:checkBox name="lixoNascente" value="${saneamentoResiduoSolidoInstance?.lixoNascente}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'lixoQueimado', 'error')} ">
	<label for="lixoQueimado">
		<g:message code="saneamentoResiduoSolido.lixoQueimado.label" default="Queimado" />
		
	</label>
	<g:checkBox name="lixoQueimado" value="${saneamentoResiduoSolidoInstance?.lixoQueimado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'lixoEnterrado', 'error')} ">
	<label for="lixoEnterrado">
		<g:message code="saneamentoResiduoSolido.lixoEnterrado.label" default="Enterrado" />
		
	</label>
	<g:checkBox name="lixoEnterrado" value="${saneamentoResiduoSolidoInstance?.lixoEnterrado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'lixoReciclado', 'error')} ">
	<label for="lixoReciclado">
		<g:message code="saneamentoResiduoSolido.lixoReciclado.label" default="Reciclado" />
		
	</label>
	<g:checkBox name="lixoReciclado" value="${saneamentoResiduoSolidoInstance?.lixoReciclado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoResiduoSolidoInstance, field: 'outroLixo', 'error')} ">
	<label for="outroLixo">
		<g:message code="saneamentoResiduoSolido.outroLixo.label" default="Outro" />
		
	</label>
	<g:textField name="outroLixo" value="${saneamentoResiduoSolidoInstance?.outroLixo}"/>
</div>