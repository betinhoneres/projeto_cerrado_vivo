<%@ page import="br.com.cerradovivo.AspectoProdutivoPecuaria" %>



<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="aspectoProdutivoPecuaria.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${aspectoProdutivoPecuariaInstance?.propriedade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'ceres', 'error')} ">
	<label for="ceres">
		<g:message code="aspectoProdutivoPecuaria.ceres.label" default="Ceres" />
		
	</label>
	<g:checkBox name="ceres" value="${aspectoProdutivoPecuariaInstance?.ceres}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'controleAspProdPecCriacaos', 'error')} ">
	<label for="controleAspProdPecCriacaos">
		<g:message code="aspectoProdutivoPecuaria.controleAspProdPecCriacaos.label" default="Controle Asp Prod Pec Criacaos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${aspectoProdutivoPecuariaInstance?.controleAspProdPecCriacaos?}" var="c">
    <li><g:link controller="controleAspProdPecCriacao" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="controleAspProdPecCriacao" action="create" params="['aspectoProdutivoPecuaria.id': aspectoProdutivoPecuariaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'controleAspProdPecCriacao.label', default: 'ControleAspProdPecCriacao')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'controleAspProdPecProdutos', 'error')} ">
	<label for="controleAspProdPecProdutos">
		<g:message code="aspectoProdutivoPecuaria.controleAspProdPecProdutos.label" default="Controle Asp Prod Pec Produtos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${aspectoProdutivoPecuariaInstance?.controleAspProdPecProdutos?}" var="c">
    <li><g:link controller="controleAspProdPecProduto" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="controleAspProdPecProduto" action="create" params="['aspectoProdutivoPecuaria.id': aspectoProdutivoPecuariaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'controleAspProdPecProduto.label', default: 'ControleAspProdPecProduto')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'feiraLivre', 'error')} ">
	<label for="feiraLivre">
		<g:message code="aspectoProdutivoPecuaria.feiraLivre.label" default="Feira Livre" />
		
	</label>
	<g:checkBox name="feiraLivre" value="${aspectoProdutivoPecuariaInstance?.feiraLivre}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'feiraProdutor', 'error')} ">
	<label for="feiraProdutor">
		<g:message code="aspectoProdutivoPecuaria.feiraProdutor.label" default="Feira Produtor" />
		
	</label>
	<g:checkBox name="feiraProdutor" value="${aspectoProdutivoPecuariaInstance?.feiraProdutor}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'goianesia', 'error')} ">
	<label for="goianesia">
		<g:message code="aspectoProdutivoPecuaria.goianesia.label" default="Goianesia" />
		
	</label>
	<g:checkBox name="goianesia" value="${aspectoProdutivoPecuariaInstance?.goianesia}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'jaragua', 'error')} ">
	<label for="jaragua">
		<g:message code="aspectoProdutivoPecuaria.jaragua.label" default="Jaragua" />
		
	</label>
	<g:checkBox name="jaragua" value="${aspectoProdutivoPecuariaInstance?.jaragua}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'naPropriedade', 'error')} ">
	<label for="naPropriedade">
		<g:message code="aspectoProdutivoPecuaria.naPropriedade.label" default="Na Propriedade" />
		
	</label>
	<g:checkBox name="naPropriedade" value="${aspectoProdutivoPecuariaInstance?.naPropriedade}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'outroComercioLocal', 'error')} ">
	<label for="outroComercioLocal">
		<g:message code="aspectoProdutivoPecuaria.outroComercioLocal.label" default="Outro Comercio Local" />
		
	</label>
	<g:textField name="outroComercioLocal" value="${aspectoProdutivoPecuariaInstance?.outroComercioLocal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'outroComercioMun', 'error')} ">
	<label for="outroComercioMun">
		<g:message code="aspectoProdutivoPecuaria.outroComercioMun.label" default="Outro Comercio Mun" />
		
	</label>
	<g:textField name="outroComercioMun" value="${aspectoProdutivoPecuariaInstance?.outroComercioMun}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'rianapolis', 'error')} ">
	<label for="rianapolis">
		<g:message code="aspectoProdutivoPecuaria.rianapolis.label" default="Rianapolis" />
		
	</label>
	<g:checkBox name="rianapolis" value="${aspectoProdutivoPecuariaInstance?.rianapolis}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'staIsabel', 'error')} ">
	<label for="staIsabel">
		<g:message code="aspectoProdutivoPecuaria.staIsabel.label" default="Sta Isabel" />
		
	</label>
	<g:checkBox name="staIsabel" value="${aspectoProdutivoPecuariaInstance?.staIsabel}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'supermercado', 'error')} ">
	<label for="supermercado">
		<g:message code="aspectoProdutivoPecuaria.supermercado.label" default="Supermercado" />
		
	</label>
	<g:checkBox name="supermercado" value="${aspectoProdutivoPecuariaInstance?.supermercado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoPecuariaInstance, field: 'vizinho', 'error')} ">
	<label for="vizinho">
		<g:message code="aspectoProdutivoPecuaria.vizinho.label" default="Vizinho" />
		
	</label>
	<g:checkBox name="vizinho" value="${aspectoProdutivoPecuariaInstance?.vizinho}" />
</div>

