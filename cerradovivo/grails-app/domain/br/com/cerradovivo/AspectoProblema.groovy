package br.com.cerradovivo

class AspectoProblema {

	Propriedade propriedade
	
	//6.1
	DmSimNao existeProblemaSocial
	String problemaSocial
	
	//6.2
	DmSimNao existeProblemaSociabilidade
	String problemaSociabilidade
	
	//6.3
	DmSimNao existeProblemaAmbiental
	String problemaAmbiental
	
	//6.4
	DmSimNao existeProblemaProdutivo
	String problemaProdutivo
	
	static mapping = {
		id column: 'idaspectoprob', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
		
		existeProblemaSocial (nullable: false, blank: false)
		problemaSocial (nullable: true, type: "text")
			
			//6.2
		existeProblemaSociabilidade (nullable: false, blank: false)
		problemaSociabilidade (nullable: true, type: "text")
			
			//6.3
		existeProblemaAmbiental (nullable: false, blank: false)
		problemaAmbiental (nullable: true, type: "text")
			
			//6.4
		existeProblemaProdutivo (nullable: false, blank: false)
		problemaProdutivo (nullable: true, type: "text")
	}
	
	static belongsTo = [propriedade:Propriedade]
	
}