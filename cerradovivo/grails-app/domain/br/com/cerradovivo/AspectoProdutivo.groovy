package br.com.cerradovivo

class AspectoProdutivo {

	Propriedade propriedade
	
	//5.1
	
	//5.1.1 Cobertura vegetal
	Boolean pastagemNatural
	Double areaPastagemNatural
	Boolean pastagemCultivada
	Double areaPastagemCultivada
	Boolean lavoraTemporaria
	Double areaLavoraTemporaria
	Boolean carpineiraCanavial
	Double areaCarpineiraCanavial
	Boolean apps
	Double areaApps
	Boolean mata
	Double areaMata
	Boolean capoeira
	Double areaCapoeira
	String silvicultura
	Double areaSilvicultura
	Boolean fruticultura
	Double areaFruticultura
	String outroCoberturaVegetal
	Double areaOutraCobVeg

	//5.1.2 Tipo de solo 
	Boolean cultura
	Double areaCultura
	Boolean chaoVermelho
	Double areaChaoVermelha
	Boolean chaoAmarelo
	Double areaChaoAmarelo
	Boolean argiloso
	Double areaArgiloso
	Boolean arenoArgiloso
	Double areaArenoArgiloso
	Boolean pedregoso
	Double areaPedregoso
	String outroTipoSolo
	Double areaOutroTipoSolo
	
	//5.1.3 Topografia
	Boolean planoSuave
	Double areaPlanoSuave
	Boolean ondulado
	Double areaOndulado
	Boolean forteOndulado
	Double areaForteOndulado
	Boolean montanhoso
	Double areaMontanhoso
	
	//5.1.4 Instalações produtivas
	Boolean curral
	Boolean mangueiro
	Boolean estabulo
	Boolean cerca
	Boolean paiol
	Boolean chiqueiroPocilga
	Boolean silo
	Boolean acude
	Boolean apiario
	Boolean tanquePiscicultua
	Boolean poco
	Boolean galpao
	Boolean caixaDagua
	String outraInstalacaoProd

	static mapping = {
		id column: 'idaspectoprod', type: 'long';
	}
	
	static constraints = { 
		propriedade (nullable: false, blank: false, unique:true)
		pastagemNatural (nullable: false, blank: false)
		areaPastagemNatural (nullable: true)
		pastagemCultivada (nullable: false, blank: false)
		areaPastagemCultivada (nullable: true)
		lavoraTemporaria (nullable: false, blank: false)
		areaLavoraTemporaria (nullable: true)
		carpineiraCanavial (nullable: false, blank: false)
		areaCarpineiraCanavial (nullable: true)
		apps (nullable: false, blank: false)
		areaApps (nullable: true)
		mata (nullable: false, blank: false)
		areaMata (nullable: true)
		capoeira (nullable: false, blank: false)
		areaCapoeira (nullable: true)
		silvicultura (nullable: false, blank: false)
		areaSilvicultura (nullable: true)
		fruticultura (nullable: false, blank: false)
		areaFruticultura (nullable: true)
		outroCoberturaVegetal (nullable: true)
		areaOutraCobVeg (nullable: true)
		
			//5.1.2 Tipo de solo 
		cultura (nullable: false, blank: false)
		areaCultura (nullable: true)
		chaoVermelho (nullable: false, blank: false)
		areaChaoVermelha (nullable: true)
		chaoAmarelo (nullable: false, blank: false)
		areaChaoAmarelo (nullable: true)
		argiloso (nullable: false, blank: false)
		areaArgiloso (nullable: true)
		arenoArgiloso (nullable: false, blank: false)
		areaArenoArgiloso (nullable: true)
		pedregoso (nullable: false, blank: false)
		areaPedregoso (nullable: true)
		outroTipoSolo  (nullable: true)
		areaOutroTipoSolo (nullable: true)
			
			//5.1.3 Topografia
		planoSuave (nullable: false, blank: false)
		areaPlanoSuave (nullable: true)
		ondulado (nullable: false, blank: false)
		areaOndulado (nullable: true)
		forteOndulado (nullable: false, blank: false)
		areaForteOndulado (nullable: true)
		montanhoso (nullable: false, blank: false)
		areaMontanhoso (nullable: true)
			
			//5.1.4 Instalações produtivas
		curral (nullable: false, blank: false)
		mangueiro (nullable: false, blank: false)
		estabulo (nullable: false, blank: false)
		cerca (nullable: false, blank: false)
		paiol (nullable: false, blank: false)
		chiqueiroPocilga (nullable: false, blank: false)
		silo (nullable: false, blank: false)
		acude (nullable: false, blank: false)
		apiario (nullable: false, blank: false)
		tanquePiscicultua (nullable: false, blank: false)
		poco (nullable: false, blank: false)
		galpao (nullable: false, blank: false)
		caixaDagua (nullable: false, blank: false)
		outraInstalacaoProd (nullable: true)
		
	}
	
	static belongsTo = [propriedade:Propriedade]
	
}