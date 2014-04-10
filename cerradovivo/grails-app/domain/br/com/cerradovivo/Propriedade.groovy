package br.com.cerradovivo

class Propriedade {

	String nome
	Integer numeroParcela
	String microRegiao
	String latitude
	String longitude
	String altitude
	String roteiroAcesso
	Double areaHa
	String nomePropietario
	String telefonePropietario
	Date dataEntrevista
	String entrevistador
	
	//Atividades desenvolvidas
	Boolean socioAmbiental
	Boolean conservacao
	Boolean agroflorestal
	Boolean agrosilvipastoril
	Boolean viveiro
	Boolean pais
	Boolean cisterna
	Boolean app
	Boolean reservaLegal
	
	static mapping = {
		id column: 'idpropriedade', type: 'long'
		roteiroAcesso type: 'text'
	}
	
	static constraints = {
		
		numeroParcela (nullable:false, blank:false, unique:true)
		latitude (maxSize:50)
		longitude (maxSize:50)
		altitude (maxSize:50)
		areaHa (nullable: false, blank:false)
		nomePropietario (nullable: false, blank:false)
		telefonePropietario (nullable: false, blank:false)
		dataEntrevista (nullable: false, blank:false)
		entrevistador (nullable: false, blank:false)
		
	}

	@Override
	public String toString() {
		return "Parcela: " + numeroParcela + " Prop: " + nomePropietario 
	}
		
}