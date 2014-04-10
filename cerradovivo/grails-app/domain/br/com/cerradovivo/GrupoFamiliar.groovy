package br.com.cerradovivo

class GrupoFamiliar {

	Propriedade propriedade
	Integer qtdeGrupoFamiliar
	String tempoDeResidencia
	
	static hasMany = [familiares:ConstituicaoFamiliar]
	
	static mapping = {
		id column: 'idgrupofam', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
		qtdeGrupoFamiliar (nullable: false, blank: false)
		tempoDeResidencia (nullable: false, blank: false)
	}
	
	static belongsTo = [propriedade:Propriedade]
	
}