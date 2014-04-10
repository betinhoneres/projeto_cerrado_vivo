package br.com.cerradovivo

class SaneamentoAgua {

	Propriedade propriedade
	
	//Fonte 1.3.1
	String corrego
	String nascente
	String cisterna
	String rio
	String represa
	String outrasFontes
	
	//Abastecimento de agua 1.3.1.2
	Boolean gravidade
	Boolean bombaEletricaCisterna
	Boolean bombaEletricaOutro
	Boolean rodaDagua
	String outroAbastecimento
	
	//1.3.1.3 e 1.3.1.3.1
	DmSimNao tratamentoAgua
	Boolean filtrada
	Boolean diretoFonte
	Boolean coada
	Boolean aguaSanitaria
	Boolean cloro
	Boolean fervida
	Boolean coadaFervida
	Boolean coadaFiltrada
	String outroTratamento
		
	static mapping = {
		id column: 'idsanagua', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
	}
	
	static belongsTo = [propriedade:Propriedade]
	
}