package br.com.contadores.model;

public enum StatusImovel {

	ALUGADO("Alugado"), EM_PROCESSO_LOCACAO("Em processo de locação"), DISPONIVEL_LOCACAO("Disponível para locação");

	private String descricao;

	private StatusImovel(String descricao) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

}
