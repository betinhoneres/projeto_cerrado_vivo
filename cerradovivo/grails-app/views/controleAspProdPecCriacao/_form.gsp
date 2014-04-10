<%@ page import="br.com.cerradovivo.ControleAspProdPecCriacao" %>



<div class="fieldcontain ${hasErrors(bean: controleAspProdPecCriacaoInstance, field: 'animalCriacao', 'error')} required">
	<label for="animalCriacao">
		<g:message code="controleAspProdPecCriacao.animalCriacao.label" default="Animal Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="animalCriacao" name="animalCriacao.id" from="${br.com.cerradovivo.AnimalCriacao.list()}" optionKey="id" required="" value="${controleAspProdPecCriacaoInstance?.animalCriacao?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdPecCriacaoInstance, field: 'numeroAnimais', 'error')} required">
	<label for="numeroAnimais">
		<g:message code="controleAspProdPecCriacao.numeroAnimais.label" default="Numero Animais" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdPecCriacaoInstance, field: 'consumoProprio', 'error')} ">
	<label for="consumoProprio">
		<g:message code="controleAspProdPecCriacao.consumoProprio.label" default="Consumo Proprio" />
		
	</label>
	<g:checkBox name="consumoProprio" value="${controleAspProdPecCriacaoInstance?.consumoProprio}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdPecCriacaoInstance, field: 'comercioExcedente', 'error')} ">
	<label for="comercioExcedente">
		<g:message code="controleAspProdPecCriacao.comercioExcedente.label" default="Comercio Excedente" />
		
	</label>
	<g:checkBox name="comercioExcedente" value="${controleAspProdPecCriacaoInstance?.comercioExcedente}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdPecCriacaoInstance, field: 'comercioProducao', 'error')} ">
	<label for="comercioProducao">
		<g:message code="controleAspProdPecCriacao.comercioProducao.label" default="Comercio Producao" />
		
	</label>
	<g:checkBox name="comercioProducao" value="${controleAspProdPecCriacaoInstance?.comercioProducao}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdPecCriacaoInstance, field: 'agroindustrializar', 'error')} ">
	<label for="agroindustrializar">
		<g:message code="controleAspProdPecCriacao.agroindustrializar.label" default="Agroindustrializar" />
		
	</label>
	<g:checkBox name="agroindustrializar" value="${controleAspProdPecCriacaoInstance?.agroindustrializar}" />
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspProdPecCriacaoInstance, field: 'aspectoProdutivoPecuaria', 'error')} required">
	<label for="aspectoProdutivoPecuaria">
		<g:message code="controleAspProdPecCriacao.aspectoProdutivoPecuaria.label" default="Aspecto Produtivo Pecuaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aspectoProdutivoPecuaria" name="aspectoProdutivoPecuaria.id" from="${br.com.cerradovivo.AspectoProdutivoPecuaria.list()}" optionKey="id" required="" value="${controleAspProdPecCriacaoInstance?.aspectoProdutivoPecuaria?.id}" class="many-to-one"/>
</div>

