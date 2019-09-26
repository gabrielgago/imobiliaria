package br.com.contadores.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
@Entity
public class Imovel implements Serializable {

	@Id
	@GeneratedValue
	private Integer id;
	private Integer codigo;
	private String descricao;
	private Integer codigoProprietario;
	@OneToOne
	private Endereco enderecoImovel = new Endereco();
	@OneToOne
	private Endereco enderecoCorrespondencia = new Endereco();
	@Column(scale = 2)
	private BigDecimal impostoPredial;
	private String numeroApoliceSeguros;
	private Integer codigoSegurador;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Calendar dataVencimento;
	private Integer inscricaoCedae;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Calendar dataInscricao;
	private Integer codigoLogradouro;

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Integer getCodigoProprietario() {
		return codigoProprietario;
	}

	public void setCodigoProprietario(Integer codigoProprietario) {
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
		this.impostoPredial = impostoPredial.setScale(2, BigDecimal.ROUND_HALF_EVEN);
	}

	public String getNumeroApoliceSeguros() {
		return numeroApoliceSeguros;
	}

	public void setNumeroApoliceSeguros(String numeroApoliceSeguros) {
		this.numeroApoliceSeguros = numeroApoliceSeguros;
	}

	public Integer getCodigoSegurador() {
		return codigoSegurador;
	}

	public void setCodigoSegurador(Integer codigoSegurador) {
		this.codigoSegurador = codigoSegurador;
	}

	public Calendar getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(Calendar dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public Integer getInscricaoCedae() {
		return inscricaoCedae;
	}

	public void setInscricaoCedae(Integer inscricaoCedae) {
		this.inscricaoCedae = inscricaoCedae;
	}

	public Calendar getDataInscricao() {
		return dataInscricao;
	}

	public void setDataInscricao(Calendar dataInscricao) {
		this.dataInscricao = dataInscricao;
	}

	public Integer getCodigoLogradouro() {
		return codigoLogradouro;
	}

	public void setCodigoLogradouro(Integer codigoLogradouro) {
		this.codigoLogradouro = codigoLogradouro;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
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
