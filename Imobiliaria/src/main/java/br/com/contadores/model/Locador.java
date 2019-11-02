package br.com.contadores.model;

import java.io.Serializable;
import java.util.Calendar;
import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

public class Locador implements Serializable {

	private static final long serialVersionUID = -596779387788014945L;

	@Id
	@GeneratedValue
	private int codigoLocador;

	private String nomeLocador;
	private List<Endereco> enderecos;
	private Documentos documentosLocador;
	private String modPagamento;
	private Double txAdmin;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Calendar dtNascimento;

	public int getCodigoLocador() {
		return codigoLocador;
	}

	public void setCodigoLocador(int codigoLocador) {
		this.codigoLocador = codigoLocador;
	}

	public String getNomeLocador() {
		return nomeLocador;
	}

	public void setNomeLocador(String nomeLocador) {
		this.nomeLocador = nomeLocador;
	}

	public List<Endereco> getEnderecos() {
		return enderecos;
	}

	public void setEnderecos(List<Endereco> enderecos) {
		this.enderecos = enderecos;
	}

	public Calendar getDtNascimento() {
		return dtNascimento;
	}

	public void setDtNascimento(Calendar dtNascimento) {
		this.dtNascimento = dtNascimento;
	}

	public Documentos getDocumentosLocador() {
		return documentosLocador;
	}

	public void setDocumentosLocador(Documentos documentosLocador) {
		this.documentosLocador = documentosLocador;
	}

	public String getModPagamento() {
		return modPagamento;
	}

	public void setModPagamento(String modPagamento) {
		this.modPagamento = modPagamento;
	}

	public Double getTxAdmin() {
		return txAdmin;
	}

	public void setTxAdmin(Double txAdmin) {
		this.txAdmin = txAdmin;
	}

}
