package br.com.cerradovivo


class AnimalCriacao {

	String nome

	static mapping = {
		id column: 'idanimalcriacao', type: 'long'
	}
	
	static constraints = { 
		nome (nullable: false, blank: false, maxLength:100, unique:true)
	}
	
}