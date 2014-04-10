<%@ page import="br.com.cerradovivo.Transporte" %>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="transporte.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${transporteInstance?.propriedade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'distSedeMun', 'error')} required">
	<label for="distSedeMun">
		<g:message code="transporte.distSedeMun.label" default="Qual é a distância da unidade familiar a sede do município?" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="distSedeMun" from="${br.com.cerradovivo.DmTransporteDistancia?.values()}" keys="${br.com.cerradovivo.DmTransporteDistancia.values()*.name()}" required="" value="${transporteInstance?.distSedeMun?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'controleTransporteCidade', 'error')} ">
	<label for="controleTransporteCidade">
		<g:message code="transporte.controleTransporteCidade.label" default="Qual é a distância da unidade familiar em relação ao aglomerado de famílias (vila, sede comunitária, sede de bairro rural, distrito) mais próximo?" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${transporteInstance?.controleTransporteCidade?}" var="c">
    <li><g:link controller="controleTransporteCidade" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="controleTransporteCidade" action="create" params="['transporte.id': transporteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'controleTransporteCidade.label', default: 'ControleTransporteCidade')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'acessoSemChuva', 'error')} required">
	<label for="acessoSemChuva">
		<g:message code="transporte.acessoSemChuva.label" default="Período sem chuvas" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="acessoSemChuva" from="${br.com.cerradovivo.DmTransporteSituacao?.values()}" keys="${br.com.cerradovivo.DmTransporteSituacao.values()*.name()}" required="" value="${transporteInstance?.acessoSemChuva?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'acessoComChuva', 'error')} required">
	<label for="acessoComChuva">
		<g:message code="transporte.acessoComChuva.label" default="Período com chuva" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="acessoComChuva" from="${br.com.cerradovivo.DmTransporteSituacao?.values()}" keys="${br.com.cerradovivo.DmTransporteSituacao.values()*.name()}" required="" value="${transporteInstance?.acessoComChuva?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'onibusProvado', 'error')} ">
	<label for="onibusProvado">
		<g:message code="transporte.onibusProvado.label" default="Ônibus de linha - transporte privado" />
		
	</label>
	<g:checkBox name="onibusProvado" value="${transporteInstance?.onibusProvado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'onibusPublico', 'error')} ">
	<label for="onibusPublico">
		<g:message code="transporte.onibusPublico.label" default="Ônibus de linha - transporte público" />
		
	</label>
	<g:checkBox name="onibusPublico" value="${transporteInstance?.onibusPublico}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'outroTransporte', 'error')} ">
	<label for="outroTransporte">
		<g:message code="transporte.outroTransporte.label" default="Outros" />
		
	</label>
	<g:textField name="outroTransporte" value="${transporteInstance?.outroTransporte}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'carro', 'error')} ">
	<label for="carro">
		<g:message code="transporte.carro.label" default="Carro ou utilitário própio" />
		
	</label>
	<g:checkBox name="carro" value="${transporteInstance?.carro}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'cavalo', 'error')} ">
	<label for="cavalo">
		<g:message code="transporte.cavalo.label" default="Cavalo ou outros animais" />
		
	</label>
	<g:checkBox name="cavalo" value="${transporteInstance?.cavalo}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'moto', 'error')} ">
	<label for="moto">
		<g:message code="transporte.moto.label" default="Moto própia" />
		
	</label>
	<g:checkBox name="moto" value="${transporteInstance?.moto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'trator', 'error')} ">
	<label for="trator">
		<g:message code="transporte.trator.label" default="Trator" />
		
	</label>
	<g:checkBox name="trator" value="${transporteInstance?.trator}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'bicicleta', 'error')} ">
	<label for="bicicleta">
		<g:message code="transporte.bicicleta.label" default="Bicicleta própia" />
		
	</label>
	<g:checkBox name="bicicleta" value="${transporteInstance?.bicicleta}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'aPe', 'error')} ">
	<label for="aPe">
		<g:message code="transporte.aPe.label" default="A pé" />
		
	</label>
	<g:checkBox name="aPe" value="${transporteInstance?.aPe}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'goianesia', 'error')} ">
	<label for="goianesia">
		<g:message code="transporte.goianesia.label" default="Goianésia" />
		
	</label>
	<g:checkBox name="goianesia" value="${transporteInstance?.goianesia}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'goiania', 'error')} ">
	<label for="goiania">
		<g:message code="transporte.goiania.label" default="Goiânia" />
		
	</label>
	<g:checkBox name="goiania" value="${transporteInstance?.goiania}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'staisabel', 'error')} ">
	<label for="staisabel">
		<g:message code="transporte.staisabel.label" default="Santa Isabel/Cirilândia" />
		
	</label>
	<g:checkBox name="staisabel" value="${transporteInstance?.staisabel}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'ceres', 'error')} ">
	<label for="ceres">
		<g:message code="transporte.ceres.label" default="Ceres/Rialma" />
		
	</label>
	<g:checkBox name="ceres" value="${transporteInstance?.ceres}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'jaragua', 'error')} ">
	<label for="jaragua">
		<g:message code="transporte.jaragua.label" default="Jaraguá" />
		
	</label>
	<g:checkBox name="jaragua" value="${transporteInstance?.jaragua}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'outroLocal', 'error')} ">
	<label for="outroLocal">
		<g:message code="transporte.outroLocal.label" default="Outro" />
		
	</label>
	<g:textField name="outroLocal" value="${transporteInstance?.outroLocal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'energiaEletrica', 'error')} required">
	<label for="energiaEletrica">
		<g:message code="transporte.energiaEletrica.label" default="Energia Elétrica" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="energiaEletrica" from="${br.com.cerradovivo.DmSimNao?.values()}" keys="${br.com.cerradovivo.DmSimNao.values()*.name()}" required="" value="${transporteInstance?.energiaEletrica?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'redeGeral', 'error')} ">
	<label for="redeGeral">
		<g:message code="transporte.redeGeral.label" default="Rede geral" />
		
	</label>
	<g:checkBox name="redeGeral" value="${transporteInstance?.redeGeral}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'geradorMotor', 'error')} ">
	<label for="geradorMotor">
		<g:message code="transporte.geradorMotor.label" default="Gerador/Motor" />
		
	</label>
	<g:checkBox name="geradorMotor" value="${transporteInstance?.geradorMotor}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'placaSolar', 'error')} ">
	<label for="placaSolar">
		<g:message code="transporte.placaSolar.label" default="Placa solar" />
		
	</label>
	<g:checkBox name="placaSolar" value="${transporteInstance?.placaSolar}" />
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'outroEE', 'error')} ">
	<label for="outroEE">
		<g:message code="transporte.outroEE.label" default="Outro" />
		
	</label>
	<g:textField name="outroEE" value="${transporteInstance?.outroEE}"/>
</div>