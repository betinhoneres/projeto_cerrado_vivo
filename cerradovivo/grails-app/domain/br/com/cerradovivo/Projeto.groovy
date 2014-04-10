package br.com.cerradovivo

class Projeto {

	String nomeProjeto
	String instituicaoParceira
	String municipio
	Date dataInicioContrato
	Date dataTerminoContrato
	String linhaAtuacao
	String temaTransversal
	DmUF ufSede
	
	static mapping = {
		id column: 'idprojeto', type: 'long' 
	}
	
	static constraints = {
		nomeProjeto (nullable: false, blank: false, unique:true)
	}
	
}