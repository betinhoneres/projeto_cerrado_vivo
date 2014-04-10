package br.com.cerradovivo


class ProdutoAgricola {

	String nome

	static mapping = {
		id column: 'idprodutoagr', type: 'long'
	}
	
	static constraints = { 
		nome (nullable: false, blank: false, maxLength:100, unique:true)
	}
	
}