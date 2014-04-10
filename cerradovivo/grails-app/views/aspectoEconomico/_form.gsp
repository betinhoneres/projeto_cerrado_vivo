<%@ page import="br.com.cerradovivo.AspectoEconomico" %>



<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="aspectoEconomico.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${aspectoEconomicoInstance?.propriedade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'qtdSalMin2007', 'error')} required">
	<label for="qtdSalMin2007">
		<g:message code="aspectoEconomico.qtdSalMin2007.label" default="Qtd Sal Min2007" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qtdSalMin2007" type="number" value="${aspectoEconomicoInstance.qtdSalMin2007}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'qtdSalMin2008', 'error')} required">
	<label for="qtdSalMin2008">
		<g:message code="aspectoEconomico.qtdSalMin2008.label" default="Qtd Sal Min2008" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qtdSalMin2008" type="number" value="${aspectoEconomicoInstance.qtdSalMin2008}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'qtdSalMin2009', 'error')} required">
	<label for="qtdSalMin2009">
		<g:message code="aspectoEconomico.qtdSalMin2009.label" default="Qtd Sal Min2009" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qtdSalMin2009" type="number" value="${aspectoEconomicoInstance.qtdSalMin2009}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'qtdSalMin2010', 'error')} required">
	<label for="qtdSalMin2010">
		<g:message code="aspectoEconomico.qtdSalMin2010.label" default="Qtd Sal Min2010" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qtdSalMin2010" type="number" value="${aspectoEconomicoInstance.qtdSalMin2010}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'qtdSalMin2011', 'error')} required">
	<label for="qtdSalMin2011">
		<g:message code="aspectoEconomico.qtdSalMin2011.label" default="Qtd Sal Min2011" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qtdSalMin2011" type="number" value="${aspectoEconomicoInstance.qtdSalMin2011}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'qtdSalMin2012', 'error')} required">
	<label for="qtdSalMin2012">
		<g:message code="aspectoEconomico.qtdSalMin2012.label" default="Qtd Sal Min2012" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qtdSalMin2012" type="number" value="${aspectoEconomicoInstance.qtdSalMin2012}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'bolsaFamilia', 'error')} ">
	<label for="bolsaFamilia">
		<g:message code="aspectoEconomico.bolsaFamilia.label" default="Bolsa Familia" />
		
	</label>
	<g:checkBox name="bolsaFamilia" value="${aspectoEconomicoInstance?.bolsaFamilia}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'aposentadoria', 'error')} ">
	<label for="aposentadoria">
		<g:message code="aspectoEconomico.aposentadoria.label" default="Aposentadoria" />
		
	</label>
	<g:checkBox name="aposentadoria" value="${aspectoEconomicoInstance?.aposentadoria}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'pensao', 'error')} ">
	<label for="pensao">
		<g:message code="aspectoEconomico.pensao.label" default="Pensao" />
		
	</label>
	<g:checkBox name="pensao" value="${aspectoEconomicoInstance?.pensao}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'outroBeneficio', 'error')} required">
	<label for="outroBeneficio">
		<g:message code="aspectoEconomico.outroBeneficio.label" default="Outro Beneficio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="outroBeneficio" required="" value="${aspectoEconomicoInstance?.outroBeneficio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'rendaDaPropriedade', 'error')} required">
	<label for="rendaDaPropriedade">
		<g:message code="aspectoEconomico.rendaDaPropriedade.label" default="Renda Da Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="rendaDaPropriedade" from="${br.com.cerradovivo.DmSimNao?.values()}" keys="${br.com.cerradovivo.DmSimNao.values()*.name()}" required="" value="${aspectoEconomicoInstance?.rendaDaPropriedade?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'suino', 'error')} ">
	<label for="suino">
		<g:message code="aspectoEconomico.suino.label" default="Suino" />
		
	</label>
	<g:checkBox name="suino" value="${aspectoEconomicoInstance?.suino}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'bovinoCorte', 'error')} ">
	<label for="bovinoCorte">
		<g:message code="aspectoEconomico.bovinoCorte.label" default="Bovino Corte" />
		
	</label>
	<g:checkBox name="bovinoCorte" value="${aspectoEconomicoInstance?.bovinoCorte}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'leite', 'error')} ">
	<label for="leite">
		<g:message code="aspectoEconomico.leite.label" default="Leite" />
		
	</label>
	<g:checkBox name="leite" value="${aspectoEconomicoInstance?.leite}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'aves', 'error')} ">
	<label for="aves">
		<g:message code="aspectoEconomico.aves.label" default="Aves" />
		
	</label>
	<g:checkBox name="aves" value="${aspectoEconomicoInstance?.aves}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'pecuariaOutro', 'error')} ">
	<label for="pecuariaOutro">
		<g:message code="aspectoEconomico.pecuariaOutro.label" default="Pecuaria Outro" />
		
	</label>
	<g:textField name="pecuariaOutro" value="${aspectoEconomicoInstance?.pecuariaOutro}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'culturaAnual', 'error')} ">
	<label for="culturaAnual">
		<g:message code="aspectoEconomico.culturaAnual.label" default="Cultura Anual" />
		
	</label>
	<g:checkBox name="culturaAnual" value="${aspectoEconomicoInstance?.culturaAnual}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'hortalica', 'error')} ">
	<label for="hortalica">
		<g:message code="aspectoEconomico.hortalica.label" default="Hortalica" />
		
	</label>
	<g:checkBox name="hortalica" value="${aspectoEconomicoInstance?.hortalica}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'fruticultura', 'error')} ">
	<label for="fruticultura">
		<g:message code="aspectoEconomico.fruticultura.label" default="Fruticultura" />
		
	</label>
	<g:checkBox name="fruticultura" value="${aspectoEconomicoInstance?.fruticultura}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'agriculturaOutro', 'error')} ">
	<label for="agriculturaOutro">
		<g:message code="aspectoEconomico.agriculturaOutro.label" default="Agricultura Outro" />
		
	</label>
	<g:textField name="agriculturaOutro" value="${aspectoEconomicoInstance?.agriculturaOutro}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'arrendamento', 'error')} ">
	<label for="arrendamento">
		<g:message code="aspectoEconomico.arrendamento.label" default="Arrendamento" />
		
	</label>
	<g:checkBox name="arrendamento" value="${aspectoEconomicoInstance?.arrendamento}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'trabalhoExterno', 'error')} ">
	<label for="trabalhoExterno">
		<g:message code="aspectoEconomico.trabalhoExterno.label" default="Trabalho Externo" />
		
	</label>
	<g:checkBox name="trabalhoExterno" value="${aspectoEconomicoInstance?.trabalhoExterno}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'aluguelPasto', 'error')} ">
	<label for="aluguelPasto">
		<g:message code="aspectoEconomico.aluguelPasto.label" default="Aluguel Pasto" />
		
	</label>
	<g:checkBox name="aluguelPasto" value="${aspectoEconomicoInstance?.aluguelPasto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'programaSocial', 'error')} ">
	<label for="programaSocial">
		<g:message code="aspectoEconomico.programaSocial.label" default="Programa Social" />
		
	</label>
	<g:checkBox name="programaSocial" value="${aspectoEconomicoInstance?.programaSocial}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'ajudaFamiliar', 'error')} ">
	<label for="ajudaFamiliar">
		<g:message code="aspectoEconomico.ajudaFamiliar.label" default="Ajuda Familiar" />
		
	</label>
	<g:checkBox name="ajudaFamiliar" value="${aspectoEconomicoInstance?.ajudaFamiliar}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'outro', 'error')} ">
	<label for="outro">
		<g:message code="aspectoEconomico.outro.label" default="Outro" />
		
	</label>
	<g:textField name="outro" value="${aspectoEconomicoInstance?.outro}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'empreitadaAssentamento', 'error')} required">
	<label for="empreitadaAssentamento">
		<g:message code="aspectoEconomico.empreitadaAssentamento.label" default="Empreitada Assentamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="empreitadaAssentamento" from="${br.com.cerradovivo.DmDentroFora?.values()}" keys="${br.com.cerradovivo.DmDentroFora.values()*.name()}" required="" value="${aspectoEconomicoInstance?.empreitadaAssentamento?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'diarista', 'error')} required">
	<label for="diarista">
		<g:message code="aspectoEconomico.diarista.label" default="Diarista" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="diarista" from="${br.com.cerradovivo.DmDentroFora?.values()}" keys="${br.com.cerradovivo.DmDentroFora.values()*.name()}" required="" value="${aspectoEconomicoInstance?.diarista?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'intermediacao', 'error')} required">
	<label for="intermediacao">
		<g:message code="aspectoEconomico.intermediacao.label" default="Intermediacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="intermediacao" from="${br.com.cerradovivo.DmDentroFora?.values()}" keys="${br.com.cerradovivo.DmDentroFora.values()*.name()}" required="" value="${aspectoEconomicoInstance?.intermediacao?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'safrista', 'error')} required">
	<label for="safrista">
		<g:message code="aspectoEconomico.safrista.label" default="Safrista" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="safrista" from="${br.com.cerradovivo.DmDentroFora?.values()}" keys="${br.com.cerradovivo.DmDentroFora.values()*.name()}" required="" value="${aspectoEconomicoInstance?.safrista?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'assalariada', 'error')} required">
	<label for="assalariada">
		<g:message code="aspectoEconomico.assalariada.label" default="Assalariada" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="assalariada" from="${br.com.cerradovivo.DmDentroFora?.values()}" keys="${br.com.cerradovivo.DmDentroFora.values()*.name()}" required="" value="${aspectoEconomicoInstance?.assalariada?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'outroaAtv', 'error')} ">
	<label for="outroaAtv">
		<g:message code="aspectoEconomico.outroaAtv.label" default="Outroa Atv" />
		
	</label>
	<g:textField name="outroaAtv" value="${aspectoEconomicoInstance?.outroaAtv}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'outroaAtvForaOuDentro', 'error')} ">
	<label for="outroaAtvForaOuDentro">
		<g:message code="aspectoEconomico.outroaAtvForaOuDentro.label" default="Outroa Atv Fora Ou Dentro" />
		
	</label>
	<g:select name="outroaAtvForaOuDentro" from="${br.com.cerradovivo.DmDentroFora?.values()}" keys="${br.com.cerradovivo.DmDentroFora.values()*.name()}" value="${aspectoEconomicoInstance?.outroaAtvForaOuDentro?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'artesanato', 'error')} required">
	<label for="artesanato">
		<g:message code="aspectoEconomico.artesanato.label" default="Artesanato" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="artesanato" from="${br.com.cerradovivo.DmDentroFora?.values()}" keys="${br.com.cerradovivo.DmDentroFora.values()*.name()}" required="" value="${aspectoEconomicoInstance?.artesanato?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'corte', 'error')} required">
	<label for="corte">
		<g:message code="aspectoEconomico.corte.label" default="Corte" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="corte" from="${br.com.cerradovivo.DmDentroFora?.values()}" keys="${br.com.cerradovivo.DmDentroFora.values()*.name()}" required="" value="${aspectoEconomicoInstance?.corte?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'comercioNaoAgricola', 'error')} required">
	<label for="comercioNaoAgricola">
		<g:message code="aspectoEconomico.comercioNaoAgricola.label" default="Comercio Nao Agricola" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="comercioNaoAgricola" from="${br.com.cerradovivo.DmDentroFora?.values()}" keys="${br.com.cerradovivo.DmDentroFora.values()*.name()}" required="" value="${aspectoEconomicoInstance?.comercioNaoAgricola?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'servicoNaoAgricola', 'error')} required">
	<label for="servicoNaoAgricola">
		<g:message code="aspectoEconomico.servicoNaoAgricola.label" default="Servico Nao Agricola" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="servicoNaoAgricola" from="${br.com.cerradovivo.DmDentroFora?.values()}" keys="${br.com.cerradovivo.DmDentroFora.values()*.name()}" required="" value="${aspectoEconomicoInstance?.servicoNaoAgricola?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'outroServico', 'error')} ">
	<label for="outroServico">
		<g:message code="aspectoEconomico.outroServico.label" default="Outro Servico" />
		
	</label>
	<g:textField name="outroServico" value="${aspectoEconomicoInstance?.outroServico}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'outroSerForaOuDentro', 'error')} ">
	<label for="outroSerForaOuDentro">
		<g:message code="aspectoEconomico.outroSerForaOuDentro.label" default="Outro Ser Fora Ou Dentro" />
		
	</label>
	<g:select name="outroSerForaOuDentro" from="${br.com.cerradovivo.DmDentroFora?.values()}" keys="${br.com.cerradovivo.DmDentroFora.values()*.name()}" value="${aspectoEconomicoInstance?.outroSerForaOuDentro?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'creditoInst', 'error')} required">
	<label for="creditoInst">
		<g:message code="aspectoEconomico.creditoInst.label" default="Credito Inst" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="creditoInst" from="${br.com.cerradovivo.DmSimNao?.values()}" keys="${br.com.cerradovivo.DmSimNao.values()*.name()}" required="" value="${aspectoEconomicoInstance?.creditoInst?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'valorCredInst', 'error')} ">
	<label for="valorCredInst">
		<g:message code="aspectoEconomico.valorCredInst.label" default="Valor Cred Inst" />
		
	</label>
	<g:field name="valorCredInst" value="${fieldValue(bean: aspectoEconomicoInstance, field: 'valorCredInst')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'creditoMaterial', 'error')} required">
	<label for="creditoMaterial">
		<g:message code="aspectoEconomico.creditoMaterial.label" default="Credito Material" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="creditoMaterial" from="${br.com.cerradovivo.DmSimNao?.values()}" keys="${br.com.cerradovivo.DmSimNao.values()*.name()}" required="" value="${aspectoEconomicoInstance?.creditoMaterial?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'valorMaterial', 'error')} ">
	<label for="valorMaterial">
		<g:message code="aspectoEconomico.valorMaterial.label" default="Valor Material" />
		
	</label>
	<g:field name="valorMaterial" value="${fieldValue(bean: aspectoEconomicoInstance, field: 'valorMaterial')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'pronaf', 'error')} required">
	<label for="pronaf">
		<g:message code="aspectoEconomico.pronaf.label" default="Pronaf" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="pronaf" from="${br.com.cerradovivo.DmSimNao?.values()}" keys="${br.com.cerradovivo.DmSimNao.values()*.name()}" required="" value="${aspectoEconomicoInstance?.pronaf?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'valorPronaf', 'error')} ">
	<label for="valorPronaf">
		<g:message code="aspectoEconomico.valorPronaf.label" default="Valor Pronaf" />
		
	</label>
	<g:field name="valorPronaf" value="${fieldValue(bean: aspectoEconomicoInstance, field: 'valorPronaf')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'creditoCompraGado', 'error')} required">
	<label for="creditoCompraGado">
		<g:message code="aspectoEconomico.creditoCompraGado.label" default="Credito Compra Gado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="creditoCompraGado" from="${br.com.cerradovivo.DmSimNao?.values()}" keys="${br.com.cerradovivo.DmSimNao.values()*.name()}" required="" value="${aspectoEconomicoInstance?.creditoCompraGado?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoEconomicoInstance, field: 'valorCompraGado', 'error')} ">
	<label for="valorCompraGado">
		<g:message code="aspectoEconomico.valorCompraGado.label" default="Valor Compra Gado" />
		
	</label>
	<g:field name="valorCompraGado" value="${fieldValue(bean: aspectoEconomicoInstance, field: 'valorCompraGado')}"/>
</div>

