package br.com.cerradovivo


class ProdutoPecuaria {

	String nome

	static mapping = {
		id column: 'idprodutopec', type: 'long'
	}
	
	static constraints = { 
		nome (nullable: false, blank: false, maxLength:100, unique:true)
	}
	
}