<%@ page import="br.com.cerradovivo.ControleAspAmbEspVeg" %>



<div class="fieldcontain ${hasErrors(bean: controleAspAmbEspVegInstance, field: 'especieVegetal', 'error')} required">
	<label for="especieVegetal">
		<g:message code="controleAspAmbEspVeg.especieVegetal.label" default="Especie Vegetal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="especieVegetal" name="especieVegetal.id" from="${br.com.cerradovivo.EspecieVegetal.list()}" optionKey="id" required="" value="${controleAspAmbEspVegInstance?.especieVegetal?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspAmbEspVegInstance, field: 'aspectoAmbiental', 'error')} required">
	<label for="aspectoAmbiental">
		<g:message code="controleAspAmbEspVeg.aspectoAmbiental.label" default="Aspecto Ambiental" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aspectoAmbiental" name="aspectoAmbiental.id" from="${br.com.cerradovivo.AspectoAmbiental.list()}" optionKey="id" required="" value="${controleAspAmbEspVegInstance?.aspectoAmbiental?.id}" class="many-to-one"/>
</div>

