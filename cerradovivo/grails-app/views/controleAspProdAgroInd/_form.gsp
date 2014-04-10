<%@ page import="br.com.cerradovivo.ControleAspProdAgroInd" %>



<div class="fieldcontain ${hasErrors(bean: controleAspProdAgroIndInstance, field: 'produtoNaoAgricola', 'error')} required">
	<label for="produtoNaoAgricola">
		<g:message code="controleAspProdAgroInd.produtoNaoAgricola.label" default="Produto Nao Agricola" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produtoNaoAgricola" name="produtoNaoAgricola.id" from="${br.com.cerradovivo.ProdutoNaoAgricola.list()}" optionKey="id" required="" value="${controleAspProdAgroIndInstance?.produtoNaoAgricola?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgroIndInstance, field: 'consumoProprio', 'error')} ">
	<label for="consumoProprio">
		<g:message code="controleAspProdAgroInd.consumoProprio.label" default="Consumo Proprio" />
		
	</label>
	<g:checkBox name="consumoProprio" value="${controleAspProdAgroIndInstance?.consumoProprio}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgroIndInstance, field: 'comercioExcedente', 'error')} ">
	<label for="comercioExcedente">
		<g:message code="controleAspProdAgroInd.comercioExcedente.label" default="Comercio Excedente" />
		
	</label>
	<g:checkBox name="comercioExcedente" value="${controleAspProdAgroIndInstance?.comercioExcedente}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgroIndInstance, field: 'comercioProducao', 'error')} ">
	<label for="comercioProducao">
		<g:message code="controleAspProdAgroInd.comercioProducao.label" default="Comercio Producao" />
		
	</label>
	<g:checkBox name="comercioProducao" value="${controleAspProdAgroIndInstance?.comercioProducao}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgroIndInstance, field: 'agroindustrializar', 'error')} ">
	<label for="agroindustrializar">
		<g:message code="controleAspProdAgroInd.agroindustrializar.label" default="Agroindustrializar" />
		
	</label>
	<g:checkBox name="agroindustrializar" value="${controleAspProdAgroIndInstance?.agroindustrializar}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgroIndInstance, field: 'aspectoProdutivoAgroIndustrializado', 'error')} required">
	<label for="aspectoProdutivoAgroIndustrializado">
		<g:message code="controleAspProdAgroInd.aspectoProdutivoAgroIndustrializado.label" default="Aspecto Produtivo Agro Industrializado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aspectoProdutivoAgroIndustrializado" name="aspectoProdutivoAgroIndustrializado.id" from="${br.com.cerradovivo.AspectoProdutivoAgroIndustrializado.list()}" optionKey="id" required="" value="${controleAspProdAgroIndInstance?.aspectoProdutivoAgroIndustrializado?.id}" class="many-to-one"/>
</div>

