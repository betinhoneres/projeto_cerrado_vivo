<%@ page import="br.com.cerradovivo.ControleAspProdAgrCultura" %>



<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrCulturaInstance, field: 'cultura', 'error')} required">
	<label for="cultura">
		<g:message code="controleAspProdAgrCultura.cultura.label" default="Cultura" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cultura" name="cultura.id" from="${br.com.cerradovivo.Cultura.list()}" optionKey="id" required="" value="${controleAspProdAgrCulturaInstance?.cultura?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrCulturaInstance, field: 'um', 'error')} required">
	<label for="um">
		<g:message code="controleAspProdAgrCultura.um.label" default="Um" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="um" from="${br.com.cerradovivo.DmUnidadeMedida?.values()}" keys="${br.com.cerradovivo.DmUnidadeMedida.values()*.name()}" required="" value="${controleAspProdAgrCulturaInstance?.um?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrCulturaInstance, field: 'producao', 'error')} required">
	<label for="producao">
		<g:message code="controleAspProdAgrCultura.producao.label" default="Producao" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="producao" value="${fieldValue(bean: controleAspProdAgrCulturaInstance, field: 'producao')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrCulturaInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="controleAspProdAgrCultura.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area" from="${br.com.cerradovivo.DmUnidadeArea?.values()}" keys="${br.com.cerradovivo.DmUnidadeArea.values()*.name()}" required="" value="${controleAspProdAgrCulturaInstance?.area?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrCulturaInstance, field: 'consumoProprio', 'error')} ">
	<label for="consumoProprio">
		<g:message code="controleAspProdAgrCultura.consumoProprio.label" default="Consumo Proprio" />
		
	</label>
	<g:checkBox name="consumoProprio" value="${controleAspProdAgrCulturaInstance?.consumoProprio}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrCulturaInstance, field: 'comercioExcedente', 'error')} ">
	<label for="comercioExcedente">
		<g:message code="controleAspProdAgrCultura.comercioExcedente.label" default="Comercio Excedente" />
		
	</label>
	<g:checkBox name="comercioExcedente" value="${controleAspProdAgrCulturaInstance?.comercioExcedente}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrCulturaInstance, field: 'comercioProducao', 'error')} ">
	<label for="comercioProducao">
		<g:message code="controleAspProdAgrCultura.comercioProducao.label" default="Comercio Producao" />
		
	</label>
	<g:checkBox name="comercioProducao" value="${controleAspProdAgrCulturaInstance?.comercioProducao}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrCulturaInstance, field: 'agroindustrializar', 'error')} ">
	<label for="agroindustrializar">
		<g:message code="controleAspProdAgrCultura.agroindustrializar.label" default="Agroindustrializar" />
		
	</label>
	<g:checkBox name="agroindustrializar" value="${controleAspProdAgrCulturaInstance?.agroindustrializar}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrCulturaInstance, field: 'aspectoProdutivoAgricola', 'error')} required">
	<label for="aspectoProdutivoAgricola">
		<g:message code="controleAspProdAgrCultura.aspectoProdutivoAgricola.label" default="Aspecto Produtivo Agricola" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aspectoProdutivoAgricola" name="aspectoProdutivoAgricola.id" from="${br.com.cerradovivo.AspectoProdutivoAgricola.list()}" optionKey="id" required="" value="${controleAspProdAgrCulturaInstance?.aspectoProdutivoAgricola?.id}" class="many-to-one"/>
</div>

