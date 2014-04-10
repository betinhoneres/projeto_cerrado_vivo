<%@ page import="br.com.cerradovivo.AspectoProdutivoAgricola" %>



<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="aspectoProdutivoAgricola.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${aspectoProdutivoAgricolaInstance?.propriedade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'ceres', 'error')} ">
	<label for="ceres">
		<g:message code="aspectoProdutivoAgricola.ceres.label" default="Ceres" />
		
	</label>
	<g:checkBox name="ceres" value="${aspectoProdutivoAgricolaInstance?.ceres}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'controleAspProdAgrCulturas', 'error')} ">
	<label for="controleAspProdAgrCulturas">
		<g:message code="aspectoProdutivoAgricola.controleAspProdAgrCulturas.label" default="Controle Asp Prod Agr Culturas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${aspectoProdutivoAgricolaInstance?.controleAspProdAgrCulturas?}" var="c">
    <li><g:link controller="controleAspProdAgrCultura" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="controleAspProdAgrCultura" action="create" params="['aspectoProdutivoAgricola.id': aspectoProdutivoAgricolaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'controleAspProdAgrCultura.label', default: 'ControleAspProdAgrCultura')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'controleAspProdAgrProdutos', 'error')} ">
	<label for="controleAspProdAgrProdutos">
		<g:message code="aspectoProdutivoAgricola.controleAspProdAgrProdutos.label" default="Controle Asp Prod Agr Produtos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${aspectoProdutivoAgricolaInstance?.controleAspProdAgrProdutos?}" var="c">
    <li><g:link controller="controleAspProdAgrProduto" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="controleAspProdAgrProduto" action="create" params="['aspectoProdutivoAgricola.id': aspectoProdutivoAgricolaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'controleAspProdAgrProduto.label', default: 'ControleAspProdAgrProduto')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'feiraLivre', 'error')} ">
	<label for="feiraLivre">
		<g:message code="aspectoProdutivoAgricola.feiraLivre.label" default="Feira Livre" />
		
	</label>
	<g:checkBox name="feiraLivre" value="${aspectoProdutivoAgricolaInstance?.feiraLivre}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'feiraProdutor', 'error')} ">
	<label for="feiraProdutor">
		<g:message code="aspectoProdutivoAgricola.feiraProdutor.label" default="Feira Produtor" />
		
	</label>
	<g:checkBox name="feiraProdutor" value="${aspectoProdutivoAgricolaInstance?.feiraProdutor}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'goianesia', 'error')} ">
	<label for="goianesia">
		<g:message code="aspectoProdutivoAgricola.goianesia.label" default="Goianesia" />
		
	</label>
	<g:checkBox name="goianesia" value="${aspectoProdutivoAgricolaInstance?.goianesia}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'jaragua', 'error')} ">
	<label for="jaragua">
		<g:message code="aspectoProdutivoAgricola.jaragua.label" default="Jaragua" />
		
	</label>
	<g:checkBox name="jaragua" value="${aspectoProdutivoAgricolaInstance?.jaragua}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'naPropriedade', 'error')} ">
	<label for="naPropriedade">
		<g:message code="aspectoProdutivoAgricola.naPropriedade.label" default="Na Propriedade" />
		
	</label>
	<g:checkBox name="naPropriedade" value="${aspectoProdutivoAgricolaInstance?.naPropriedade}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'outroComercioLocal', 'error')} ">
	<label for="outroComercioLocal">
		<g:message code="aspectoProdutivoAgricola.outroComercioLocal.label" default="Outro Comercio Local" />
		
	</label>
	<g:textField name="outroComercioLocal" value="${aspectoProdutivoAgricolaInstance?.outroComercioLocal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'outroComercioMun', 'error')} ">
	<label for="outroComercioMun">
		<g:message code="aspectoProdutivoAgricola.outroComercioMun.label" default="Outro Comercio Mun" />
		
	</label>
	<g:textField name="outroComercioMun" value="${aspectoProdutivoAgricolaInstance?.outroComercioMun}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'rianapolis', 'error')} ">
	<label for="rianapolis">
		<g:message code="aspectoProdutivoAgricola.rianapolis.label" default="Rianapolis" />
		
	</label>
	<g:checkBox name="rianapolis" value="${aspectoProdutivoAgricolaInstance?.rianapolis}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'staIsabel', 'error')} ">
	<label for="staIsabel">
		<g:message code="aspectoProdutivoAgricola.staIsabel.label" default="Sta Isabel" />
		
	</label>
	<g:checkBox name="staIsabel" value="${aspectoProdutivoAgricolaInstance?.staIsabel}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'supermercado', 'error')} ">
	<label for="supermercado">
		<g:message code="aspectoProdutivoAgricola.supermercado.label" default="Supermercado" />
		
	</label>
	<g:checkBox name="supermercado" value="${aspectoProdutivoAgricolaInstance?.supermercado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgricolaInstance, field: 'vizinho', 'error')} ">
	<label for="vizinho">
		<g:message code="aspectoProdutivoAgricola.vizinho.label" default="Vizinho" />
		
	</label>
	<g:checkBox name="vizinho" value="${aspectoProdutivoAgricolaInstance?.vizinho}" />
</div>

