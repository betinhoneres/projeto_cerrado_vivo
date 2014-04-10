package br.com.cerradovivo

class AspectoAmbiental {

	Propriedade propriedade
	

	//Flora	
	//4.1
	DmSimNao existeApp
	String app
	Double areaApp
	
	//4.1.2
	DmEstadoPreservacao estadoConsApp
	String outroEstadoConsApp
	
	//4.1.2.1
	DmSimNao existeArl
	String arl
	DmEstadoPreservacao estadoConsArl
	String outroEstadoConsArl
	
	//4.1.2 e 4.2.1.1
	static hasMany = [controleAspAmbEspVegs: ControleAspAmbEspVeg, controleAspAmbAniSils: ControleAspAmbAniSil]

	// Fauna
	DmSimNao animaisSilvestres
	
	//Hidrico
	Boolean nascentePerene
	Boolean nascenteTemporaria
	String corrego
	Boolean rioDoPeixe
	Boolean brejo
	Boolean vereda
	Boolean represaLago
	String outroRecHidrico
	
	//4.3.1.1
	DmEstadoPreservacao estadoPresRecHid
	String outroEstadoPresRecHid
	
	//4.3.2
	DmClassificacao disponibilidadeAguaHumano
	String formaDisponibilizarAguaHum
	
	//4.3.3
	DmClassificacao disponibilidadeAguaAnimal
	String formaDisponibilizarAguaAni
	
	//4.3.4
	DmClassificacao disponibilidadeAguaCultivo
	String formaDisponibilizarAguaCult
	
	static mapping = {
		id column: 'idaspecamb', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
		
		existeApp (nullable: false, blank: false)
		app (nullable: true)
		areaApp (nullable: true)
			
			//4.1.2
		estadoConsApp (nullable: true)
		outroEstadoConsApp (nullable: true)
			
			//4.1.2.1
		existeArl (nullable: false, blank: false)
		arl (nullable: true)
		estadoConsArl (nullable: true)
		outroEstadoConsArl (nullable: true)
			
		animaisSilvestres (nullable: false, blank: false)
			
			//Hidrico
		nascentePerene (nullable: false, blank: false)
		nascenteTemporaria (nullable: false, blank: false)
		corrego (nullable: true)
		rioDoPeixe (nullable: false, blank: false)
		brejo (nullable: false, blank: false)
		vereda (nullable: false, blank: false)
		represaLago (nullable: false, blank: false)
		outroRecHidrico (nullable: true)
			
			//4.3.1.1
		estadoPresRecHid (nullable: false, blank: false)
		outroEstadoPresRecHid (nullable: true)
			
			//4.3.2
		disponibilidadeAguaHumano (nullable: false, blank: false)
		formaDisponibilizarAguaHum (nullable: true)
			
			//4.3.3
		disponibilidadeAguaAnimal (nullable: false, blank: false)
		formaDisponibilizarAguaAni (nullable: true)
			
			//4.3.4
		disponibilidadeAguaCultivo (nullable: false, blank: false)
		formaDisponibilizarAguaCult (nullable: true)
		
	}
	
	static belongsTo = [propriedade:Propriedade]
	
}