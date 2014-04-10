<%@ page import="br.com.cerradovivo.Propriedade" %>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'dataEntrevista', 'error')} required">
	<label for="dataEntrevista">
		<g:message code="propriedade.dataEntrevista.label" default="Data Entrevista" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataEntrevista" precision="day"  value="${propriedadeInstance?.dataEntrevista}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'entrevistador', 'error')} required">
	<label for="entrevistador">
		<g:message code="propriedade.entrevistador.label" default="Entrevistador" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="entrevistador" required="" value="${propriedadeInstance?.entrevistador}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'nomePropietario', 'error')} required">
	<label for="nomePropietario">
		<g:message code="propriedade.nomePropietario.label" default="Nome Propietario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomePropietario" required="" value="${propriedadeInstance?.nomePropietario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'telefonePropietario', 'error')} required">
	<label for="telefonePropietario">
		<g:message code="propriedade.telefonePropietario.label" default="Telefone Propietario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefonePropietario" required="" value="${propriedadeInstance?.telefonePropietario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="propriedade.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${propriedadeInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'numeroParcela', 'error')} required">
	<label for="numeroParcela">
		<g:message code="propriedade.numeroParcela.label" default="Numero Parcela" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroParcela" type="number" value="${propriedadeInstance.numeroParcela}" required="true"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'microRegiao', 'error')} ">
	<label for="microRegiao">
		<g:message code="propriedade.microRegiao.label" default="Micro Regiao" />
		
	</label>
	<g:textField name="microRegiao" value="${propriedadeInstance?.microRegiao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'latitude', 'error')} ">
	<label for="latitude">
		<g:message code="propriedade.latitude.label" default="Latitude" />
		
	</label>
	<g:textField name="latitude" maxlength="50" value="${propriedadeInstance?.latitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'longitude', 'error')} ">
	<label for="longitude">
		<g:message code="propriedade.longitude.label" default="Longitude" />
		
	</label>
	<g:textField name="longitude" maxlength="50" value="${propriedadeInstance?.longitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'altitude', 'error')} ">
	<label for="altitude">
		<g:message code="propriedade.altitude.label" default="Altitude" />
		
	</label>
	<g:textField name="altitude" maxlength="50" value="${propriedadeInstance?.altitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'areaHa', 'error')} required">
	<label for="areaHa">
		<g:message code="propriedade.areaHa.label" default="Area Ha" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="areaHa" value="${fieldValue(bean: propriedadeInstance, field: 'areaHa')}" required="" type="number"/>
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'roteiroAcesso', 'error')} ">
	<label for="roteiroAcesso">
		<g:message code="propriedade.roteiroAcesso.label" default="Roteiro Acesso" />
		
	</label>
	<g:textArea name="roteiroAcesso" value="${propriedadeInstance?.roteiroAcesso}"/>
</div>



<!--  Area com os checkbox para seleção  -->
					
<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'socioAmbiental', 'error')} ">
	<label for="socioAmbiental">
		<g:message code="propriedade.socioAmbiental.label" default="Diagnóstico Socioambiental" />
		
	</label>
	<g:checkBox name="socioAmbiental" value="${propriedadeInstance?.socioAmbiental}" />
</div>					

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'conservacao', 'error')} ">
	<label for="conservacao">
		<g:message code="propriedade.conservacao.label" default="Conservação de Solo" />
		
	</label>
	<g:checkBox name="conservacao" value="${propriedadeInstance?.conservacao}" />
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'agroflorestal', 'error')} ">
	<label for="agroflorestal">
		<g:message code="propriedade.agroflorestal.label" default="Sistema Agroflorestal" />
		
	</label>
	<g:checkBox name="agroflorestal" value="${propriedadeInstance?.agroflorestal}" />
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'agrosilvipastoril', 'error')} ">
	<label for="agrosilvipastoril">
		<g:message code="propriedade.agrosilvipastoril.label" default="Sistema Agrosssilvipastoril" />
		
	</label>
	<g:checkBox name="agrosilvipastoril" value="${propriedadeInstance?.agrosilvipastoril}" />
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'viveiro', 'error')} ">
	<label for="viveiro">
		<g:message code="propriedade.viveiro.label" default="Viveiro Florestal Familiar" />
		
	</label>
	<g:checkBox name="viveiro" value="${propriedadeInstance?.viveiro}" />
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'pais', 'error')} ">
	<label for="pais">
		<g:message code="propriedade.pais.label" default="PAIS" />
		
	</label>
	<g:checkBox name="pais" value="${propriedadeInstance?.pais}" />
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'cisterna', 'error')} ">
	<label for="cisterna">
		<g:message code="propriedade.cisterna.label" default="Cisterna de Captação de Água da Chuva" />
		
	</label>
	<g:checkBox name="cisterna" value="${propriedadeInstance?.cisterna}" />
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'app', 'error')} ">
	<label for="app">
		<g:message code="propriedade.app.label" default="Recuperação de APP's" />
		
	</label>
	<g:checkBox name="app" value="${propriedadeInstance?.app}" />
</div>

<div class="fieldcontain ${hasErrors(bean: propriedadeInstance, field: 'reservaLegal', 'error')} ">
	<label for="reservaLegal">
		<g:message code="propriedade.reservaLegal.label" default="Recuperação de Áreas de Reserva Legal" />
		
	</label>
	<g:checkBox name="reservaLegal" value="${propriedadeInstance?.reservaLegal}" />
</div>