package br.com.cerradovivo

class AspectoProdutivoTecnologico {

	Propriedade propriedade
	
	//5.2
	
	//5.2.1 Tecnologia utilizada na produção
	//5.2.1.1
	Boolean trator
	Boolean colheitadeira
	Boolean aradoMecanico
	Boolean aradoAnimal
	Boolean plantadeiraMecanica
	Boolean plantadeiraAnimal
	Boolean triturador
	Boolean facao
	Boolean pa
	Boolean matraca
	Boolean picareta
	Boolean foice
	Boolean machado
	Boolean pulverizadorMecanico
	Boolean pulverizadorCostal
	Boolean enxada
	String outroEquipamento

	//5.2.1.2  
	Boolean adeqEstrada
	Boolean adubacaoOrganica
	Boolean adubacaoVerde
	Boolean calagem
	Boolean cordoes
	Boolean plantio
	Boolean faixas
	Boolean queimada
	Boolean reflorestamento
	Boolean rotacao
	Boolean terraceamento
	Boolean nenhumaTecninca
	String outroTecnica
	
	//5.2.1.3 Utiliza fertilizantes e/ou defensivos e/ou medicamentos/vacinas
	DmSimNao utilizaFertOutros
	
	//5.2.1.3.1 Em caso de sim quais
	Boolean adubosQuimicos
	Boolean adubosOrganicos
	Boolean defensivosTradicionais
	Boolean defensivosNaturais
	Boolean medicamentosNaturais
	Boolean medicamentoAlternativos
	Boolean vacinas
	String outraMedicamentos


	//5.2.1.4 Acompanhamento Tecnico
	DmSimNao acompanhamentoTecnico
	
	//5.2.1.4.1 Em caso de sim quais
	Boolean incra
	Boolean emater
	Boolean empresaPrivada
	Boolean prefeitura
	String outraAssistencia

	static mapping = {
		id column: 'idaspprodtec', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
		
		trator (nullable: false, blank: false)
		colheitadeira (nullable: false, blank: false)
		aradoMecanico (nullable: false, blank: false)
		aradoAnimal (nullable: false, blank: false)
		plantadeiraMecanica (nullable: false, blank: false)
		plantadeiraAnimal (nullable: false, blank: false)
		triturador (nullable: false, blank: false)
		facao (nullable: false, blank: false)
		pa (nullable: false, blank: false)
		matraca (nullable: false, blank: false)
		picareta (nullable: false, blank: false)
		foice (nullable: false, blank: false)
		machado (nullable: false, blank: false)
		pulverizadorMecanico (nullable: false, blank: false)
		pulverizadorCostal (nullable: false, blank: false)
		enxada (nullable: false, blank: false)
		outroEquipamento (nullable: true)
		
			//5.2.1.2
		adeqEstrada (nullable: false, blank: false)
		adubacaoOrganica (nullable: false, blank: false)
		adubacaoVerde (nullable: false, blank: false)
		calagem (nullable: false, blank: false)
		cordoes (nullable: false, blank: false)
		plantio (nullable: false, blank: false)
		faixas (nullable: false, blank: false)
		queimada (nullable: false, blank: false)
		reflorestamento (nullable: false, blank: false)
		rotacao (nullable: false, blank: false)
		terraceamento (nullable: false, blank: false)
		nenhumaTecninca (nullable: false, blank: false)
		outroTecnica (nullable: true)
			
			//5.2.1.3 Utiliza fertilizantes e/ou defensivos e/ou medicamentos/vacinas
		utilizaFertOutros (nullable: true)
			
			//5.2.1.3.1 Em caso de sim quais
		adubosQuimicos (nullable: false, blank: false)
		adubosOrganicos (nullable: false, blank: false)
		defensivosTradicionais (nullable: false, blank: false)
		defensivosNaturais (nullable: false, blank: false)
		medicamentosNaturais (nullable: false, blank: false)
		medicamentoAlternativos (nullable: false, blank: false)
		vacinas (nullable: false, blank: false)
		outraMedicamentos (nullable: true)
		
		
			//5.2.1.4 Acompanhamento Tecnico
		acompanhamentoTecnico (nullable: false, blank: false)
			
			//5.2.1.4.1 Em caso de sim quais
		incra (nullable: false, blank: false)
		emater (nullable: false, blank: false)
		empresaPrivada (nullable: false, blank: false)
		prefeitura (nullable: false, blank: false)
		outraAssistencia (nullable: true)
	}
	
	static belongsTo = [propriedade:Propriedade]
	
}