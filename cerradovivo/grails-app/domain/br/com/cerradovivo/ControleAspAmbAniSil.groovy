package br.com.cerradovivo

class ControleAspAmbAniSil {

	AnimalSilvestre animalSilvestre
	
	static belongsTo = [aspectoAmbiental: AspectoAmbiental]
	
	static mapping = {
		id column: 'idcontaspcambanisil', type: 'long'
	}
	
	static constraints = { 
		animalSilvestre (nullable: false, blank: false)
	}
	
}