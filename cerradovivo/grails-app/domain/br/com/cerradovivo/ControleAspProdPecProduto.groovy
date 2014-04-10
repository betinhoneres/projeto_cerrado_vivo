package br.com.cerradovivo

import java.awt.geom.Arc2D.Double

class ControleAspProdPecProduto {

	ProdutoPecuaria produtoPecuaria
	Double numeroAnimais
	Boolean consumoProprio
	Boolean comercioExcedente
	Boolean comercioProducao
	Boolean agroindustrializar
	
	static belongsTo = [aspectoProdutivoPecuaria: AspectoProdutivoPecuaria]
	
	static mapping = {
		id column: 'idcontaspprodpecprod', type: 'long';
	}
	
	static constraints = { 
		produtoPecuaria (nullable: false, blank: false)
		numeroAnimais (nullable: false, blank: false)
		consumoProprio (nullable: false, blank: false)
		comercioExcedente (nullable: false, blank: false)
		comercioProducao (nullable: false, blank: false)
		agroindustrializar (nullable: false, blank: false)
	}
	
}