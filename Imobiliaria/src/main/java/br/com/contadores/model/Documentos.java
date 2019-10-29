package br.com.contadores.model;

public class Documentos {

	private String cpf;
	private RegistroGeral rg;
	private EstadoCivil estadoCivil;
	private String profissao;

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public EstadoCivil getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(EstadoCivil estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getProfissao() {
		return profissao;
	}

	public void setProfissao(String profissao) {
		this.profissao = profissao;
	}

	public RegistroGeral getRg() {
		return rg;
	}

	public void setRg(RegistroGeral rg) {
		this.rg = rg;
	}

}
