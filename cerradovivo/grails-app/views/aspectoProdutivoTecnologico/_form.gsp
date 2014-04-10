<%@ page import="br.com.cerradovivo.AspectoProdutivoTecnologico" %>



<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="aspectoProdutivoTecnologico.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${aspectoProdutivoTecnologicoInstance?.propriedade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'trator', 'error')} ">
	<label for="trator">
		<g:message code="aspectoProdutivoTecnologico.trator.label" default="Trator" />
		
	</label>
	<g:checkBox name="trator" value="${aspectoProdutivoTecnologicoInstance?.trator}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'colheitadeira', 'error')} ">
	<label for="colheitadeira">
		<g:message code="aspectoProdutivoTecnologico.colheitadeira.label" default="Colheitadeira" />
		
	</label>
	<g:checkBox name="colheitadeira" value="${aspectoProdutivoTecnologicoInstance?.colheitadeira}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'aradoMecanico', 'error')} ">
	<label for="aradoMecanico">
		<g:message code="aspectoProdutivoTecnologico.aradoMecanico.label" default="Arado Mecanico" />
		
	</label>
	<g:checkBox name="aradoMecanico" value="${aspectoProdutivoTecnologicoInstance?.aradoMecanico}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'aradoAnimal', 'error')} ">
	<label for="aradoAnimal">
		<g:message code="aspectoProdutivoTecnologico.aradoAnimal.label" default="Arado Animal" />
		
	</label>
	<g:checkBox name="aradoAnimal" value="${aspectoProdutivoTecnologicoInstance?.aradoAnimal}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'plantadeiraMecanica', 'error')} ">
	<label for="plantadeiraMecanica">
		<g:message code="aspectoProdutivoTecnologico.plantadeiraMecanica.label" default="Plantadeira Mecanica" />
		
	</label>
	<g:checkBox name="plantadeiraMecanica" value="${aspectoProdutivoTecnologicoInstance?.plantadeiraMecanica}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'plantadeiraAnimal', 'error')} ">
	<label for="plantadeiraAnimal">
		<g:message code="aspectoProdutivoTecnologico.plantadeiraAnimal.label" default="Plantadeira Animal" />
		
	</label>
	<g:checkBox name="plantadeiraAnimal" value="${aspectoProdutivoTecnologicoInstance?.plantadeiraAnimal}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'triturador', 'error')} ">
	<label for="triturador">
		<g:message code="aspectoProdutivoTecnologico.triturador.label" default="Triturador" />
		
	</label>
	<g:checkBox name="triturador" value="${aspectoProdutivoTecnologicoInstance?.triturador}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'facao', 'error')} ">
	<label for="facao">
		<g:message code="aspectoProdutivoTecnologico.facao.label" default="Facao" />
		
	</label>
	<g:checkBox name="facao" value="${aspectoProdutivoTecnologicoInstance?.facao}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'pa', 'error')} ">
	<label for="pa">
		<g:message code="aspectoProdutivoTecnologico.pa.label" default="Pa" />
		
	</label>
	<g:checkBox name="pa" value="${aspectoProdutivoTecnologicoInstance?.pa}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'matraca', 'error')} ">
	<label for="matraca">
		<g:message code="aspectoProdutivoTecnologico.matraca.label" default="Matraca" />
		
	</label>
	<g:checkBox name="matraca" value="${aspectoProdutivoTecnologicoInstance?.matraca}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'picareta', 'error')} ">
	<label for="picareta">
		<g:message code="aspectoProdutivoTecnologico.picareta.label" default="Picareta" />
		
	</label>
	<g:checkBox name="picareta" value="${aspectoProdutivoTecnologicoInstance?.picareta}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'foice', 'error')} ">
	<label for="foice">
		<g:message code="aspectoProdutivoTecnologico.foice.label" default="Foice" />
		
	</label>
	<g:checkBox name="foice" value="${aspectoProdutivoTecnologicoInstance?.foice}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'machado', 'error')} ">
	<label for="machado">
		<g:message code="aspectoProdutivoTecnologico.machado.label" default="Machado" />
		
	</label>
	<g:checkBox name="machado" value="${aspectoProdutivoTecnologicoInstance?.machado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'pulverizadorMecanico', 'error')} ">
	<label for="pulverizadorMecanico">
		<g:message code="aspectoProdutivoTecnologico.pulverizadorMecanico.label" default="Pulverizador Mecanico" />
		
	</label>
	<g:checkBox name="pulverizadorMecanico" value="${aspectoProdutivoTecnologicoInstance?.pulverizadorMecanico}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'pulverizadorCostal', 'error')} ">
	<label for="pulverizadorCostal">
		<g:message code="aspectoProdutivoTecnologico.pulverizadorCostal.label" default="Pulverizador Costal" />
		
	</label>
	<g:checkBox name="pulverizadorCostal" value="${aspectoProdutivoTecnologicoInstance?.pulverizadorCostal}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'enxada', 'error')} ">
	<label for="enxada">
		<g:message code="aspectoProdutivoTecnologico.enxada.label" default="Enxada" />
		
	</label>
	<g:checkBox name="enxada" value="${aspectoProdutivoTecnologicoInstance?.enxada}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'outroEquipamento', 'error')} ">
	<label for="outroEquipamento">
		<g:message code="aspectoProdutivoTecnologico.outroEquipamento.label" default="Outro Equipamento" />
		
	</label>
	<g:textField name="outroEquipamento" value="${aspectoProdutivoTecnologicoInstance?.outroEquipamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'adeqEstrada', 'error')} ">
	<label for="adeqEstrada">
		<g:message code="aspectoProdutivoTecnologico.adeqEstrada.label" default="Adeq Estrada" />
		
	</label>
	<g:checkBox name="adeqEstrada" value="${aspectoProdutivoTecnologicoInstance?.adeqEstrada}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'adubacaoOrganica', 'error')} ">
	<label for="adubacaoOrganica">
		<g:message code="aspectoProdutivoTecnologico.adubacaoOrganica.label" default="Adubacao Organica" />
		
	</label>
	<g:checkBox name="adubacaoOrganica" value="${aspectoProdutivoTecnologicoInstance?.adubacaoOrganica}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'adubacaoVerde', 'error')} ">
	<label for="adubacaoVerde">
		<g:message code="aspectoProdutivoTecnologico.adubacaoVerde.label" default="Adubacao Verde" />
		
	</label>
	<g:checkBox name="adubacaoVerde" value="${aspectoProdutivoTecnologicoInstance?.adubacaoVerde}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'calagem', 'error')} ">
	<label for="calagem">
		<g:message code="aspectoProdutivoTecnologico.calagem.label" default="Calagem" />
		
	</label>
	<g:checkBox name="calagem" value="${aspectoProdutivoTecnologicoInstance?.calagem}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'cordoes', 'error')} ">
	<label for="cordoes">
		<g:message code="aspectoProdutivoTecnologico.cordoes.label" default="Cordoes" />
		
	</label>
	<g:checkBox name="cordoes" value="${aspectoProdutivoTecnologicoInstance?.cordoes}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'plantio', 'error')} ">
	<label for="plantio">
		<g:message code="aspectoProdutivoTecnologico.plantio.label" default="Plantio" />
		
	</label>
	<g:checkBox name="plantio" value="${aspectoProdutivoTecnologicoInstance?.plantio}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'faixas', 'error')} ">
	<label for="faixas">
		<g:message code="aspectoProdutivoTecnologico.faixas.label" default="Faixas" />
		
	</label>
	<g:checkBox name="faixas" value="${aspectoProdutivoTecnologicoInstance?.faixas}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'queimada', 'error')} ">
	<label for="queimada">
		<g:message code="aspectoProdutivoTecnologico.queimada.label" default="Queimada" />
		
	</label>
	<g:checkBox name="queimada" value="${aspectoProdutivoTecnologicoInstance?.queimada}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'reflorestamento', 'error')} ">
	<label for="reflorestamento">
		<g:message code="aspectoProdutivoTecnologico.reflorestamento.label" default="Reflorestamento" />
		
	</label>
	<g:checkBox name="reflorestamento" value="${aspectoProdutivoTecnologicoInstance?.reflorestamento}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'rotacao', 'error')} ">
	<label for="rotacao">
		<g:message code="aspectoProdutivoTecnologico.rotacao.label" default="Rotacao" />
		
	</label>
	<g:checkBox name="rotacao" value="${aspectoProdutivoTecnologicoInstance?.rotacao}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'terraceamento', 'error')} ">
	<label for="terraceamento">
		<g:message code="aspectoProdutivoTecnologico.terraceamento.label" default="Terraceamento" />
		
	</label>
	<g:checkBox name="terraceamento" value="${aspectoProdutivoTecnologicoInstance?.terraceamento}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'nenhumaTecninca', 'error')} ">
	<label for="nenhumaTecninca">
		<g:message code="aspectoProdutivoTecnologico.nenhumaTecninca.label" default="Nenhuma Tecninca" />
		
	</label>
	<g:checkBox name="nenhumaTecninca" value="${aspectoProdutivoTecnologicoInstance?.nenhumaTecninca}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'outroTecnica', 'error')} ">
	<label for="outroTecnica">
		<g:message code="aspectoProdutivoTecnologico.outroTecnica.label" default="Outro Tecnica" />
		
	</label>
	<g:textField name="outroTecnica" value="${aspectoProdutivoTecnologicoInstance?.outroTecnica}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'utilizaFertOutros', 'error')} ">
	<label for="utilizaFertOutros">
		<g:message code="aspectoProdutivoTecnologico.utilizaFertOutros.label" default="Utiliza Fert Outros" />
		
	</label>
	<g:select name="utilizaFertOutros" from="${br.com.cerradovivo.DmSimNao?.values()}" keys="${br.com.cerradovivo.DmSimNao.values()*.name()}" value="${aspectoProdutivoTecnologicoInstance?.utilizaFertOutros?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'adubosQuimicos', 'error')} ">
	<label for="adubosQuimicos">
		<g:message code="aspectoProdutivoTecnologico.adubosQuimicos.label" default="Adubos Quimicos" />
		
	</label>
	<g:checkBox name="adubosQuimicos" value="${aspectoProdutivoTecnologicoInstance?.adubosQuimicos}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'adubosOrganicos', 'error')} ">
	<label for="adubosOrganicos">
		<g:message code="aspectoProdutivoTecnologico.adubosOrganicos.label" default="Adubos Organicos" />
		
	</label>
	<g:checkBox name="adubosOrganicos" value="${aspectoProdutivoTecnologicoInstance?.adubosOrganicos}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'defensivosTradicionais', 'error')} ">
	<label for="defensivosTradicionais">
		<g:message code="aspectoProdutivoTecnologico.defensivosTradicionais.label" default="Defensivos Tradicionais" />
		
	</label>
	<g:checkBox name="defensivosTradicionais" value="${aspectoProdutivoTecnologicoInstance?.defensivosTradicionais}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'defensivosNaturais', 'error')} ">
	<label for="defensivosNaturais">
		<g:message code="aspectoProdutivoTecnologico.defensivosNaturais.label" default="Defensivos Naturais" />
		
	</label>
	<g:checkBox name="defensivosNaturais" value="${aspectoProdutivoTecnologicoInstance?.defensivosNaturais}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'medicamentosNaturais', 'error')} ">
	<label for="medicamentosNaturais">
		<g:message code="aspectoProdutivoTecnologico.medicamentosNaturais.label" default="Medicamentos Naturais" />
		
	</label>
	<g:checkBox name="medicamentosNaturais" value="${aspectoProdutivoTecnologicoInstance?.medicamentosNaturais}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'medicamentoAlternativos', 'error')} ">
	<label for="medicamentoAlternativos">
		<g:message code="aspectoProdutivoTecnologico.medicamentoAlternativos.label" default="Medicamento Alternativos" />
		
	</label>
	<g:checkBox name="medicamentoAlternativos" value="${aspectoProdutivoTecnologicoInstance?.medicamentoAlternativos}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'vacinas', 'error')} ">
	<label for="vacinas">
		<g:message code="aspectoProdutivoTecnologico.vacinas.label" default="Vacinas" />
		
	</label>
	<g:checkBox name="vacinas" value="${aspectoProdutivoTecnologicoInstance?.vacinas}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'outraMedicamentos', 'error')} ">
	<label for="outraMedicamentos">
		<g:message code="aspectoProdutivoTecnologico.outraMedicamentos.label" default="Outra Medicamentos" />
		
	</label>
	<g:textField name="outraMedicamentos" value="${aspectoProdutivoTecnologicoInstance?.outraMedicamentos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'acompanhamentoTecnico', 'error')} required">
	<label for="acompanhamentoTecnico">
		<g:message code="aspectoProdutivoTecnologico.acompanhamentoTecnico.label" default="Acompanhamento Tecnico" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="acompanhamentoTecnico" from="${br.com.cerradovivo.DmSimNao?.values()}" keys="${br.com.cerradovivo.DmSimNao.values()*.name()}" required="" value="${aspectoProdutivoTecnologicoInstance?.acompanhamentoTecnico?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'incra', 'error')} ">
	<label for="incra">
		<g:message code="aspectoProdutivoTecnologico.incra.label" default="Incra" />
		
	</label>
	<g:checkBox name="incra" value="${aspectoProdutivoTecnologicoInstance?.incra}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'emater', 'error')} ">
	<label for="emater">
		<g:message code="aspectoProdutivoTecnologico.emater.label" default="Emater" />
		
	</label>
	<g:checkBox name="emater" value="${aspectoProdutivoTecnologicoInstance?.emater}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'empresaPrivada', 'error')} ">
	<label for="empresaPrivada">
		<g:message code="aspectoProdutivoTecnologico.empresaPrivada.label" default="Empresa Privada" />
		
	</label>
	<g:checkBox name="empresaPrivada" value="${aspectoProdutivoTecnologicoInstance?.empresaPrivada}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'prefeitura', 'error')} ">
	<label for="prefeitura">
		<g:message code="aspectoProdutivoTecnologico.prefeitura.label" default="Prefeitura" />
		
	</label>
	<g:checkBox name="prefeitura" value="${aspectoProdutivoTecnologicoInstance?.prefeitura}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoTecnologicoInstance, field: 'outraAssistencia', 'error')} ">
	<label for="outraAssistencia">
		<g:message code="aspectoProdutivoTecnologico.outraAssistencia.label" default="Outra Assistencia" />
		
	</label>
	<g:textField name="outraAssistencia" value="${aspectoProdutivoTecnologicoInstance?.outraAssistencia}"/>
</div>

