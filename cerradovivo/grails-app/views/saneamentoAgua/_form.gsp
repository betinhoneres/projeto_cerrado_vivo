<%@ page import="br.com.cerradovivo.SaneamentoAgua" %>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="saneamentoAgua.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${saneamentoAguaInstance?.propriedade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'corrego', 'error')} ">
	<label for="corrego">
		<g:message code="saneamentoAgua.corrego.label" default="Córrego" />
		
	</label>
	<g:textField name="corrego" value="${saneamentoAguaInstance?.corrego}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'nascente', 'error')} ">
	<label for="nascente">
		<g:message code="saneamentoAgua.nascente.label" default="Nascente" />
		
	</label>
	<g:textField name="nascente" value="${saneamentoAguaInstance?.nascente}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'cisterna', 'error')} ">
	<label for="cisterna">
		<g:message code="saneamentoAgua.cisterna.label" default="Cisterna" />
		
	</label>
	<g:textField name="cisterna" value="${saneamentoAguaInstance?.cisterna}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'rio', 'error')} ">
	<label for="rio">
		<g:message code="saneamentoAgua.rio.label" default="Rio" />
		
	</label>
	<g:textField name="rio" value="${saneamentoAguaInstance?.rio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'represa', 'error')} ">
	<label for="represa">
		<g:message code="saneamentoAgua.represa.label" default="Represa" />
		
	</label>
	<g:textField name="represa" value="${saneamentoAguaInstance?.represa}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'outrasFontes', 'error')} ">
	<label for="outrasFontes">
		<g:message code="saneamentoAgua.outrasFontes.label" default="Outros" />
		
	</label>
	<g:textField name="outrasFontes" value="${saneamentoAguaInstance?.outrasFontes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'gravidade', 'error')} ">
	<label for="gravidade">
		<g:message code="saneamentoAgua.gravidade.label" default="Gravidade" />
		
	</label>
	<g:checkBox name="gravidade" value="${saneamentoAguaInstance?.gravidade}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'bombaEletricaCisterna', 'error')} ">
	<label for="bombaEletricaCisterna">
		<g:message code="saneamentoAgua.bombaEletricaCisterna.label" default="Bomba elétrica na cisterna" />
		
	</label>
	<g:checkBox name="bombaEletricaCisterna" value="${saneamentoAguaInstance?.bombaEletricaCisterna}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'bombaEletricaOutro', 'error')} ">
	<label for="bombaEletricaOutro">
		<g:message code="saneamentoAgua.bombaEletricaOutro.label" default="Bomba elétrica no córrego, rio, nascente, e represa" />
		
	</label>
	<g:checkBox name="bombaEletricaOutro" value="${saneamentoAguaInstance?.bombaEletricaOutro}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'rodaDagua', 'error')} ">
	<label for="rodaDagua">
		<g:message code="saneamentoAgua.rodaDagua.label" default="Roda d'água" />
		
	</label>
	<g:checkBox name="rodaDagua" value="${saneamentoAguaInstance?.rodaDagua}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'outroAbastecimento', 'error')} ">
	<label for="outroAbastecimento">
		<g:message code="saneamentoAgua.outroAbastecimento.label" default="Outro" />
		
	</label>
	<g:textField name="outroAbastecimento" value="${saneamentoAguaInstance?.outroAbastecimento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'tratamentoAgua', 'error')} required">
	<label for="tratamentoAgua">
		<g:message code="saneamentoAgua.tratamentoAgua.label" default="1.3.1.3. Tratamento da água de consumo na residência" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tratamentoAgua" from="${br.com.cerradovivo.DmSimNao?.values()}" keys="${br.com.cerradovivo.DmSimNao.values()*.name()}" required="" value="${saneamentoAguaInstance?.tratamentoAgua?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'filtrada', 'error')} ">
	<label for="filtrada">
		<g:message code="saneamentoAgua.filtrada.label" default="Filtrada" />
		
	</label>
	<g:checkBox name="filtrada" value="${saneamentoAguaInstance?.filtrada}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'diretoFonte', 'error')} ">
	<label for="diretoFonte">
		<g:message code="saneamentoAgua.diretoFonte.label" default="Direto da fonte" />
		
	</label>
	<g:checkBox name="diretoFonte" value="${saneamentoAguaInstance?.diretoFonte}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'coada', 'error')} ">
	<label for="coada">
		<g:message code="saneamentoAgua.coada.label" default="Coada" />
		
	</label>
	<g:checkBox name="coada" value="${saneamentoAguaInstance?.coada}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'aguaSanitaria', 'error')} ">
	<label for="aguaSanitaria">
		<g:message code="saneamentoAgua.aguaSanitaria.label" default="Tratada com água sanitária" />
		
	</label>
	<g:checkBox name="aguaSanitaria" value="${saneamentoAguaInstance?.aguaSanitaria}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'cloro', 'error')} ">
	<label for="cloro">
		<g:message code="saneamentoAgua.cloro.label" default="Tratamento com cloro" />
		
	</label>
	<g:checkBox name="cloro" value="${saneamentoAguaInstance?.cloro}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'fervida', 'error')} ">
	<label for="fervida">
		<g:message code="saneamentoAgua.fervida.label" default="Fervida" />
		
	</label>
	<g:checkBox name="fervida" value="${saneamentoAguaInstance?.fervida}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'coadaFervida', 'error')} ">
	<label for="coadaFervida">
		<g:message code="saneamentoAgua.coadaFervida.label" default="Coada/fervida" />
		
	</label>
	<g:checkBox name="coadaFervida" value="${saneamentoAguaInstance?.coadaFervida}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'coadaFiltrada', 'error')} ">
	<label for="coadaFiltrada">
		<g:message code="saneamentoAgua.coadaFiltrada.label" default="Coada/filtrada" />
		
	</label>
	<g:checkBox name="coadaFiltrada" value="${saneamentoAguaInstance?.coadaFiltrada}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saneamentoAguaInstance, field: 'outroTratamento', 'error')} ">
	<label for="outroTratamento">
		<g:message code="saneamentoAgua.outroTratamento.label" default="Outro" />
		
	</label>
	<g:textField name="outroTratamento" value="${saneamentoAguaInstance?.outroTratamento}"/>
</div>