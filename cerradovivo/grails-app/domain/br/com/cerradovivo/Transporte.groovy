package br.com.cerradovivo

class Transporte {

	Propriedade propriedade
	
	// 1.4.1
	DmTransporteDistancia distSedeMun
	
	// Acesso periodo sem chuva 1.4.3.1
	DmTransporteSituacao acessoSemChuva

	// Acesso periodo com chuva 1.4.3.2
	DmTransporteSituacao acessoComChuva
	
	//1.4.4
	Boolean onibusProvado
	Boolean onibusPublico
	Boolean carro
	Boolean cavalo
	Boolean moto
	Boolean trator
	Boolean bicicleta
	Boolean aPe
	String outroTransporte
	
	//Onde vai com maior frequencia 1.4.5
	Boolean goianesia
	Boolean goiania
	Boolean staisabel
	Boolean ceres
	Boolean jaragua
	String outroLocal
	
	//1.5
	DmSimNao energiaEletrica
	
	Boolean redeGeral
	Boolean geradorMotor
	Boolean placaSolar
	String outroEE
	
	
	//1.4.2
	static hasMany = [controleTransporteCidade: ControleTransporteCidade]
		
	static mapping = {
		id column: 'idtransporte', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
	}
	
	static belongsTo = [propriedade:Propriedade]
	
}