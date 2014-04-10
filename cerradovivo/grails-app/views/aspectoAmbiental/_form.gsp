<%@ page import="br.com.cerradovivo.AspectoAmbiental" %>



<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="aspectoAmbiental.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${aspectoAmbientalInstance?.propriedade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'animaisSilvestres', 'error')} required">
	<label for="animaisSilvestres">
		<g:message code="aspectoAmbiental.animaisSilvestres.label" default="Animais Silvestres" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="animaisSilvestres" from="${br.com.cerradovivo.DmSimNao?.values()}" keys="${br.com.cerradovivo.DmSimNao.values()*.name()}" required="" value="${aspectoAmbientalInstance?.animaisSilvestres?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'app', 'error')} ">
	<label for="app">
		<g:message code="aspectoAmbiental.app.label" default="App" />
		
	</label>
	<g:textField name="app" value="${aspectoAmbientalInstance?.app}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'areaApp', 'error')} required">
	<label for="areaApp">
		<g:message code="aspectoAmbiental.areaApp.label" default="Area App" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="areaApp" value="${fieldValue(bean: aspectoAmbientalInstance, field: 'areaApp')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'brejo', 'error')} ">
	<label for="brejo">
		<g:message code="aspectoAmbiental.brejo.label" default="Brejo" />
		
	</label>
	<g:checkBox name="brejo" value="${aspectoAmbientalInstance?.brejo}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'controleAspAmbAniSils', 'error')} ">
	<label for="controleAspAmbAniSils">
		<g:message code="aspectoAmbiental.controleAspAmbAniSils.label" default="Controle Asp Amb Ani Sils" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${aspectoAmbientalInstance?.controleAspAmbAniSils?}" var="c">
    <li><g:link controller="controleAspAmbAniSil" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="controleAspAmbAniSil" action="create" params="['aspectoAmbiental.id': aspectoAmbientalInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'controleAspAmbAniSil.label', default: 'ControleAspAmbAniSil')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'controleAspAmbEspVegs', 'error')} ">
	<label for="controleAspAmbEspVegs">
		<g:message code="aspectoAmbiental.controleAspAmbEspVegs.label" default="Controle Asp Amb Esp Vegs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${aspectoAmbientalInstance?.controleAspAmbEspVegs?}" var="c">
    <li><g:link controller="controleAspAmbEspVeg" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="controleAspAmbEspVeg" action="create" params="['aspectoAmbiental.id': aspectoAmbientalInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'controleAspAmbEspVeg.label', default: 'ControleAspAmbEspVeg')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'corrego', 'error')} ">
	<label for="corrego">
		<g:message code="aspectoAmbiental.corrego.label" default="Corrego" />
		
	</label>
	<g:textField name="corrego" value="${aspectoAmbientalInstance?.corrego}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'disponibilidadeAguaAnimal', 'error')} required">
	<label for="disponibilidadeAguaAnimal">
		<g:message code="aspectoAmbiental.disponibilidadeAguaAnimal.label" default="Disponibilidade Agua Animal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="disponibilidadeAguaAnimal" from="${br.com.cerradovivo.DmClassificacao?.values()}" keys="${br.com.cerradovivo.DmClassificacao.values()*.name()}" required="" value="${aspectoAmbientalInstance?.disponibilidadeAguaAnimal?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'disponibilidadeAguaCultivo', 'error')} required">
	<label for="disponibilidadeAguaCultivo">
		<g:message code="aspectoAmbiental.disponibilidadeAguaCultivo.label" default="Disponibilidade Agua Cultivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="disponibilidadeAguaCultivo" from="${br.com.cerradovivo.DmClassificacao?.values()}" keys="${br.com.cerradovivo.DmClassificacao.values()*.name()}" required="" value="${aspectoAmbientalInstance?.disponibilidadeAguaCultivo?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'disponibilidadeAguaHumano', 'error')} required">
	<label for="disponibilidadeAguaHumano">
		<g:message code="aspectoAmbiental.disponibilidadeAguaHumano.label" default="Disponibilidade Agua Humano" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="disponibilidadeAguaHumano" from="${br.com.cerradovivo.DmClassificacao?.values()}" keys="${br.com.cerradovivo.DmClassificacao.values()*.name()}" required="" value="${aspectoAmbientalInstance?.disponibilidadeAguaHumano?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'estadoConsApp', 'error')} required">
	<label for="estadoConsApp">
		<g:message code="aspectoAmbiental.estadoConsApp.label" default="Estado Cons App" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoConsApp" from="${br.com.cerradovivo.DmEstadoPreservacao?.values()}" keys="${br.com.cerradovivo.DmEstadoPreservacao.values()*.name()}" required="" value="${aspectoAmbientalInstance?.estadoConsApp?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'estadoConsArl', 'error')} required">
	<label for="estadoConsArl">
		<g:message code="aspectoAmbiental.estadoConsArl.label" default="Estado Cons Arl" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoConsArl" from="${br.com.cerradovivo.DmEstadoPreservacao?.values()}" keys="${br.com.cerradovivo.DmEstadoPreservacao.values()*.name()}" required="" value="${aspectoAmbientalInstance?.estadoConsArl?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'estadoPresRecHid', 'error')} required">
	<label for="estadoPresRecHid">
		<g:message code="aspectoAmbiental.estadoPresRecHid.label" default="Estado Pres Rec Hid" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoPresRecHid" from="${br.com.cerradovivo.DmEstadoPreservacao?.values()}" keys="${br.com.cerradovivo.DmEstadoPreservacao.values()*.name()}" required="" value="${aspectoAmbientalInstance?.estadoPresRecHid?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'formaDisponibilizarAguaAni', 'error')} ">
	<label for="formaDisponibilizarAguaAni">
		<g:message code="aspectoAmbiental.formaDisponibilizarAguaAni.label" default="Forma Disponibilizar Agua Ani" />
		
	</label>
	<g:textField name="formaDisponibilizarAguaAni" value="${aspectoAmbientalInstance?.formaDisponibilizarAguaAni}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'formaDisponibilizarAguaCult', 'error')} ">
	<label for="formaDisponibilizarAguaCult">
		<g:message code="aspectoAmbiental.formaDisponibilizarAguaCult.label" default="Forma Disponibilizar Agua Cult" />
		
	</label>
	<g:textField name="formaDisponibilizarAguaCult" value="${aspectoAmbientalInstance?.formaDisponibilizarAguaCult}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'formaDisponibilizarAguaHum', 'error')} ">
	<label for="formaDisponibilizarAguaHum">
		<g:message code="aspectoAmbiental.formaDisponibilizarAguaHum.label" default="Forma Disponibilizar Agua Hum" />
		
	</label>
	<g:textField name="formaDisponibilizarAguaHum" value="${aspectoAmbientalInstance?.formaDisponibilizarAguaHum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'nascentePerene', 'error')} ">
	<label for="nascentePerene">
		<g:message code="aspectoAmbiental.nascentePerene.label" default="Nascente Perene" />
		
	</label>
	<g:checkBox name="nascentePerene" value="${aspectoAmbientalInstance?.nascentePerene}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'nascenteTemporaria', 'error')} ">
	<label for="nascenteTemporaria">
		<g:message code="aspectoAmbiental.nascenteTemporaria.label" default="Nascente Temporaria" />
		
	</label>
	<g:checkBox name="nascenteTemporaria" value="${aspectoAmbientalInstance?.nascenteTemporaria}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'outroEstadoConsApp', 'error')} ">
	<label for="outroEstadoConsApp">
		<g:message code="aspectoAmbiental.outroEstadoConsApp.label" default="Outro Estado Cons App" />
		
	</label>
	<g:textField name="outroEstadoConsApp" value="${aspectoAmbientalInstance?.outroEstadoConsApp}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'outroEstadoConsArl', 'error')} ">
	<label for="outroEstadoConsArl">
		<g:message code="aspectoAmbiental.outroEstadoConsArl.label" default="Outro Estado Cons Arl" />
		
	</label>
	<g:textField name="outroEstadoConsArl" value="${aspectoAmbientalInstance?.outroEstadoConsArl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'outroEstadoPresRecHid', 'error')} ">
	<label for="outroEstadoPresRecHid">
		<g:message code="aspectoAmbiental.outroEstadoPresRecHid.label" default="Outro Estado Pres Rec Hid" />
		
	</label>
	<g:textField name="outroEstadoPresRecHid" value="${aspectoAmbientalInstance?.outroEstadoPresRecHid}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'outroRecHidrico', 'error')} ">
	<label for="outroRecHidrico">
		<g:message code="aspectoAmbiental.outroRecHidrico.label" default="Outro Rec Hidrico" />
		
	</label>
	<g:textField name="outroRecHidrico" value="${aspectoAmbientalInstance?.outroRecHidrico}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'represaLago', 'error')} ">
	<label for="represaLago">
		<g:message code="aspectoAmbiental.represaLago.label" default="Represa Lago" />
		
	</label>
	<g:checkBox name="represaLago" value="${aspectoAmbientalInstance?.represaLago}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'rioDoPeixe', 'error')} ">
	<label for="rioDoPeixe">
		<g:message code="aspectoAmbiental.rioDoPeixe.label" default="Rio Do Peixe" />
		
	</label>
	<g:checkBox name="rioDoPeixe" value="${aspectoAmbientalInstance?.rioDoPeixe}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoAmbientalInstance, field: 'vereda', 'error')} ">
	<label for="vereda">
		<g:message code="aspectoAmbiental.vereda.label" default="Vereda" />
		
	</label>
	<g:checkBox name="vereda" value="${aspectoAmbientalInstance?.vereda}" />
</div>

