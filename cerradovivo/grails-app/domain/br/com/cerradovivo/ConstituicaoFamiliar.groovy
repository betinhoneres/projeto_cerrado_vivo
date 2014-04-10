package br.com.cerradovivo

import br.com.cerradovivo.DmEstadoCivil;
import br.com.cerradovivo.DmPosicaoFamiliar;
import br.com.cerradovivo.DmSexo;

class ConstituicaoFamiliar {

	String nome
	DmPosicaoFamiliar posicaoFamiliar
	Integer idade
	DmSexo sexo
	String naturalidade
	DmEstadoCivil estadoCivil
	DmEscolaridade escolaridade
	
	static mapping = {
		id column: 'idconstfam', type: 'long'
	}
	
	static belongsTo = [grupoFamiliar:GrupoFamiliar]
	
	static constraints = { 
		nome (nullable: false, blank: false, maxSize: 120)
		posicaoFamiliar (nullable: false, blank: false)
		idade(nullable: false, blank: false)
		sexo(nullable: false, blank: false)
		naturalidade(nullable: false, blank: false)
		estadoCivil(nullable: false, blank: false)
		escolaridade(nullable: false, blank: false)
	}
	
}