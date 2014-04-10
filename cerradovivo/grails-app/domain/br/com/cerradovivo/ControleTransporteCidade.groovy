package br.com.cerradovivo

class ControleTransporteCidade {

	Cidade cidade
	DmTransporteDistancia distancia
	
	
	static belongsTo = [transporte: Transporte]
	
	static mapping = {
		id column: 'idconttranscidade', type: 'long'
	}
	
	static constraints = { 
		cidade (nullable: false, blank: false)
		distancia (nullable: false, blank: false)
	}
	
	@Override
	public String toString() {
		return cidade.nome + "/" + cidade.uf + " - " + distancia;
	}
}