package br.com.cerradovivo

class Moradia {

	Propriedade propriedade
	
	Integer numeroComodos
	Double tamanho
	DmMoradiaTipo tipoMoradia
	DmMoradiaCobertura tipoCobertura
	DmMoradiaPiso tipoPiso
	Integer qtdAutomovel
	Integer qtdBanheiro
	Integer qtdGeladeira
	Integer qtdTelevisao
	Integer qtdAparelhoSom
	Integer qtdLavadouraRoupa
	Integer qtdFogaoGas
	Integer qtdFogaoLenha
	Integer qtdMotocicleta
	Integer qtdQuartos
	Integer qtdFreezer
	Integer qtdDvd
	Integer qtdComputador
	Integer qtdTanquinhoLavarRoupa
	Integer qtdMicroondas
	Integer qtdCelular

	
	// Moradia situacao atual 1.2.6
	Boolean comAcabamento
	Boolean esgoto
	Boolean banheiro
	Boolean agua
	Boolean energiaEletrica
	Boolean forro
	Boolean semAcabamento
	Boolean fosa
	Boolean chuveiro
	String outros
		
	static mapping = {
		id column: 'idmoradia', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
		numeroComodos (nullable: false, blank: false)
		tamanho (nullable: false, blank: false)
		tipoMoradia (nullable: false, blank: false)
		tipoCobertura (nullable: false, blank: false)
		tipoPiso (nullable: false, blank: false)
		
		qtdAutomovel(nullable: true, blank: true)
		qtdBanheiro(nullable: true, blank: true)
		qtdGeladeira(nullable: true, blank: true)
		qtdTelevisao(nullable: true, blank: true)
		qtdAparelhoSom(nullable: true, blank: true)
		qtdLavadouraRoupa(nullable: true, blank: true)
		qtdFogaoGas(nullable: true, blank: true)
		qtdFogaoLenha(nullable: true, blank: true)
		qtdMotocicleta(nullable: true, blank: true)
		qtdQuartos(nullable: true, blank: true)
		qtdFreezer(nullable: true, blank: true)
		qtdDvd(nullable: true, blank: true)
		qtdComputador(nullable: true, blank: true)
		qtdTanquinhoLavarRoupa(nullable: true, blank: true)
		qtdMicroondas(nullable: true, blank: true)
		qtdCelular(nullable: true, blank: true)
		
	}
	
	static belongsTo = [propriedade:Propriedade]
	
}