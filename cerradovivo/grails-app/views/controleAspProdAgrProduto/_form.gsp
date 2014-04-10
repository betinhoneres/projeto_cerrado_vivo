<%@ page import="br.com.cerradovivo.ControleAspProdAgrProduto" %>



<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrProdutoInstance, field: 'produtoAgricola', 'error')} required">
	<label for="produtoAgricola">
		<g:message code="controleAspProdAgrProduto.produtoAgricola.label" default="Produto Agricola" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produtoAgricola" name="produtoAgricola.id" from="${br.com.cerradovivo.ProdutoAgricola.list()}" optionKey="id" required="" value="${controleAspProdAgrProdutoInstance?.produtoAgricola?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrProdutoInstance, field: 'um', 'error')} required">
	<label for="um">
		<g:message code="controleAspProdAgrProduto.um.label" default="Um" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="um" from="${br.com.cerradovivo.DmUnidadeMedida?.values()}" keys="${br.com.cerradovivo.DmUnidadeMedida.values()*.name()}" required="" value="${controleAspProdAgrProdutoInstance?.um?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrProdutoInstance, field: 'consumoProprio', 'error')} ">
	<label for="consumoProprio">
		<g:message code="controleAspProdAgrProduto.consumoProprio.label" default="Consumo Proprio" />
		
	</label>
	<g:checkBox name="consumoProprio" value="${controleAspProdAgrProdutoInstance?.consumoProprio}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrProdutoInstance, field: 'comercioExcedente', 'error')} ">
	<label for="comercioExcedente">
		<g:message code="controleAspProdAgrProduto.comercioExcedente.label" default="Comercio Excedente" />
		
	</label>
	<g:checkBox name="comercioExcedente" value="${controleAspProdAgrProdutoInstance?.comercioExcedente}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrProdutoInstance, field: 'comercioProducao', 'error')} ">
	<label for="comercioProducao">
		<g:message code="controleAspProdAgrProduto.comercioProducao.label" default="Comercio Producao" />
		
	</label>
	<g:checkBox name="comercioProducao" value="${controleAspProdAgrProdutoInstance?.comercioProducao}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrProdutoInstance, field: 'agroindustrializar', 'error')} ">
	<label for="agroindustrializar">
		<g:message code="controleAspProdAgrProduto.agroindustrializar.label" default="Agroindustrializar" />
		
	</label>
	<g:checkBox name="agroindustrializar" value="${controleAspProdAgrProdutoInstance?.agroindustrializar}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrProdutoInstance, field: 'aspectoProdutivoAgricola', 'error')} required">
	<label for="aspectoProdutivoAgricola">
		<g:message code="controleAspProdAgrProduto.aspectoProdutivoAgricola.label" default="Aspecto Produtivo Agricola" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aspectoProdutivoAgricola" name="aspectoProdutivoAgricola.id" from="${br.com.cerradovivo.AspectoProdutivoAgricola.list()}" optionKey="id" required="" value="${controleAspProdAgrProdutoInstance?.aspectoProdutivoAgricola?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdAgrProdutoInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="controleAspProdAgrProduto.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidade" value="${fieldValue(bean: controleAspProdAgrProdutoInstance, field: 'quantidade')}" required=""/>
</div>

