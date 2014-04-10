package br.com.cerradovivo

class AspectoProdutivoAgroIndustrializado {

	Propriedade propriedade

	static belongsTo = [propriedade:Propriedade]
	
	//5.2.4.1
	DmSimNao producaoAgroindustrializada

	//5.2.4.1.1 Comercializacao da producao
	//Local
	Boolean queijos
	Boolean conservas
	Boolean compotas
	Boolean licores
	Boolean embutido
	Boolean carne
	Boolean farinhaMandioca
	Boolean farinhaMilho
	Boolean empacotaLeite
	Boolean polvilho
	Boolean rapadura
	Boolean doces
	String outroProdAgroInd

	//5.2.4.2 Comercializacao da producao
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
	
	//5.2.2 e 5.2.2.1
	static hasMany = [controleAspProdAgroInds: ControleAspProdAgroInd]
	
	static mapping = {
		id column: 'idaspecprodagroind', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
		
		producaoAgroindustrializada (nullable: false, blank: false)

	//5.2.4.1.1 Comercializacao da producao
	//Local
		queijos (nullable: false, blank: false)
		conservas (nullable: false, blank: false)
		compotas (nullable: false, blank: false)
		licores (nullable: false, blank: false)
		embutido (nullable: false, blank: false)
		carne (nullable: false, blank: false)
		farinhaMandioca (nullable: false, blank: false)
		farinhaMilho (nullable: false, blank: false)
		empacotaLeite (nullable: false, blank: false)
		polvilho (nullable: false, blank: false)
		rapadura (nullable: false, blank: false)
		doces (nullable: false, blank: false)
		outroProdAgroInd (nullable: true)
		
			//5.2.4.2 Comercializacao da producao
			//Local
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