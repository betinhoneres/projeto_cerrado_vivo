package br.com.cerradovivo

class AspectoEconomico {

	Propriedade propriedade
	
	//3.1
	Integer qtdSalMin2007
	Integer qtdSalMin2008
	Integer qtdSalMin2009
	Integer qtdSalMin2010
	Integer qtdSalMin2011
	Integer qtdSalMin2012

	//3.2
	Boolean bolsaFamilia
	Boolean aposentadoria
	Boolean pensao
	String outroBeneficio
	
	//3.3
	DmSimNao rendaDaPropriedade
	
	//3.3.1
	Boolean suino
	Boolean bovinoCorte
	Boolean leite
	Boolean aves
	String pecuariaOutro
	Boolean culturaAnual
	Boolean hortalica
	Boolean fruticultura
	String agriculturaOutro
	Boolean arrendamento
	Boolean trabalhoExterno
	Boolean aluguelPasto
	Boolean programaSocial
	Boolean ajudaFamiliar
	String outro

	//3.4
	DmDentroFora empreitadaAssentamento
	DmDentroFora diarista
	DmDentroFora intermediacao
	DmDentroFora safrista
	DmDentroFora assalariada
	String outroaAtv
	DmDentroFora outroaAtvForaOuDentro
	
	//3.5
	DmDentroFora artesanato
	DmDentroFora corte
	DmDentroFora comercioNaoAgricola
	DmDentroFora servicoNaoAgricola
	String outroServico
	DmDentroFora outroSerForaOuDentro
	
	//3.6
	DmSimNao creditoInst
	Double valorCredInst
	DmSimNao creditoMaterial
	Double valorMaterial
	DmSimNao pronaf
	Double valorPronaf
	DmSimNao creditoCompraGado
	Double valorCompraGado
	
	static mapping = {
		id column: 'idaspectoecon', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
		qtdSalMin2007 (nullable: false, blank: false)
		qtdSalMin2008 (nullable: false, blank: false)
		qtdSalMin2009 (nullable: false, blank: false)
		qtdSalMin2010 (nullable: false, blank: false)
		qtdSalMin2011 (nullable: false, blank: false)
		qtdSalMin2012 (nullable: false, blank: false)
		
			//3.2
		bolsaFamilia (nullable: false, blank: false)
		aposentadoria (nullable: false, blank: false)
		pensao (nullable: false, blank: false)
		outroBeneficio (nullable: false, blank: false)
			
			//3.3
		rendaDaPropriedade  (nullable: false, blank: false)
			
			//3.3.1
		suino (nullable: false, blank: false)
		bovinoCorte (nullable: false, blank: false)
		leite (nullable: false, blank: false)
		aves (nullable: false, blank: false)
		pecuariaOutro (nullable: true)
		culturaAnual (nullable: false, blank: false)
		hortalica (nullable: false, blank: false)
		fruticultura (nullable: false, blank: false)
		agriculturaOutro (nullable: true)
		arrendamento (nullable: false, blank: false)
		trabalhoExterno (nullable: false, blank: false)
		aluguelPasto (nullable: false, blank: false)
		programaSocial (nullable: false, blank: false)
		ajudaFamiliar (nullable: false, blank: false)
		outro (nullable: true)
		
			//3.4
		empreitadaAssentamento (nullable: false, blank: false)
		diarista (nullable: false, blank: false)
		intermediacao (nullable: false, blank: false)
		safrista (nullable: false, blank: false)
		assalariada (nullable: false, blank: false)
		outroaAtv (nullable: true)
		outroaAtvForaOuDentro (nullable: true)
			
			//3.5
		artesanato (nullable: false, blank: false)
		corte (nullable: false, blank: false)
		comercioNaoAgricola (nullable: false, blank: false)
		servicoNaoAgricola (nullable: false, blank: false)
		outroServico (nullable: true)
		outroSerForaOuDentro (nullable: true)
			
			//3.6
		creditoInst (nullable: false, blank: false)
		valorCredInst (nullable: true)
		creditoMaterial (nullable: false, blank: false)
		valorMaterial (nullable: true)
		pronaf (nullable: false, blank: false)
		valorPronaf (nullable: true)
		creditoCompraGado (nullable: false, blank: false)
		valorCompraGado (nullable: true)
	}
	
	static belongsTo = [propriedade:Propriedade]
	
}