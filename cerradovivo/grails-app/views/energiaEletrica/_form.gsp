<%@ page import="br.com.cerradovivo.EnergiaEletrica" %>



<div class="fieldcontain ${hasErrors(bean: energiaEletricaInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="energiaEletrica.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${energiaEletricaInstance?.propriedade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energiaEletricaInstance, field: 'geradorMotor', 'error')} ">
	<label for="geradorMotor">
		<g:message code="energiaEletrica.geradorMotor.label" default="Gerador Motor" />
		
	</label>
	<g:checkBox name="geradorMotor" value="${energiaEletricaInstance?.geradorMotor}" />
</div>

<div class="fieldcontain ${hasErrors(bean: energiaEletricaInstance, field: 'outro', 'error')} ">
	<label for="outro">
		<g:message code="energiaEletrica.outro.label" default="Outro" />
		
	</label>
	<g:textField name="outro" value="${energiaEletricaInstance?.outro}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energiaEletricaInstance, field: 'placaSolar', 'error')} ">
	<label for="placaSolar">
		<g:message code="energiaEletrica.placaSolar.label" default="Placa Solar" />
		
	</label>
	<g:checkBox name="placaSolar" value="${energiaEletricaInstance?.placaSolar}" />
</div>

<div class="fieldcontain ${hasErrors(bean: energiaEletricaInstance, field: 'possuiEnergia', 'error')} required">
	<label for="possuiEnergia">
		<g:message code="energiaEletrica.possuiEnergia.label" default="Possui Energia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="possuiEnergia" from="${br.com.cerradovivo.DmSimNao?.values()}" keys="${br.com.cerradovivo.DmSimNao.values()*.name()}" required="" value="${energiaEletricaInstance?.possuiEnergia?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energiaEletricaInstance, field: 'redeGeral', 'error')} ">
	<label for="redeGeral">
		<g:message code="energiaEletrica.redeGeral.label" default="Rede Geral" />
		
	</label>
	<g:checkBox name="redeGeral" value="${energiaEletricaInstance?.redeGeral}" />
</div>

