package br.com.cerradovivo

class SociabilidadeCultura {

	Propriedade propriedade
	
	//2.1
	String associacaoProdutores
	String cooperativaProdutores
	String sindicato
	String partido
	String pastoral
	String outrasAssociacoes
	Boolean nenhumaAssociacao

	//2.2
	Boolean catolico
	String evangelico
	String afroBrasileiro
	Boolean espirita
	String outraReligiao
	Boolean nenhumaReligiao
	
	//2.3
	Boolean foliaReis
	Boolean congada
	Boolean catira
	Boolean violeiros
	Boolean festaJunina
	String outraFestaRelig
	Boolean teatro
	Boolean cavalgada
	Boolean danca
	Boolean quermesse
	Boolean mitica
	String outraFesta
	
	//2.4
	Boolean igreja
	Boolean sedeComun
	Boolean casaFamilia
	String outraReuniao
	Boolean nenhumaReuniao
	
	//2.5
	Boolean tv
	Boolean radio
	Boolean lideranca
	Boolean jornal
	Boolean escola
	Boolean repReligioso
	Boolean internet
	Boolean amigoVizinho
	Boolean cartaz
	Boolean carroSom
	Boolean semInformacao
	String outraFonteinf
	
	//2.6
	Boolean visitaFamiliar
	Boolean visitaIgreja
	Boolean visitaRio
	Boolean visitaPesca
	Boolean visitaFesta
	Boolean visitaFutebol
	Boolean visitaBar
	Boolean visitaTv
	Boolean visitaCidade
	Boolean visitaRadio
	Boolean visitaNada
	
	//2.7
	Boolean probRemuneracao
	Boolean probEducacao
	Boolean probSaude
	Boolean probEstrada
	Boolean probEnergia
	Boolean probAssistTecnico
	Boolean probSaneamento
	Boolean probTransporte
	Boolean probAcessoInf
	Boolean probAcessoServ
	Boolean probAcessoCom
	String outroProblema
	
	
	static mapping = {
		id column: 'idsoccultura', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
		associacaoProdutores(nullable: true)
		cooperativaProdutores(nullable: true)
		sindicato(nullable: true)
		partido(nullable: true)
		pastoral(nullable: true)
		outrasAssociacoes(nullable: true)
		nenhumaAssociacao(nullable: false)
		
		catolico(nullable: false)
		evangelico(nullable: true)
		afroBrasileiro(nullable: true)
		espirita(nullable: false)
		outraReligiao(nullable: true)
		nenhumaReligiao(nullable: false)
		
		foliaReis(nullable: false)
		congada(nullable: false)
		catira(nullable: false)
		violeiros(nullable: false)
		festaJunina(nullable: false)
		outraFestaRelig(nullable: true)
		teatro(nullable: false)
		cavalgada(nullable: false)
		danca(nullable: false)
		quermesse(nullable: false)
		mitica(nullable: false)
		outraFesta(nullable: true)
		
		igreja(nullable: false)
		sedeComun(nullable: false)
		casaFamilia(nullable: false)
		outraReuniao(nullable: true)
		nenhumaReuniao(nullable: false)
			
		tv(nullable: false)
		radio(nullable: false)
		lideranca(nullable: false)
		jornal(nullable: false)
		escola(nullable: false)
		repReligioso(nullable: false)
		internet(nullable: false)
		amigoVizinho(nullable: false)
		cartaz(nullable: false)
		carroSom(nullable: false)
		outraFonteinf(nullable: true)
		semInformacao(nullable: false)
		
		visitaFamiliar(nullable: false)
		visitaIgreja(nullable: false)
		visitaRio(nullable: false)
		visitaPesca(nullable: false)
		visitaFesta(nullable: false)
		visitaFutebol(nullable: false)
		visitaBar(nullable: false)
		visitaTv(nullable: false)
		visitaCidade(nullable: false)
		visitaRadio(nullable: false)
		visitaNada(nullable: true)
			
		probRemuneracao(nullable: false)
		probEducacao(nullable: false)
		probSaude(nullable: false)
		probEstrada(nullable: false)
		probEnergia(nullable: false)
		probAssistTecnico(nullable: false)
		probSaneamento(nullable: false)
		probTransporte(nullable: false)
		probAcessoInf(nullable: false)
		probAcessoServ(nullable: false)
		probAcessoCom(nullable: false)
		outroProblema(nullable: true)
	}
	
	static belongsTo = [propriedade:Propriedade]
	
}