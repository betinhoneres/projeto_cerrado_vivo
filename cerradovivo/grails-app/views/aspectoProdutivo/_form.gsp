<%@ page import="br.com.cerradovivo.AspectoProdutivo" %>



<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="aspectoProdutivo.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${aspectoProdutivoInstance?.propriedade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'pastagemNatural', 'error')} ">
	<label for="pastagemNatural">
		<g:message code="aspectoProdutivo.pastagemNatural.label" default="Pastagem Natural" />
		
	</label>
	<g:checkBox name="pastagemNatural" value="${aspectoProdutivoInstance?.pastagemNatural}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaPastagemNatural', 'error')} ">
	<label for="areaPastagemNatural">
		<g:message code="aspectoProdutivo.areaPastagemNatural.label" default="Area Pastagem Natural" />
		
	</label>
	<g:field name="areaPastagemNatural" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaPastagemNatural')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'pastagemCultivada', 'error')} ">
	<label for="pastagemCultivada">
		<g:message code="aspectoProdutivo.pastagemCultivada.label" default="Pastagem Cultivada" />
		
	</label>
	<g:checkBox name="pastagemCultivada" value="${aspectoProdutivoInstance?.pastagemCultivada}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaPastagemCultivada', 'error')} ">
	<label for="areaPastagemCultivada">
		<g:message code="aspectoProdutivo.areaPastagemCultivada.label" default="Area Pastagem Cultivada" />
		
	</label>
	<g:field name="areaPastagemCultivada" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaPastagemCultivada')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'lavoraTemporaria', 'error')} ">
	<label for="lavoraTemporaria">
		<g:message code="aspectoProdutivo.lavoraTemporaria.label" default="Lavora Temporaria" />
		
	</label>
	<g:checkBox name="lavoraTemporaria" value="${aspectoProdutivoInstance?.lavoraTemporaria}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaLavoraTemporaria', 'error')} ">
	<label for="areaLavoraTemporaria">
		<g:message code="aspectoProdutivo.areaLavoraTemporaria.label" default="Area Lavora Temporaria" />
		
	</label>
	<g:field name="areaLavoraTemporaria" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaLavoraTemporaria')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'carpineiraCanavial', 'error')} ">
	<label for="carpineiraCanavial">
		<g:message code="aspectoProdutivo.carpineiraCanavial.label" default="Carpineira Canavial" />
		
	</label>
	<g:checkBox name="carpineiraCanavial" value="${aspectoProdutivoInstance?.carpineiraCanavial}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaCarpineiraCanavial', 'error')} ">
	<label for="areaCarpineiraCanavial">
		<g:message code="aspectoProdutivo.areaCarpineiraCanavial.label" default="Area Carpineira Canavial" />
		
	</label>
	<g:field name="areaCarpineiraCanavial" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaCarpineiraCanavial')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'apps', 'error')} ">
	<label for="apps">
		<g:message code="aspectoProdutivo.apps.label" default="Apps" />
		
	</label>
	<g:checkBox name="apps" value="${aspectoProdutivoInstance?.apps}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaApps', 'error')} ">
	<label for="areaApps">
		<g:message code="aspectoProdutivo.areaApps.label" default="Area Apps" />
		
	</label>
	<g:field name="areaApps" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaApps')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'mata', 'error')} ">
	<label for="mata">
		<g:message code="aspectoProdutivo.mata.label" default="Mata" />
		
	</label>
	<g:checkBox name="mata" value="${aspectoProdutivoInstance?.mata}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaMata', 'error')} ">
	<label for="areaMata">
		<g:message code="aspectoProdutivo.areaMata.label" default="Area Mata" />
		
	</label>
	<g:field name="areaMata" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaMata')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'capoeira', 'error')} ">
	<label for="capoeira">
		<g:message code="aspectoProdutivo.capoeira.label" default="Capoeira" />
		
	</label>
	<g:checkBox name="capoeira" value="${aspectoProdutivoInstance?.capoeira}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaCapoeira', 'error')} ">
	<label for="areaCapoeira">
		<g:message code="aspectoProdutivo.areaCapoeira.label" default="Area Capoeira" />
		
	</label>
	<g:field name="areaCapoeira" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaCapoeira')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'silvicultura', 'error')} required">
	<label for="silvicultura">
		<g:message code="aspectoProdutivo.silvicultura.label" default="Silvicultura" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="silvicultura" required="" value="${aspectoProdutivoInstance?.silvicultura}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaSilvicultura', 'error')} ">
	<label for="areaSilvicultura">
		<g:message code="aspectoProdutivo.areaSilvicultura.label" default="Area Silvicultura" />
		
	</label>
	<g:field name="areaSilvicultura" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaSilvicultura')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'fruticultura', 'error')} ">
	<label for="fruticultura">
		<g:message code="aspectoProdutivo.fruticultura.label" default="Fruticultura" />
		
	</label>
	<g:checkBox name="fruticultura" value="${aspectoProdutivoInstance?.fruticultura}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaFruticultura', 'error')} ">
	<label for="areaFruticultura">
		<g:message code="aspectoProdutivo.areaFruticultura.label" default="Area Fruticultura" />
		
	</label>
	<g:field name="areaFruticultura" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaFruticultura')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'outroCoberturaVegetal', 'error')} ">
	<label for="outroCoberturaVegetal">
		<g:message code="aspectoProdutivo.outroCoberturaVegetal.label" default="Outro Cobertura Vegetal" />
		
	</label>
	<g:textField name="outroCoberturaVegetal" value="${aspectoProdutivoInstance?.outroCoberturaVegetal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaOutraCobVeg', 'error')} ">
	<label for="areaOutraCobVeg">
		<g:message code="aspectoProdutivo.areaOutraCobVeg.label" default="Area Outra Cob Veg" />
		
	</label>
	<g:field name="areaOutraCobVeg" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaOutraCobVeg')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'cultura', 'error')} ">
	<label for="cultura">
		<g:message code="aspectoProdutivo.cultura.label" default="Cultura" />
		
	</label>
	<g:checkBox name="cultura" value="${aspectoProdutivoInstance?.cultura}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaCultura', 'error')} ">
	<label for="areaCultura">
		<g:message code="aspectoProdutivo.areaCultura.label" default="Area Cultura" />
		
	</label>
	<g:field name="areaCultura" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaCultura')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'chaoVermelho', 'error')} ">
	<label for="chaoVermelho">
		<g:message code="aspectoProdutivo.chaoVermelho.label" default="Chao Vermelho" />
		
	</label>
	<g:checkBox name="chaoVermelho" value="${aspectoProdutivoInstance?.chaoVermelho}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaChaoVermelha', 'error')} ">
	<label for="areaChaoVermelha">
		<g:message code="aspectoProdutivo.areaChaoVermelha.label" default="Area Chao Vermelha" />
		
	</label>
	<g:field name="areaChaoVermelha" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaChaoVermelha')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'chaoAmarelo', 'error')} ">
	<label for="chaoAmarelo">
		<g:message code="aspectoProdutivo.chaoAmarelo.label" default="Chao Amarelo" />
		
	</label>
	<g:checkBox name="chaoAmarelo" value="${aspectoProdutivoInstance?.chaoAmarelo}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaChaoAmarelo', 'error')} ">
	<label for="areaChaoAmarelo">
		<g:message code="aspectoProdutivo.areaChaoAmarelo.label" default="Area Chao Amarelo" />
		
	</label>
	<g:field name="areaChaoAmarelo" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaChaoAmarelo')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'argiloso', 'error')} ">
	<label for="argiloso">
		<g:message code="aspectoProdutivo.argiloso.label" default="Argiloso" />
		
	</label>
	<g:checkBox name="argiloso" value="${aspectoProdutivoInstance?.argiloso}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaArgiloso', 'error')} ">
	<label for="areaArgiloso">
		<g:message code="aspectoProdutivo.areaArgiloso.label" default="Area Argiloso" />
		
	</label>
	<g:field name="areaArgiloso" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaArgiloso')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'arenoArgiloso', 'error')} ">
	<label for="arenoArgiloso">
		<g:message code="aspectoProdutivo.arenoArgiloso.label" default="Areno Argiloso" />
		
	</label>
	<g:checkBox name="arenoArgiloso" value="${aspectoProdutivoInstance?.arenoArgiloso}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaArenoArgiloso', 'error')} ">
	<label for="areaArenoArgiloso">
		<g:message code="aspectoProdutivo.areaArenoArgiloso.label" default="Area Areno Argiloso" />
		
	</label>
	<g:field name="areaArenoArgiloso" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaArenoArgiloso')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'pedregoso', 'error')} ">
	<label for="pedregoso">
		<g:message code="aspectoProdutivo.pedregoso.label" default="Pedregoso" />
		
	</label>
	<g:checkBox name="pedregoso" value="${aspectoProdutivoInstance?.pedregoso}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaPedregoso', 'error')} ">
	<label for="areaPedregoso">
		<g:message code="aspectoProdutivo.areaPedregoso.label" default="Area Pedregoso" />
		
	</label>
	<g:field name="areaPedregoso" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaPedregoso')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'outroTipoSolo', 'error')} ">
	<label for="outroTipoSolo">
		<g:message code="aspectoProdutivo.outroTipoSolo.label" default="Outro Tipo Solo" />
		
	</label>
	<g:textField name="outroTipoSolo" value="${aspectoProdutivoInstance?.outroTipoSolo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaOutroTipoSolo', 'error')} ">
	<label for="areaOutroTipoSolo">
		<g:message code="aspectoProdutivo.areaOutroTipoSolo.label" default="Area Outro Tipo Solo" />
		
	</label>
	<g:field name="areaOutroTipoSolo" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaOutroTipoSolo')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'planoSuave', 'error')} ">
	<label for="planoSuave">
		<g:message code="aspectoProdutivo.planoSuave.label" default="Plano Suave" />
		
	</label>
	<g:checkBox name="planoSuave" value="${aspectoProdutivoInstance?.planoSuave}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaPlanoSuave', 'error')} ">
	<label for="areaPlanoSuave">
		<g:message code="aspectoProdutivo.areaPlanoSuave.label" default="Area Plano Suave" />
		
	</label>
	<g:field name="areaPlanoSuave" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaPlanoSuave')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'ondulado', 'error')} ">
	<label for="ondulado">
		<g:message code="aspectoProdutivo.ondulado.label" default="Ondulado" />
		
	</label>
	<g:checkBox name="ondulado" value="${aspectoProdutivoInstance?.ondulado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaOndulado', 'error')} ">
	<label for="areaOndulado">
		<g:message code="aspectoProdutivo.areaOndulado.label" default="Area Ondulado" />
		
	</label>
	<g:field name="areaOndulado" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaOndulado')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'forteOndulado', 'error')} ">
	<label for="forteOndulado">
		<g:message code="aspectoProdutivo.forteOndulado.label" default="Forte Ondulado" />
		
	</label>
	<g:checkBox name="forteOndulado" value="${aspectoProdutivoInstance?.forteOndulado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaForteOndulado', 'error')} ">
	<label for="areaForteOndulado">
		<g:message code="aspectoProdutivo.areaForteOndulado.label" default="Area Forte Ondulado" />
		
	</label>
	<g:field name="areaForteOndulado" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaForteOndulado')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'montanhoso', 'error')} ">
	<label for="montanhoso">
		<g:message code="aspectoProdutivo.montanhoso.label" default="Montanhoso" />
		
	</label>
	<g:checkBox name="montanhoso" value="${aspectoProdutivoInstance?.montanhoso}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'areaMontanhoso', 'error')} ">
	<label for="areaMontanhoso">
		<g:message code="aspectoProdutivo.areaMontanhoso.label" default="Area Montanhoso" />
		
	</label>
	<g:field name="areaMontanhoso" value="${fieldValue(bean: aspectoProdutivoInstance, field: 'areaMontanhoso')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'curral', 'error')} ">
	<label for="curral">
		<g:message code="aspectoProdutivo.curral.label" default="Curral" />
		
	</label>
	<g:checkBox name="curral" value="${aspectoProdutivoInstance?.curral}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'mangueiro', 'error')} ">
	<label for="mangueiro">
		<g:message code="aspectoProdutivo.mangueiro.label" default="Mangueiro" />
		
	</label>
	<g:checkBox name="mangueiro" value="${aspectoProdutivoInstance?.mangueiro}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'estabulo', 'error')} ">
	<label for="estabulo">
		<g:message code="aspectoProdutivo.estabulo.label" default="Estabulo" />
		
	</label>
	<g:checkBox name="estabulo" value="${aspectoProdutivoInstance?.estabulo}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'cerca', 'error')} ">
	<label for="cerca">
		<g:message code="aspectoProdutivo.cerca.label" default="Cerca" />
		
	</label>
	<g:checkBox name="cerca" value="${aspectoProdutivoInstance?.cerca}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'paiol', 'error')} ">
	<label for="paiol">
		<g:message code="aspectoProdutivo.paiol.label" default="Paiol" />
		
	</label>
	<g:checkBox name="paiol" value="${aspectoProdutivoInstance?.paiol}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'chiqueiroPocilga', 'error')} ">
	<label for="chiqueiroPocilga">
		<g:message code="aspectoProdutivo.chiqueiroPocilga.label" default="Chiqueiro Pocilga" />
		
	</label>
	<g:checkBox name="chiqueiroPocilga" value="${aspectoProdutivoInstance?.chiqueiroPocilga}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'silo', 'error')} ">
	<label for="silo">
		<g:message code="aspectoProdutivo.silo.label" default="Silo" />
		
	</label>
	<g:checkBox name="silo" value="${aspectoProdutivoInstance?.silo}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'acude', 'error')} ">
	<label for="acude">
		<g:message code="aspectoProdutivo.acude.label" default="Acude" />
		
	</label>
	<g:checkBox name="acude" value="${aspectoProdutivoInstance?.acude}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'apiario', 'error')} ">
	<label for="apiario">
		<g:message code="aspectoProdutivo.apiario.label" default="Apiario" />
		
	</label>
	<g:checkBox name="apiario" value="${aspectoProdutivoInstance?.apiario}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'tanquePiscicultua', 'error')} ">
	<label for="tanquePiscicultua">
		<g:message code="aspectoProdutivo.tanquePiscicultua.label" default="Tanque Piscicultua" />
		
	</label>
	<g:checkBox name="tanquePiscicultua" value="${aspectoProdutivoInstance?.tanquePiscicultua}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'poco', 'error')} ">
	<label for="poco">
		<g:message code="aspectoProdutivo.poco.label" default="Poco" />
		
	</label>
	<g:checkBox name="poco" value="${aspectoProdutivoInstance?.poco}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'galpao', 'error')} ">
	<label for="galpao">
		<g:message code="aspectoProdutivo.galpao.label" default="Galpao" />
		
	</label>
	<g:checkBox name="galpao" value="${aspectoProdutivoInstance?.galpao}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'caixaDagua', 'error')} ">
	<label for="caixaDagua">
		<g:message code="aspectoProdutivo.caixaDagua.label" default="Caixa Dagua" />
		
	</label>
	<g:checkBox name="caixaDagua" value="${aspectoProdutivoInstance?.caixaDagua}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aspectoProdutivoInstance, field: 'outraInstalacaoProd', 'error')} ">
	<label for="outraInstalacaoProd">
		<g:message code="aspectoProdutivo.outraInstalacaoProd.label" default="Outra Instalacao Prod" />
		
	</label>
	<g:textField name="outraInstalacaoProd" value="${aspectoProdutivoInstance?.outraInstalacaoProd}"/>
</div>

