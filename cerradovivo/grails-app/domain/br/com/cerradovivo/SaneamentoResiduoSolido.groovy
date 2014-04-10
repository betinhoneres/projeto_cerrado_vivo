package br.com.cerradovivo

class SaneamentoResiduoSolido {

	Propriedade propriedade

	//Efluente 1.3.2.1
	Boolean fossaComum
	Boolean fosaSeptica
	Boolean naoTem
	String outroEfluente
	
	//Destino principal esgoto 1.3.2.1.2
	Boolean esgotoCeuAberto
	Boolean esgPrivada
	Boolean esgPeptica
	Boolean esgNegra
	String outroEsgoto
	
	//Destino principal lixo 1.3.2.2.1
	Boolean lixoCeuAberto
	Boolean lixoNascente
	Boolean lixoQueimado
	Boolean lixoEnterrado
	Boolean lixoReciclado
	String outroLixo
	
	static mapping = {
		id column: 'idsanressol', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
	}
	
	static belongsTo = [propriedade:Propriedade]
	
}