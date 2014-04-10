package br.com.cerradovivo


class EspecieVegetal {

	String nome

	static mapping = {
		id column: 'idespveg', type: 'long'
	}
	
	static constraints = { 
		nome (nullable: false, blank: false, maxLength:100, unique:true)
	}
	
}