<%@ page import="br.com.cerradovivo.Moradia" %>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="moradia.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${moradiaInstance?.propriedade?.numeroParcela}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'numeroComodos', 'error')} required">
	<label for="numeroComodos">
		<g:message code="moradia.numeroComodos.label" default="1.2.1.1. Número de Cômodos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroComodos" type="number" value="${moradiaInstance.numeroComodos}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'tamanho', 'error')} required">
	<label for="tamanho">
		<g:message code="moradia.tamanho.label" default="1.2.1.2. Tamanho da Moradia em m²" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tamanho" value="${fieldValue(bean: moradiaInstance, field: 'tamanho')}" required="" type="number" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'tipoMoradia', 'error')} required">
	<label for="tipoMoradia">
		<g:message code="moradia.tipoMoradia.label" default="1.2.2. Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoMoradia" from="${br.com.cerradovivo.DmMoradiaTipo?.values()}" keys="${br.com.cerradovivo.DmMoradiaTipo.values()*.name()}" required="" value="${moradiaInstance?.tipoMoradia?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'tipoCobertura', 'error')} required">
	<label for="tipoCobertura">
		<g:message code="moradia.tipoCobertura.label" default="1.2.3. Cobertura" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoCobertura" from="${br.com.cerradovivo.DmMoradiaCobertura?.values()}" keys="${br.com.cerradovivo.DmMoradiaCobertura.values()*.name()}" required="" value="${moradiaInstance?.tipoCobertura?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'tipoPiso', 'error')} required">
	<label for="tipoPiso">
		<g:message code="moradia.tipoPiso.label" default="1.2.4. Piso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoPiso" from="${br.com.cerradovivo.DmMoradiaPiso?.values()}" keys="${br.com.cerradovivo.DmMoradiaPiso.values()*.name()}" required="" value="${moradiaInstance?.tipoPiso?.name()}"/>
</div>


<!--  1.2.6. Situação atual da residencia -->

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'comAcabamento', 'error')} ">
	<label for="comAcabamento">
		<g:message code="moradia.comAcabamento.label" default="Residência com acabamento" />
		
	</label>
	<g:checkBox name="comAcabamento" value="${moradiaInstance?.comAcabamento}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'esgoto', 'error')} ">
	<label for="esgoto">
		<g:message code="moradia.esgoto.label" default="Rede de Esgoto" />
		
	</label>
	<g:checkBox name="esgoto" value="${moradiaInstance?.esgoto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'banheiro', 'error')} ">
	<label for="banheiro">
		<g:message code="moradia.banheiro.label" default="Banheiro" />
		
	</label>
	<g:checkBox name="banheiro" value="${moradiaInstance?.banheiro}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'agua', 'error')} ">
	<label for="agua">
		<g:message code="moradia.agua.label" default="Água" />
		
	</label>
	<g:checkBox name="agua" value="${moradiaInstance?.agua}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'energiaEletrica', 'error')} ">
	<label for="energiaEletrica">
		<g:message code="moradia.energiaEletrica.label" default="Energia Elétrica" />
		
	</label>
	<g:checkBox name="energiaEletrica" value="${moradiaInstance?.energiaEletrica}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'forro', 'error')} ">
	<label for="forro">
		<g:message code="moradia.forro.label" default="Forro" />
		
	</label>
	<g:checkBox name="forro" value="${moradiaInstance?.forro}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'semAcabamento', 'error')} ">
	<label for="semAcabamento">
		<g:message code="moradia.semAcabamento.label" default="Residência sem acabamento (sem reboco, sem pintura, piso, banheiros inacabados, etc.)" />
		
	</label>
	<g:checkBox name="semAcabamento" value="${moradiaInstance?.semAcabamento}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'fosa', 'error')} ">
	<label for="fosa">
		<g:message code="moradia.fosa.label" default="Fossa" />
		
	</label>
	<g:checkBox name="fosa" value="${moradiaInstance?.fosa}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'chuveiro', 'error')} ">
	<label for="chuveiro">
		<g:message code="moradia.chuveiro.label" default="Chuveiro" />
		
	</label>
	<g:checkBox name="chuveiro" value="${moradiaInstance?.chuveiro}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'outros', 'error')} ">
	<label for="outros">
		<g:message code="moradia.outros.label" default="Outros" />
		
	</label>
	<g:textField name="outros" value="${moradiaInstance?.outros}"/>
</div>

<!--  FIM 1.2.6. Situação atual da residencia -->


<!--  1.2.7. 				INICIO 									-->

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdAutomovel', 'error')}">
	<label for="qtdAutomovel">
		<g:message code="moradia.qtdAutomovel.label" default="Automóvel?" />
	</label>
	<g:field name="qtdAutomovel" type="number" value="${moradiaInstance.qtdAutomovel}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdBanheiro', 'error')} ">
	<label for="qtdBanheiro">
		<g:message code="moradia.qtdBanheiro.label" default="Banheiro?" />
		
	</label>
	<g:field name="qtdBanheiro" type="number" value="${moradiaInstance.qtdBanheiro}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdGeladeira', 'error')} ">
	<label for="qtdGeladeira">
		<g:message code="moradia.qtdGeladeira.label" default="Geladeira?" />
		
	</label>
	<g:field name="qtdGeladeira" type="number" value="${moradiaInstance.qtdGeladeira}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdTelevisao', 'error')} ">
	<label for="qtdTelevisao">
		<g:message code="moradia.qtdTelevisao.label" default="Televisão?" />
		
	</label>
	<g:field name="qtdTelevisao" type="number" value="${moradiaInstance.qtdTelevisao}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdAparelhoSom', 'error')} ">
	<label for="qtdAparelhoSom">
		<g:message code="moradia.qtdAparelhoSom.label" default="Aparelho de Som?" />
		
	</label>
	<g:field name="qtdAparelhoSom" type="number" value="${moradiaInstance.qtdAparelhoSom}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdLavadouraRoupa', 'error')} ">
	<label for="qtdLavadouraRoupa">
		<g:message code="moradia.qtdLavadouraRoupa.label" default="Lavadoura de roupa?" />
		
	</label>
	<g:field name="qtdLavadouraRoupa" type="number" value="${moradiaInstance.qtdLavadouraRoupa}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdFogaoGas', 'error')} ">
	<label for="qtdFogaoGas">
		<g:message code="moradia.qtdFogaoGas.label" default="Fogão a gás" />
		
	</label>
	<g:field name="qtdFogaoGas" type="number" value="${moradiaInstance.qtdFogaoGas}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdFogaoLenha', 'error')} ">
	<label for="qtdFogaoLenha">
		<g:message code="moradia.qtdFogaoLenha.label" default="Fogão a lenha" />
		
	</label>
	<g:field name="qtdFogaoLenha" type="number" value="${moradiaInstance.qtdFogaoLenha}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdMotocicleta', 'error')} ">
	<label for="qtdMotocicleta">
		<g:message code="moradia.qtdMotocicleta.label" default="Motocicleta?" />
		
	</label>
	<g:field name="qtdMotocicleta" type="number" value="${moradiaInstance.qtdMotocicleta}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdQuartos', 'error')} ">
	<label for="qtdQuartos">
		<g:message code="moradia.qtdQuartos.label" default="Quartos?" />
		
	</label>
	<g:field name="qtdQuartos" type="number" value="${moradiaInstance.qtdQuartos}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdFreezer', 'error')} ">
	<label for="qtdFreezer">
		<g:message code="moradia.qtdFreezer.label" default="Freezer?" />
		
	</label>
	<g:field name="qtdFreezer" type="number" value="${moradiaInstance.qtdFreezer}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdDvd', 'error')} ">
	<label for="qtdDvd">
		<g:message code="moradia.qtdDvd.label" default="DVD?" />
		
	</label>
	<g:field name="qtdDvd" type="number" value="${moradiaInstance.qtdDvd}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdComputador', 'error')} ">
	<label for="qtdComputador">
		<g:message code="moradia.qtdComputador.label" default="Computador (micro, laptop ou notebook)?" />
		
	</label>
	<g:field name="qtdComputador" type="number" value="${moradiaInstance.qtdComputador}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdTanquinhoLavarRoupa', 'error')} ">
	<label for="qtdTanquinhoLavarRoupa">
		<g:message code="moradia.qtdTanquinhoLavarRoupa.label" default="Tanquinho de lavar roupa?" />
		
	</label>
	<g:field name="qtdTanquinhoLavarRoupa" type="number" value="${moradiaInstance.qtdTanquinhoLavarRoupa}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdMicroondas', 'error')} ">
	<label for="qtdMicroondas">
		<g:message code="moradia.qtdMicroondas.label" default="Microondas?" />
		
	</label>
	<g:field name="qtdMicroondas" type="number" value="${moradiaInstance.qtdMicroondas}" />
</div>

<div class="fieldcontain ${hasErrors(bean: moradiaInstance, field: 'qtdCelular', 'error')} ">
	<label for="qtdCelular">
		<g:message code="moradia.qtdCelular.label" default="Telefone celular?" />
		
	</label>
	<g:field name="qtdCelular" type="number" value="${moradiaInstance.qtdCelular}" />
</div>