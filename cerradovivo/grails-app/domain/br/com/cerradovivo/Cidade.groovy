package br.com.cerradovivo


class Cidade {

	String nome
	DmUF uf

	static mapping = {
		id column: 'idcidade', type: 'long'
	}
	
	static constraints = { 
		nome (nullable: false, blank: false, maxLength:100)
		uf(nullable: false, blank: false)
	}
	
	@Override
	public String toString() {
		return nome + "/" + uf;
	}
}