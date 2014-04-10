package br.com.cerradovivo

import br.com.cerradovivo.DmEstadoCivil;
import br.com.cerradovivo.DmPosicaoFamiliar;
import br.com.cerradovivo.DmSexo;

class AnimalSilvestre {

	String nome
	DmTipoAnimal tipoAnimal

	static mapping = {
		id column: 'idanimalsil', type: 'long'
	}
	
	static constraints = { 
		nome (nullable: false, blank: false, maxLength:100)
		tipoAnimal (nullable: false, blank: false, maxLength:100)
	}
	
}