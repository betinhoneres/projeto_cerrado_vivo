<%@ page import="br.com.cerradovivo.Projeto" %>


<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'nomeProjeto', 'error')} ">
	<label for="nomeProjeto">
		<g:message code="projeto.nomeProjeto.label" default="Nome do Projeto" />
		
	</label>
	<g:textField name="nomeProjeto" value="${projetoInstance?.nomeProjeto}" tagName="" />
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'instituicaoParceira', 'error')} ">
	<label for="instituicaoParceira">
		<g:message code="projeto.instituicaoParceira.label" default="Instituição Parceira" />
		
	</label>
	<g:textField name="instituicaoParceira" value="${projetoInstance?.instituicaoParceira}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'ufSede', 'error')} required">
	<label for="ufSede">
		<g:message code="projeto.ufSede.label" default="Estado da sede" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="ufSede" from="${br.com.cerradovivo.DmUF?.values()}" keys="${br.com.cerradovivo.DmUF.values()*.name()}" required="" value="${projetoInstance?.ufSede?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'municipio', 'error')} ">
	<label for="municipio">
		<g:message code="projeto.municipio.label" default="Município da sede" />
		
	</label>
	<g:textField name="municipio" value="${projetoInstance?.municipio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'dataInicioContrato', 'error')} required">
	<label for="dataInicioContrato">
		<g:message code="projeto.dataInicioContrato.label" default="Data de Início do Contrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataInicioContrato" precision="day"  value="${projetoInstance?.dataInicioContrato}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'dataTerminoContrato', 'error')} required">
	<label for="dataTerminoContrato">
		<g:message code="projeto.dataTerminoContrato.label" default="Data de Término do Contrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataTerminoContrato" precision="day"  value="${projetoInstance?.dataTerminoContrato}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'linhaAtuacao', 'error')} ">
	<label for="linhaAtuacao">
		<g:message code="projeto.linhaAtuacao.label" default="Linha de atuacao" />
		
	</label>
	<g:textField name="linhaAtuacao" value="${projetoInstance?.linhaAtuacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'temaTransversal', 'error')} ">
	<label for="temaTransversal">
		<g:message code="projeto.temaTransversal.label" default="Tema transversal" />
		
	</label>
	<g:textField name="temaTransversal" value="${projetoInstance?.temaTransversal}"/>
</div>