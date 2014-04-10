<%@ page import="br.com.cerradovivo.AspectoProdutivoAgroIndustrializado" %>



<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="aspectoProdutivoAgroIndustrializado.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${aspectoProdutivoAgroIndustrializadoInstance?.propriedade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'producaoAgroindustrializada', 'error')} required">
	<label for="producaoAgroindustrializada">
		<g:message code="aspectoProdutivoAgroIndustrializado.producaoAgroindustrializada.label" default="Producao Agroindustrializada" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="producaoAgroindustrializada" from="${br.com.cerradovivo.DmSimNao?.values()}" keys="${br.com.cerradovivo.DmSimNao.values()*.name()}" required="" value="${aspectoProdutivoAgroIndustrializadoInstance?.producaoAgroindustrializada?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'carne', 'error')} ">
	<label for="carne">
		<g:message code="aspectoProdutivoAgroIndustrializado.carne.label" default="Carne" />
		
	</label>
	<g:checkBox name="carne" value="${aspectoProdutivoAgroIndustrializadoInstance?.carne}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'ceres', 'error')} ">
	<label for="ceres">
		<g:message code="aspectoProdutivoAgroIndustrializado.ceres.label" default="Ceres" />
		
	</label>
	<g:checkBox name="ceres" value="${aspectoProdutivoAgroIndustrializadoInstance?.ceres}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'compotas', 'error')} ">
	<label for="compotas">
		<g:message code="aspectoProdutivoAgroIndustrializado.compotas.label" default="Compotas" />
		
	</label>
	<g:checkBox name="compotas" value="${aspectoProdutivoAgroIndustrializadoInstance?.compotas}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'conservas', 'error')} ">
	<label for="conservas">
		<g:message code="aspectoProdutivoAgroIndustrializado.conservas.label" default="Conservas" />
		
	</label>
	<g:checkBox name="conservas" value="${aspectoProdutivoAgroIndustrializadoInstance?.conservas}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'controleAspProdAgroInds', 'error')} ">
	<label for="controleAspProdAgroInds">
		<g:message code="aspectoProdutivoAgroIndustrializado.controleAspProdAgroInds.label" default="Controle Asp Prod Agro Inds" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${aspectoProdutivoAgroIndustrializadoInstance?.controleAspProdAgroInds?}" var="c">
    <li><g:link controller="controleAspProdAgroInd" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="controleAspProdAgroInd" action="create" params="['aspectoProdutivoAgroIndustrializado.id': aspectoProdutivoAgroIndustrializadoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'controleAspProdAgroInd.label', default: 'ControleAspProdAgroInd')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'doces', 'error')} ">
	<label for="doces">
		<g:message code="aspectoProdutivoAgroIndustrializado.doces.label" default="Doces" />
		
	</label>
	<g:checkBox name="doces" value="${aspectoProdutivoAgroIndustrializadoInstance?.doces}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'embutido', 'error')} ">
	<label for="embutido">
		<g:message code="aspectoProdutivoAgroIndustrializado.embutido.label" default="Embutido" />
		
	</label>
	<g:checkBox name="embutido" value="${aspectoProdutivoAgroIndustrializadoInstance?.embutido}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'empacotaLeite', 'error')} ">
	<label for="empacotaLeite">
		<g:message code="aspectoProdutivoAgroIndustrializado.empacotaLeite.label" default="Empacota Leite" />
		
	</label>
	<g:checkBox name="empacotaLeite" value="${aspectoProdutivoAgroIndustrializadoInstance?.empacotaLeite}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'farinhaMandioca', 'error')} ">
	<label for="farinhaMandioca">
		<g:message code="aspectoProdutivoAgroIndustrializado.farinhaMandioca.label" default="Farinha Mandioca" />
		
	</label>
	<g:checkBox name="farinhaMandioca" value="${aspectoProdutivoAgroIndustrializadoInstance?.farinhaMandioca}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'farinhaMilho', 'error')} ">
	<label for="farinhaMilho">
		<g:message code="aspectoProdutivoAgroIndustrializado.farinhaMilho.label" default="Farinha Milho" />
		
	</label>
	<g:checkBox name="farinhaMilho" value="${aspectoProdutivoAgroIndustrializadoInstance?.farinhaMilho}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'feiraLivre', 'error')} ">
	<label for="feiraLivre">
		<g:message code="aspectoProdutivoAgroIndustrializado.feiraLivre.label" default="Feira Livre" />
		
	</label>
	<g:checkBox name="feiraLivre" value="${aspectoProdutivoAgroIndustrializadoInstance?.feiraLivre}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'feiraProdutor', 'error')} ">
	<label for="feiraProdutor">
		<g:message code="aspectoProdutivoAgroIndustrializado.feiraProdutor.label" default="Feira Produtor" />
		
	</label>
	<g:checkBox name="feiraProdutor" value="${aspectoProdutivoAgroIndustrializadoInstance?.feiraProdutor}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'goianesia', 'error')} ">
	<label for="goianesia">
		<g:message code="aspectoProdutivoAgroIndustrializado.goianesia.label" default="Goianesia" />
		
	</label>
	<g:checkBox name="goianesia" value="${aspectoProdutivoAgroIndustrializadoInstance?.goianesia}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'jaragua', 'error')} ">
	<label for="jaragua">
		<g:message code="aspectoProdutivoAgroIndustrializado.jaragua.label" default="Jaragua" />
		
	</label>
	<g:checkBox name="jaragua" value="${aspectoProdutivoAgroIndustrializadoInstance?.jaragua}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'licores', 'error')} ">
	<label for="licores">
		<g:message code="aspectoProdutivoAgroIndustrializado.licores.label" default="Licores" />
		
	</label>
	<g:checkBox name="licores" value="${aspectoProdutivoAgroIndustrializadoInstance?.licores}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'naPropriedade', 'error')} ">
	<label for="naPropriedade">
		<g:message code="aspectoProdutivoAgroIndustrializado.naPropriedade.label" default="Na Propriedade" />
		
	</label>
	<g:checkBox name="naPropriedade" value="${aspectoProdutivoAgroIndustrializadoInstance?.naPropriedade}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'outroComercioLocal', 'error')} ">
	<label for="outroComercioLocal">
		<g:message code="aspectoProdutivoAgroIndustrializado.outroComercioLocal.label" default="Outro Comercio Local" />
		
	</label>
	<g:textField name="outroComercioLocal" value="${aspectoProdutivoAgroIndustrializadoInstance?.outroComercioLocal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'outroComercioMun', 'error')} ">
	<label for="outroComercioMun">
		<g:message code="aspectoProdutivoAgroIndustrializado.outroComercioMun.label" default="Outro Comercio Mun" />
		
	</label>
	<g:textField name="outroComercioMun" value="${aspectoProdutivoAgroIndustrializadoInstance?.outroComercioMun}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'outroProdAgroInd', 'error')} ">
	<label for="outroProdAgroInd">
		<g:message code="aspectoProdutivoAgroIndustrializado.outroProdAgroInd.label" default="Outro Prod Agro Ind" />
		
	</label>
	<g:textField name="outroProdAgroInd" value="${aspectoProdutivoAgroIndustrializadoInstance?.outroProdAgroInd}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'polvilho', 'error')} ">
	<label for="polvilho">
		<g:message code="aspectoProdutivoAgroIndustrializado.polvilho.label" default="Polvilho" />
		
	</label>
	<g:checkBox name="polvilho" value="${aspectoProdutivoAgroIndustrializadoInstance?.polvilho}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'queijos', 'error')} ">
	<label for="queijos">
		<g:message code="aspectoProdutivoAgroIndustrializado.queijos.label" default="Queijos" />
		
	</label>
	<g:checkBox name="queijos" value="${aspectoProdutivoAgroIndustrializadoInstance?.queijos}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'rapadura', 'error')} ">
	<label for="rapadura">
		<g:message code="aspectoProdutivoAgroIndustrializado.rapadura.label" default="Rapadura" />
		
	</label>
	<g:checkBox name="rapadura" value="${aspectoProdutivoAgroIndustrializadoInstance?.rapadura}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'rianapolis', 'error')} ">
	<label for="rianapolis">
		<g:message code="aspectoProdutivoAgroIndustrializado.rianapolis.label" default="Rianapolis" />
		
	</label>
	<g:checkBox name="rianapolis" value="${aspectoProdutivoAgroIndustrializadoInstance?.rianapolis}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'staIsabel', 'error')} ">
	<label for="staIsabel">
		<g:message code="aspectoProdutivoAgroIndustrializado.staIsabel.label" default="Sta Isabel" />
		
	</label>
	<g:checkBox name="staIsabel" value="${aspectoProdutivoAgroIndustrializadoInstance?.staIsabel}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'supermercado', 'error')} ">
	<label for="supermercado">
		<g:message code="aspectoProdutivoAgroIndustrializado.supermercado.label" default="Supermercado" />
		
	</label>
	<g:checkBox name="supermercado" value="${aspectoProdutivoAgroIndustrializadoInstance?.supermercado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoAgroIndustrializadoInstance, field: 'vizinho', 'error')} ">
	<label for="vizinho">
		<g:message code="aspectoProdutivoAgroIndustrializado.vizinho.label" default="Vizinho" />
		
	</label>
	<g:checkBox name="vizinho" value="${aspectoProdutivoAgroIndustrializadoInstance?.vizinho}" />
</div>

