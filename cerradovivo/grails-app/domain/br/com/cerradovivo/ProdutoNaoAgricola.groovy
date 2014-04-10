package br.com.cerradovivo


class ProdutoNaoAgricola {

	String nome

	static mapping = {
		id column: 'idprodutonaoagric', type: 'long'
	}
	
	static constraints = {
		nome (nullable: false, blank: false, maxLength:100, unique:true)
	}
	
}