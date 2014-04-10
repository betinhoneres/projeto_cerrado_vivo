<%@ page import="br.com.cerradovivo.ControleAspProdPecProduto" %>



<div class="fieldcontain ${hasErrors(bean: controleAspProdPecProdutoInstance, field: 'produtoPecuaria', 'error')} required">
	<label for="produtoPecuaria">
		<g:message code="controleAspProdPecProduto.produtoPecuaria.label" default="Produto Pecuaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produtoPecuaria" name="produtoPecuaria.id" from="${br.com.cerradovivo.ProdutoPecuaria.list()}" optionKey="id" required="" value="${controleAspProdPecProdutoInstance?.produtoPecuaria?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdPecProdutoInstance, field: 'numeroAnimais', 'error')} required">
	<label for="numeroAnimais">
		<g:message code="controleAspProdPecProduto.numeroAnimais.label" default="Numero Animais" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdPecProdutoInstance, field: 'consumoProprio', 'error')} ">
	<label for="consumoProprio">
		<g:message code="controleAspProdPecProduto.consumoProprio.label" default="Consumo Proprio" />
		
	</label>
	<g:checkBox name="consumoProprio" value="${controleAspProdPecProdutoInstance?.consumoProprio}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdPecProdutoInstance, field: 'comercioExcedente', 'error')} ">
	<label for="comercioExcedente">
		<g:message code="controleAspProdPecProduto.comercioExcedente.label" default="Comercio Excedente" />
		
	</label>
	<g:checkBox name="comercioExcedente" value="${controleAspProdPecProdutoInstance?.comercioExcedente}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdPecProdutoInstance, field: 'comercioProducao', 'error')} ">
	<label for="comercioProducao">
		<g:message code="controleAspProdPecProduto.comercioProducao.label" default="Comercio Producao" />
		
	</label>
	<g:checkBox name="comercioProducao" value="${controleAspProdPecProdutoInstance?.comercioProducao}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdPecProdutoInstance, field: 'agroindustrializar', 'error')} ">
	<label for="agroindustrializar">
		<g:message code="controleAspProdPecProduto.agroindustrializar.label" default="Agroindustrializar" />
		
	</label>
	<g:checkBox name="agroindustrializar" value="${controleAspProdPecProdutoInstance?.agroindustrializar}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdPecProdutoInstance, field: 'aspectoProdutivoPecuaria', 'error')} required">
	<label for="aspectoProdutivoPecuaria">
		<g:message code="controleAspProdPecProduto.aspectoProdutivoPecuaria.label" default="Aspecto Produtivo Pecuaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aspectoProdutivoPecuaria" name="aspectoProdutivoPecuaria.id" from="${br.com.cerradovivo.AspectoProdutivoPecuaria.list()}" optionKey="id" required="" value="${controleAspProdPecProdutoInstance?.aspectoProdutivoPecuaria?.id}" class="many-to-one"/>
</div>

