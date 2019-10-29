package br.com.contadores.model;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Documentos {

	@Id
	@GeneratedValue
	private int id;
	private String cpf;
	@Embedded
	private RegistroGeral rg;
	@Enumerated
	private EstadoCivil estadoCivil;
	private String profissao;
	@OneToOne(fetch=FetchType.LAZY, orphanRemoval=true, optional=false)
	@JoinColumn(referencedColumnName="codigoFiador",name = "rel_fiador_documento")
	private Fiador fiador;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Fiador getFiador() {
		return fiador;
	}

	public void setFiador(Fiador fiador) {
		this.fiador = fiador;
	}

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
