package br.com.cerradovivo;

public enum DmEscolaridade {

	NAOESTUDOU('Não estudou'),
	DA1A4('Da 1ª a 4ª série do ensino fundamental (antigo primário)'),
	DA5A8('Da 5ª a 8ª série (antigo ginásio)'),
	ENSINOMEDIOINCOMPLETO('Ensino médio (2° grau) incompleto'),
	ENSINOMEDIOCOMPLETO('Ensino médio (2° grau) completo'),
	ENSINOSUPERIORINCOMPLETO('Ensino superior incompleto'),
	ENSINOSUPERIORCOMPLETO('Ensino superior completo'),
	POSGRADUACAO('Pós-Graduação');

	private final String toString

	DmEscolaridade(String toString) {
		this.toString = toString
	}

	String getName() {
		name()
	}

	String toString() {
		toString
	}
}