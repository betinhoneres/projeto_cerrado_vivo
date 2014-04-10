package br.com.cerradovivo

class ControleAspAmbEspVeg {

	EspecieVegetal especieVegetal
	
	static belongsTo = [aspectoAmbiental: AspectoAmbiental]
	
	static mapping = {
		id column: 'idcontaspcambespveg', type: 'long';
	}
	
	static constraints = { 
		especieVegetal (nullable: false, blank: false)
	}
	
}