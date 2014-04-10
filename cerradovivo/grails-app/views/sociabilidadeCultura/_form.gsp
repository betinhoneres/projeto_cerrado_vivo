<%@ page import="br.com.cerradovivo.SociabilidadeCultura" %>



<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'propriedade', 'error')} required">
	<label for="propriedade">
		<g:message code="sociabilidadeCultura.propriedade.label" default="Propriedade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propriedade" name="propriedade.id" from="${br.com.cerradovivo.Propriedade.list()}" optionKey="id" required="" value="${sociabilidadeCulturaInstance?.propriedade?.id}" class="many-to-one"/>
</div>

<h1>2. Aspectos de Sociabilidade e Cultura</h1>
<h2>2.1. Você participa de alguma entidade, associação ou cooperativa?</h2>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'associacaoProdutores', 'error')} ">
	<label for="associacaoProdutores">
		<g:message code="sociabilidadeCultura.associacaoProdutores.label" default="Associação de Produtores. Quais?" />
		
	</label>
	<g:textField name="associacaoProdutores" value="${sociabilidadeCulturaInstance?.associacaoProdutores}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'cooperativaProdutores', 'error')} ">
	<label for="cooperativaProdutores">
		<g:message code="sociabilidadeCultura.cooperativaProdutores.label" default="Cooperativa de Produtores.Qual?" />
		
	</label>
	<g:textField name="cooperativaProdutores" value="${sociabilidadeCulturaInstance?.cooperativaProdutores}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'sindicato', 'error')} ">
	<label for="sindicato">
		<g:message code="sociabilidadeCultura.sindicato.label" default="Sindicato de trabalhadores ou patronal.Qual?" />
		
	</label>
	<g:textField name="sindicato" value="${sociabilidadeCulturaInstance?.sindicato}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'partido', 'error')} ">
	<label for="partido">
		<g:message code="sociabilidadeCultura.partido.label" default="Partido ou associação política.Qual?" />
		
	</label>
	<g:textField name="partido" value="${sociabilidadeCulturaInstance?.partido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'pastoral', 'error')} ">
	<label for="pastoral">
		<g:message code="sociabilidadeCultura.pastoral.label" default="Associação pastoral ou eclesial.Qual?" />
		
	</label>
	<g:textField name="pastoral" value="${sociabilidadeCulturaInstance?.pastoral}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'outrasAssociacoes', 'error')} ">
	<label for="outrasAssociacoes">
		<g:message code="sociabilidadeCultura.outrasAssociacoes.label" default="Outras tipos de associações ou entidades.Qual?" />
		
	</label>
	<g:textField name="outrasAssociacoes" value="${sociabilidadeCulturaInstance?.outrasAssociacoes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'nenhumaAssociacao', 'error')} ">
	<label for="nenhumaAssociacao">
		<g:message code="sociabilidadeCultura.nenhumaAssociacao.label" default="Não participo" />
		
	</label>
	<g:checkBox name="nenhumaAssociacao" value="${sociabilidadeCulturaInstance?.nenhumaAssociacao}" />
</div>

<h2>2.2. A que grupo religioso você e sua família pertencem?</h2>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'catolico', 'error')} ">
	<label for="catolico">
		<g:message code="sociabilidadeCultura.catolico.label" default="Católico" />
		
	</label>
	<g:checkBox name="catolico" value="${sociabilidadeCulturaInstance?.catolico}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'evangelico', 'error')} ">
	<label for="evangelico">
		<g:message code="sociabilidadeCultura.evangelico.label" default="Evangélico" />
		
	</label>
	<g:textField name="evangelico" value="${sociabilidadeCulturaInstance?.evangelico}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'afroBrasileiro', 'error')} ">
	<label for="afroBrasileiro">
		<g:message code="sociabilidadeCultura.afroBrasileiro.label" default="Afro-brasileiro(umbanda, candomblé).Qual?" />
		
	</label>
	<g:textField name="afroBrasileiro" value="${sociabilidadeCulturaInstance?.afroBrasileiro}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'espirita', 'error')} ">
	<label for="espirita">
		<g:message code="sociabilidadeCultura.espirita.label" default="Espírita" />
		
	</label>
	<g:checkBox name="espirita" value="${sociabilidadeCulturaInstance?.espirita}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'outraReligiao', 'error')} ">
	<label for="outraReligiao">
		<g:message code="sociabilidadeCultura.outraReligiao.label" default="Outro grupo religioso.Qual?" />
		
	</label>
	<g:textField name="outraReligiao" value="${sociabilidadeCulturaInstance?.outraReligiao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'nenhumaReligiao', 'error')} ">
	<label for="nenhumaReligiao">
		<g:message code="sociabilidadeCultura.nenhumaReligiao.label" default="Não participo" />
		
	</label>
	<g:checkBox name="nenhumaReligiao" value="${sociabilidadeCulturaInstance?.nenhumaReligiao}" />
</div>

<h2>2.3. Você e sua família participam de alguma manifestação cultural?</h2>

<div class="duascolunas">
<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'foliaReis', 'error')} ">
	<label for="foliaReis">
		<g:message code="sociabilidadeCultura.foliaReis.label" default="Folia de Reis" />
		
	</label>
	<g:checkBox name="foliaReis" value="${sociabilidadeCulturaInstance?.foliaReis}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'congada', 'error')} ">
	<label for="congada">
		<g:message code="sociabilidadeCultura.congada.label" default="Congada" />
		
	</label>
	<g:checkBox name="congada" value="${sociabilidadeCulturaInstance?.congada}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'catira', 'error')} ">
	<label for="catira">
		<g:message code="sociabilidadeCultura.catira.label" default="Catira" />
		
	</label>
	<g:checkBox name="catira" value="${sociabilidadeCulturaInstance?.catira}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'violeiros', 'error')} ">
	<label for="violeiros">
		<g:message code="sociabilidadeCultura.violeiros.label" default="Grupo de Violeiros" />
		
	</label>
	<g:checkBox name="violeiros" value="${sociabilidadeCulturaInstance?.violeiros}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'festaJunina', 'error')} ">
	<label for="festaJunina">
		<g:message code="sociabilidadeCultura.festaJunina.label" default="Festa Junina" />
		
	</label>
	<g:checkBox name="festaJunina" value="${sociabilidadeCulturaInstance?.festaJunina}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'outraFestaRelig', 'error')} ">
	<label for="outraFestaRelig">
		<g:message code="sociabilidadeCultura.outraFestaRelig.label" default="Festa Religiosa.Qual?" />
		
	</label>
	<g:textField name="outraFestaRelig" value="${sociabilidadeCulturaInstance?.outraFestaRelig}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'teatro', 'error')} ">
	<label for="teatro">
		<g:message code="sociabilidadeCultura.teatro.label" default="Teatro" />
		
	</label>
	<g:checkBox name="teatro" value="${sociabilidadeCulturaInstance?.teatro}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'cavalgada', 'error')} ">
	<label for="cavalgada">
		<g:message code="sociabilidadeCultura.cavalgada.label" default="Cavalgada" />
		
	</label>
	<g:checkBox name="cavalgada" value="${sociabilidadeCulturaInstance?.cavalgada}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'danca', 'error')} ">
	<label for="danca">
		<g:message code="sociabilidadeCultura.danca.label" default="Dança" />
		
	</label>
	<g:checkBox name="danca" value="${sociabilidadeCulturaInstance?.danca}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'quermesse', 'error')} ">
	<label for="quermesse">
		<g:message code="sociabilidadeCultura.quermesse.label" default="Quermesse" />
		
	</label>
	<g:checkBox name="quermesse" value="${sociabilidadeCulturaInstance?.quermesse}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'mitica', 'error')} ">
	<label for="mitica">
		<g:message code="sociabilidadeCultura.mitica.label" default="Mística" />
		
	</label>
	<g:checkBox name="mitica" value="${sociabilidadeCulturaInstance?.mitica}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'outraFesta', 'error')} ">
	<label for="outraFesta">
		<g:message code="sociabilidadeCultura.outraFesta.label" default="Outras.Qual?" />
		
	</label>
	<g:textField name="outraFesta" value="${sociabilidadeCulturaInstance?.outraFesta}"/>
</div>

</div>

<h2>2.4. Quais os lugares daqui, onde os moradores costumas se reunir?</h2>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'igreja', 'error')} ">
	<label for="igreja">
		<g:message code="sociabilidadeCultura.igreja.label" default="Igreja" />
		
	</label>
	<g:checkBox name="igreja" value="${sociabilidadeCulturaInstance?.igreja}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'sedeComun', 'error')} ">
	<label for="sedeComun">
		<g:message code="sociabilidadeCultura.sedeComun.label" default="Sede de associação comunitária" />
		
	</label>
	<g:checkBox name="sedeComun" value="${sociabilidadeCulturaInstance?.sedeComun}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'casaFamilia', 'error')} ">
	<label for="casaFamilia">
		<g:message code="sociabilidadeCultura.casaFamilia.label" default="Casa de família" />
		
	</label>
	<g:checkBox name="casaFamilia" value="${sociabilidadeCulturaInstance?.casaFamilia}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'outraReuniao', 'error')} ">
	<label for="outraReuniao">
		<g:message code="sociabilidadeCultura.outraReuniao.label" default="Outro.Qual?" />
		
	</label>
	<g:textField name="outraReuniao" value="${sociabilidadeCulturaInstance?.outraReuniao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'nenhumaReuniao', 'error')} ">
	<label for="nenhumaReuniao">
		<g:message code="sociabilidadeCultura.nenhumaReuniao.label" default="Nenhuma" />
		
	</label>
	<g:checkBox name="nenhumaReuniao" value="${sociabilidadeCulturaInstance?.nenhumaReuniao}" />
</div>

<h2>2.5. Como você fica sabendo das noticías/quais os 3 principais meios de acesso à informação (indicar no máximo 3 alternativas)</h2>

<div class="duascolunas">
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'tv', 'error')} ">
		<label for="tv">
			<g:message code="sociabilidadeCultura.tv.label" default="TV" />
			
		</label>
		<g:checkBox name="tv" value="${sociabilidadeCulturaInstance?.tv}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'radio', 'error')} ">
		<label for="radio">
			<g:message code="sociabilidadeCultura.radio.label" default="Rádio" />
			
		</label>
		<g:checkBox name="radio" value="${sociabilidadeCulturaInstance?.radio}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'lideranca', 'error')} ">
		<label for="lideranca">
			<g:message code="sociabilidadeCultura.lideranca.label" default="Liderança comunitária" />
			
		</label>
		<g:checkBox name="lideranca" value="${sociabilidadeCulturaInstance?.lideranca}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'jornal', 'error')} ">
		<label for="jornal">
			<g:message code="sociabilidadeCultura.jornal.label" default="Jornal" />
			
		</label>
		<g:checkBox name="jornal" value="${sociabilidadeCulturaInstance?.jornal}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'escola', 'error')} ">
		<label for="escola">
			<g:message code="sociabilidadeCultura.escola.label" default="Escola" />
			
		</label>
		<g:checkBox name="escola" value="${sociabilidadeCulturaInstance?.escola}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'repReligioso', 'error')} ">
		<label for="repReligioso">
			<g:message code="sociabilidadeCultura.repReligioso.label" default="Pelo representante religioso (padre, pastor, missionário)" />
			
		</label>
		<g:checkBox name="repReligioso" value="${sociabilidadeCulturaInstance?.repReligioso}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'internet', 'error')} ">
		<label for="internet">
			<g:message code="sociabilidadeCultura.internet.label" default="Internet" />
			
		</label>
		<g:checkBox name="internet" value="${sociabilidadeCulturaInstance?.internet}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'amigoVizinho', 'error')} ">
		<label for="amigoVizinho">
			<g:message code="sociabilidadeCultura.amigoVizinho.label" default="Através de amigos/vizinhos" />
			
		</label>
		<g:checkBox name="amigoVizinho" value="${sociabilidadeCulturaInstance?.amigoVizinho}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'cartaz', 'error')} ">
		<label for="cartaz">
			<g:message code="sociabilidadeCultura.cartaz.label" default="Cartazes e faixas" />
			
		</label>
		<g:checkBox name="cartaz" value="${sociabilidadeCulturaInstance?.cartaz}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'carroSom', 'error')} ">
		<label for="carroSom">
			<g:message code="sociabilidadeCultura.carroSom.label" default="Carro de som" />
			
		</label>
		<g:checkBox name="carroSom" value="${sociabilidadeCulturaInstance?.carroSom}" />
	</div>

	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'outraFonteinf', 'error')} ">
		<label for="outraFonteinf">
			<g:message code="sociabilidadeCultura.outraFonteinf.label" default="Outros.Qual?" />
			
		</label>
		<g:textField name="outraFonteinf" value="${sociabilidadeCulturaInstance?.outraFonteinf}"/>
	</div>
		
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'semInformacao', 'error')} ">
		<label for="semInformacao">
			<g:message code="sociabilidadeCultura.semInformacao.label" default="Não fico sabendo de nada" />
			
		</label>
		<g:checkBox name="semInformacao" value="${sociabilidadeCulturaInstance?.semInformacao}" />
	</div>
	
</div>	

<h2>2.6. O que a sua família faz nos momentos de lazer?</h2>

<div class="duascolunas">

	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'visitaFamiliar', 'error')} ">
		<label for="visitaFamiliar">
			<g:message code="sociabilidadeCultura.visitaFamiliar.label" default="Visita a familiares e amigos" />
			
		</label>
		<g:checkBox name="visitaFamiliar" value="${sociabilidadeCulturaInstance?.visitaFamiliar}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'visitaIgreja', 'error')} ">
		<label for="visitaIgreja">
			<g:message code="sociabilidadeCultura.visitaIgreja.label" default="Vai a igreja" />
			
		</label>
		<g:checkBox name="visitaIgreja" value="${sociabilidadeCulturaInstance?.visitaIgreja}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'visitaRio', 'error')} ">
		<label for="visitaRio">
			<g:message code="sociabilidadeCultura.visitaRio.label" default="Toma banho de rio" />
			
		</label>
		<g:checkBox name="visitaRio" value="${sociabilidadeCulturaInstance?.visitaRio}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'visitaPesca', 'error')} ">
		<label for="visitaPesca">
			<g:message code="sociabilidadeCultura.visitaPesca.label" default="Pesca" />
			
		</label>
		<g:checkBox name="visitaPesca" value="${sociabilidadeCulturaInstance?.visitaPesca}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'visitaFesta', 'error')} ">
		<label for="visitaFesta">
			<g:message code="sociabilidadeCultura.visitaFesta.label" default="Baile/Forró/Festas" />
			
		</label>
		<g:checkBox name="visitaFesta" value="${sociabilidadeCulturaInstance?.visitaFesta}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'visitaFutebol', 'error')} ">
		<label for="visitaFutebol">
			<g:message code="sociabilidadeCultura.visitaFutebol.label" default="Joga futebol" />
			
		</label>
		<g:checkBox name="visitaFutebol" value="${sociabilidadeCulturaInstance?.visitaFutebol}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'visitaBar', 'error')} ">
		<label for="visitaBar">
			<g:message code="sociabilidadeCultura.visitaBar.label" default="Frequenta bar" />
			
		</label>
		<g:checkBox name="visitaBar" value="${sociabilidadeCulturaInstance?.visitaBar}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'visitaTv', 'error')} ">
		<label for="visitaTv">
			<g:message code="sociabilidadeCultura.visitaTv.label" default="Assiste tv" />
			
		</label>
		<g:checkBox name="visitaTv" value="${sociabilidadeCulturaInstance?.visitaTv}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'visitaCidade', 'error')} ">
		<label for="visitaCidade">
			<g:message code="sociabilidadeCultura.visitaCidade.label" default="Vai à cidade" />
			
		</label>
		<g:checkBox name="visitaCidade" value="${sociabilidadeCulturaInstance?.visitaCidade}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'visitaRadio', 'error')} ">
		<label for="visitaRadio">
			<g:message code="sociabilidadeCultura.visitaRadio.label" default="Ouve rádio" />
			
		</label>
		<g:checkBox name="visitaRadio" value="${sociabilidadeCulturaInstance?.visitaRadio}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'visitaNada', 'error')} ">
		<label for="visitaNada">
			<g:message code="sociabilidadeCultura.visitaNada.label" default="Não faz nada" />
			
		</label>
		<g:checkBox name="visitaNada" value="${sociabilidadeCulturaInstance?.visitaNada}" />
	</div>
	
</div>	

<h2>2.7. Quais os problemas que você acha que o assentamento possui (assinale no máximo os 3 mais importantes)??</h2>

<div class="duascolunas">

	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'probRemuneracao', 'error')} ">
		<label for="probRemuneracao">
			<g:message code="sociabilidadeCultura.probRemuneracao.label" default="Dificuldade de trabalho remunerado" />
			
		</label>
		<g:checkBox name="probRemuneracao" value="${sociabilidadeCulturaInstance?.probRemuneracao}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'probEducacao', 'error')} ">
		<label for="probEducacao">
			<g:message code="sociabilidadeCultura.probEducacao.label" default="Dificuldade de atendimento a educação" />
			
		</label>
		<g:checkBox name="probEducacao" value="${sociabilidadeCulturaInstance?.probEducacao}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'probSaude', 'error')} ">
		<label for="probSaude">
			<g:message code="sociabilidadeCultura.probSaude.label" default="Dificuldade de atendimento de saúde" />
			
		</label>
		<g:checkBox name="probSaude" value="${sociabilidadeCulturaInstance?.probSaude}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'probEstrada', 'error')} ">
		<label for="probEstrada">
			<g:message code="sociabilidadeCultura.probEstrada.label" default="Deficiência de estradas" />
			
		</label>
		<g:checkBox name="probEstrada" value="${sociabilidadeCulturaInstance?.probEstrada}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'probEnergia', 'error')} ">
		<label for="probEnergia">
			<g:message code="sociabilidadeCultura.probEnergia.label" default="Falta de energia" />
			
		</label>
		<g:checkBox name="probEnergia" value="${sociabilidadeCulturaInstance?.probEnergia}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'probAssistTecnico', 'error')} ">
		<label for="probAssistTecnico">
			<g:message code="sociabilidadeCultura.probAssistTecnico.label" default="Falta de assistência técnica, apoio a comercialização" />
			
		</label>
		<g:checkBox name="probAssistTecnico" value="${sociabilidadeCulturaInstance?.probAssistTecnico}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'probSaneamento', 'error')} ">
		<label for="probSaneamento">
			<g:message code="sociabilidadeCultura.probSaneamento.label" default="Falta de saneamento(agua e/ou esgoto)" />
			
		</label>
		<g:checkBox name="probSaneamento" value="${sociabilidadeCulturaInstance?.probSaneamento}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'probTransporte', 'error')} ">
		<label for="probTransporte">
			<g:message code="sociabilidadeCultura.probTransporte.label" default="Dificuldade de transporte" />
			
		</label>
		<g:checkBox name="probTransporte" value="${sociabilidadeCulturaInstance?.probTransporte}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'probAcessoInf', 'error')} ">
		<label for="probAcessoInf">
			<g:message code="sociabilidadeCultura.probAcessoInf.label" default="Dificuldade de acesso a informação" />
			
		</label>
		<g:checkBox name="probAcessoInf" value="${sociabilidadeCulturaInstance?.probAcessoInf}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'probAcessoServ', 'error')} ">
		<label for="probAcessoServ">
			<g:message code="sociabilidadeCultura.probAcessoServ.label" default="Dificuldade de acesso a serviços" />
			
		</label>
		<g:checkBox name="probAcessoServ" value="${sociabilidadeCulturaInstance?.probAcessoServ}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'probAcessoCom', 'error')} ">
		<label for="probAcessoCom">
			<g:message code="sociabilidadeCultura.probAcessoCom.label" default="Dificuldade de acesso ao comércio" />
			
		</label>
		<g:checkBox name="probAcessoCom" value="${sociabilidadeCulturaInstance?.probAcessoCom}" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: sociabilidadeCulturaInstance, field: 'outroProblema', 'error')} ">
		<label for="outroProblema">
			<g:message code="sociabilidadeCultura.outroProblema.label" default="Outro." />
			
		</label>
		<g:textField name="outroProblema" value="${sociabilidadeCulturaInstance?.outroProblema}"/>
	</div>
	
</div>