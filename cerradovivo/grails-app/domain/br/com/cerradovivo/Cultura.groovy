package br.com.cerradovivo


class Cultura {

	String nome

	static mapping = {
		id column: 'idcultura', type: 'long'
	}
	
	static constraints = { 
		nome (nullable: false, blank: false, maxLength:100, unique:true)
	}
	
}