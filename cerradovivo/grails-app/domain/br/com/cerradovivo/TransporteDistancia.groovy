package br.com.cerradovivo

class TransporteDistancia {

	Transporte transporte
	
	String nome
	DmTransporteDistancia distancia
	
	static mapping = {
		id column: 'idtransdist', type: 'long';
	}
	
	static constraints = { 
		transporte (nullable: false, blank: false)
	}
	
	static belongsTo = [transporte:Transporte]
	
}