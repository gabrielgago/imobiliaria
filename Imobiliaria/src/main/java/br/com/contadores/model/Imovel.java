package br.com.contadores.model;

import java.math.BigDecimal;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Imovel {

	@Id
	@GeneratedValue
	private int id;
	private int codigo;
	private String descricao;
	private int codigoProprietario;
	@OneToOne
	private Endereco enderecoImovel;
	@OneToOne
	private Endereco enderecoCorrespondencia;
	@Column(scale = 2, precision = 2)
	private BigDecimal impostoPredial;
	private String numeroApoliceSeguros;
	private int codigoSegurador;
	@Temporal(TemporalType.DATE)
	private Calendar dataVencimento;
	private int inscricaoCedae;
	@Temporal(TemporalType.DATE)
	private Calendar dataInscricao;
	private int codigoLogradouro;

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getCodigoProprietario() {
		return codigoProprietario;
	}

	public void setCodigoProprietario(int codigoProprietario) {
		this.codigoProprietario = codigoProprietario;
	}

	public Endereco getEnderecoImovel() {
		return enderecoImovel;
	}

	public void setEnderecoImovel(Endereco enderecoImovel) {
		this.enderecoImovel = enderecoImovel;
	}

	public Endereco getEnderecoCorrespondencia() {
		return enderecoCorrespondencia;
	}

	public void setEnderecoCorrespondencia(Endereco enderecoCorrespondencia) {
		this.enderecoCorrespondencia = enderecoCorrespondencia;
	}

	public BigDecimal getImpostoPredial() {
		return impostoPredial;
	}

	public void setImpostoPredial(BigDecimal impostoPredial) {
		this.impostoPredial = impostoPredial;
	}

	public String getNumeroApoliceSeguros() {
		return numeroApoliceSeguros;
	}

	public void setNumeroApoliceSeguros(String numeroApoliceSeguros) {
		this.numeroApoliceSeguros = numeroApoliceSeguros;
	}

	public int getCodigoSegurador() {
		return codigoSegurador;
	}

	public void setCodigoSegurador(int codigoSegurador) {
		this.codigoSegurador = codigoSegurador;
	}

	public Calendar getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(Calendar dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public int getInscricaoCedae() {
		return inscricaoCedae;
	}

	public void setInscricaoCedae(int inscricaoCedae) {
		this.inscricaoCedae = inscricaoCedae;
	}

	public Calendar getDataInscricao() {
		return dataInscricao;
	}

	public void setDataInscricao(Calendar dataInscricao) {
		this.dataInscricao = dataInscricao;
	}

	public int getCodigoLogradouro() {
		return codigoLogradouro;
	}

	public void setCodigoLogradouro(int codigoLogradouro) {
		this.codigoLogradouro = codigoLogradouro;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Imovel [id=" + id + ", codigo=" + codigo + ", descricao=" + descricao + ", codigoProprietario="
				+ codigoProprietario + ", enderecoImovel=" + enderecoImovel + ", enderecoCorrespondencia="
				+ enderecoCorrespondencia + ", impostoPredial=" + impostoPredial + ", numeroApoliceSeguros="
				+ numeroApoliceSeguros + ", codigoSegurador=" + codigoSegurador + ", dataVencimento=" + dataVencimento
				+ ", inscricaoCedae=" + inscricaoCedae + ", dataInscricao=" + dataInscricao + ", codigoLogradouro="
				+ codigoLogradouro + "]";
	}

}
