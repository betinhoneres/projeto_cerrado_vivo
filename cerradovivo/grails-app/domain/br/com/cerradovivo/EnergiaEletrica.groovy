package br.com.cerradovivo

class EnergiaEletrica {

	Propriedade propriedade
	
	//1.5
	DmSimNao possuiEnergia
	
	//1.5.1
	Boolean redeGeral
	Boolean geradorMotor
	Boolean placaSolar
	String outro
	
	static mapping = {
		id column: 'idee', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
	}
	
	static belongsTo = [propriedade:Propriedade]
	
}