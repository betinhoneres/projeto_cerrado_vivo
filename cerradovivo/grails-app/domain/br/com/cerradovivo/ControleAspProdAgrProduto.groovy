package br.com.cerradovivo

import java.awt.print.Book;

class ControleAspProdAgrProduto {

	ProdutoAgricola produtoAgricola
	DmUnidadeMedida um
	Double quantidade
	Boolean consumoProprio
	Boolean comercioExcedente
	Boolean comercioProducao
	Boolean agroindustrializar
	
	static belongsTo = [aspectoProdutivoAgricola: AspectoProdutivoAgricola]
	
	static mapping = {
		id column: 'idcontaspprodproduto', type: 'long';
	}
	
	static constraints = { 
		produtoAgricola (nullable: false, blank: false)
		um (nullable: false, blank: false)
		consumoProprio (nullable: false, blank: false)
		comercioExcedente (nullable: false, blank: false)
		comercioProducao (nullable: false, blank: false)
		agroindustrializar (nullable: false, blank: false)
	}
	
}