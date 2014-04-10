<%@ page import="br.com.cerradovivo.ControleTransporteCidade" %>



<div class="fieldcontain ${hasErrors(bean: controleTransporteCidadeInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="controleTransporteCidade.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cidade" name="cidade.id" from="${br.com.cerradovivo.Cidade.list()}" optionKey="id" required="" value="${controleTransporteCidadeInstance?.cidade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleTransporteCidadeInstance, field: 'distancia', 'error')} required">
	<label for="distancia">
		<g:message code="controleTransporteCidade.distancia.label" default="Distancia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="distancia" from="${br.com.cerradovivo.DmTransporteDistancia?.values()}" keys="${br.com.cerradovivo.DmTransporteDistancia.values()*.name()}" required="" value="${controleTransporteCidadeInstance?.distancia?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleTransporteCidadeInstance, field: 'transporte', 'error')} required">
	<label for="transporte">
		<g:message code="controleTransporteCidade.transporte.label" default="Transporte" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="transporte" name="transporte.id" from="${br.com.cerradovivo.Transporte.list()}" optionKey="id" required="" value="${controleTransporteCidadeInstance?.transporte?.id}" class="many-to-one"/>
</div>

