<%@ page import="br.com.cerradovivo.ControleAspAmbAniSil" %>



<div class="fieldcontain ${hasErrors(bean: controleAspAmbAniSilInstance, field: 'animalSilvestre', 'error')} required">
	<label for="animalSilvestre">
		<g:message code="controleAspAmbAniSil.animalSilvestre.label" default="Animal Silvestre" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="animalSilvestre" name="animalSilvestre.id" from="${br.com.cerradovivo.AnimalSilvestre.list()}" optionKey="id" required="" value="${controleAspAmbAniSilInstance?.animalSilvestre?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controleAspAmbAniSilInstance, field: 'aspectoAmbiental', 'error')} required">
	<label for="aspectoAmbiental">
		<g:message code="controleAspAmbAniSil.aspectoAmbiental.label" default="Aspecto Ambiental" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aspectoAmbiental" name="aspectoAmbiental.id" from="${br.com.cerradovivo.AspectoAmbiental.list()}" optionKey="id" required="" value="${controleAspAmbAniSilInstance?.aspectoAmbiental?.id}" class="many-to-one"/>
</div>

