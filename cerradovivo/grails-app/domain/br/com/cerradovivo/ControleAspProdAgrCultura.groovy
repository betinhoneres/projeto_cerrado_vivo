package br.com.cerradovivo

import java.awt.print.Book;

class ControleAspProdAgrCultura {

	Cultura cultura
	DmUnidadeMedida um
	Double producao
	DmUnidadeArea area
	Boolean consumoProprio
	Boolean comercioExcedente
	Boolean comercioProducao
	Boolean agroindustrializar
	
	static belongsTo = [aspectoProdutivoAgricola: AspectoProdutivoAgricola]
	
	static mapping = {
		id column: 'idcontaspprodcultura', type: 'long';
	}
	
	static constraints = { 
		cultura (nullable: false, blank: false)
		um (nullable: false, blank: false)
		producao (nullable: false, blank: false)
		area (nullable: false, blank: false)
		consumoProprio (nullable: false, blank: false)
		comercioExcedente (nullable: false, blank: false)
		comercioProducao (nullable: false, blank: false)
		agroindustrializar (nullable: false, blank: false)
	}
	
}