package br.com.cerradovivo

import java.awt.geom.Arc2D.Double

class ControleAspProdPecCriacao {

	AnimalCriacao animalCriacao
	Double numeroAnimais
	Boolean consumoProprio
	Boolean comercioExcedente
	Boolean comercioProducao
	Boolean agroindustrializar
	
	static belongsTo = [aspectoProdutivoPecuaria: AspectoProdutivoPecuaria]
	
	static mapping = {
		id column: 'idcontaspprodpeccri', type: 'long';
	}
	
	static constraints = { 
		animalCriacao (nullable: false, blank: false)
		numeroAnimais (nullable: false, blank: false)
		consumoProprio (nullable: false, blank: false)
		comercioExcedente (nullable: false, blank: false)
		comercioProducao (nullable: false, blank: false)
		agroindustrializar (nullable: false, blank: false)
	}
	
}