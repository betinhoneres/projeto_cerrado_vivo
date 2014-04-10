package br.com.cerradovivo


class ControleAspProdAgroInd {

	ProdutoNaoAgricola produtoNaoAgricola
	Boolean consumoProprio
	Boolean comercioExcedente
	Boolean comercioProducao
	Boolean agroindustrializar
	
	static belongsTo = [aspectoProdutivoAgroIndustrializado: AspectoProdutivoAgroIndustrializado]
	
	static mapping = {
		id column: 'idcontaspprodagroind', type: 'long';
	}
	
	static constraints = { 
		produtoNaoAgricola (nullable: false, blank: false)
		consumoProprio (nullable: false, blank: false)
		comercioExcedente (nullable: false, blank: false)
		comercioProducao (nullable: false, blank: false)
		agroindustrializar (nullable: false, blank: false)
	}
	
}