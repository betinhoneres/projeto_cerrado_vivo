package br.com.cerradovivo

class AspectoProdutivoPecuaria {

	Propriedade propriedade

	static belongsTo = [propriedade:Propriedade]
	
	//5.2.2 e 5.2.2.1
	static hasMany = [controleAspProdPecCriacaos: ControleAspProdPecCriacao, controleAspProdPecProdutos: ControleAspProdPecProduto]
	
	//5.2.2.2 Comercializacao da producao
	//Local
	Boolean supermercado
	Boolean naPropriedade
	Boolean vizinho
	Boolean feiraLivre
	Boolean feiraProdutor
	String outroComercioLocal
	
	//Municipio
	Boolean goianesia
	Boolean staIsabel
	Boolean jaragua
	Boolean rianapolis
	Boolean ceres
	String outroComercioMun
	
	static mapping = {
		id column: 'idaspecprodpec', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
		
		supermercado (nullable: false, blank: false)
		naPropriedade (nullable: false, blank: false)
		vizinho (nullable: false, blank: false)
		feiraLivre (nullable: false, blank: false)
		feiraProdutor (nullable: false, blank: false)
		outroComercioLocal (nullable: true)
		
		//Municipio
		goianesia (nullable: false, blank: false)
		staIsabel (nullable: false, blank: false)
		jaragua (nullable: false, blank: false)
		rianapolis (nullable: false, blank: false)
		ceres (nullable: false, blank: false)
		outroComercioMun (nullable: true)
	}
	
}