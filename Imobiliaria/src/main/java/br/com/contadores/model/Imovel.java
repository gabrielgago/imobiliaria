package br.com.contadores.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
@Entity
public class Imovel implements Serializable {

	private static final long serialVersionUID = 1287322913826777453L;

	@Id
	@GeneratedValue
	private Integer id;

	@Enumerated
	private StatusImovel alugado = StatusImovel.DISPONIVEL_LOCACAO;

    @Digits(integer=9, fraction=2, message="{br.com.contadores.model.imovel.impostoPredial.formatoDesejado}")
    @DecimalMin(value = "0.0", inclusive = false, message="{br.com.contadores.model.imovel.impostoPredial.valorMinimoRequerido}")
	@Column(scale = 2)
	private BigDecimal impostoPredial;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Calendar dataInscricao;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Calendar dataVencimentoApoliceSeguro;

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "imovel")
	private List<Endereco> enderecos = new ArrayList<Endereco>();

	@Min(value = 0, message="{br.com.contadores.model.imovel.codigo}")
	private Integer codigo;
	private String descricao;
	private Integer codigoProprietario;
	private String numeroApoliceSeguros;
	private Integer codigoSegurador;
	private Integer inscricaoCedae;
	private Integer codigoLogradouro;

	{
		enderecos.add(new Endereco());
		enderecos.add(new Endereco());
	}

	public Calendar getDataVencimentoApoliceSeguro() {
		return dataVencimentoApoliceSeguro;
	}

	public void setDataVencimentoApoliceSeguro(Calendar dataVencimentoApoliceSeguro) {
		this.dataVencimentoApoliceSeguro = dataVencimentoApoliceSeguro;
	}

	public StatusImovel getAlugado() {
		return alugado;
	}

	public void setAlugado(StatusImovel alugado) {
		this.alugado = alugado;
	}

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

	public BigDecimal getImpostoPredial() {
		return impostoPredial;
	}

	public List<Endereco> getEnderecos() {
		return enderecos;
	}

	public void setEnderecos(List<Endereco> enderecos) {
		this.enderecos = enderecos;
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
		return dataVencimentoApoliceSeguro;
	}

	public void setDataVencimento(Calendar dataVencimento) {
		this.dataVencimentoApoliceSeguro = dataVencimento;
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
				+ codigoProprietario + ", enderecos=" + enderecos + ", impostoPredial=" + impostoPredial
				+ ", numeroApoliceSeguros=" + numeroApoliceSeguros + ", codigoSegurador=" + codigoSegurador
				+ ", dataVencimento=" + dataVencimentoApoliceSeguro + ", inscricaoCedae=" + inscricaoCedae
				+ ", dataInscricao=" + dataInscricao + ", codigoLogradouro=" + codigoLogradouro + ", alugado=" + alugado
				+ "]";
	}

	public void addEndereco(Endereco endereco) {
		if (this.enderecos == null)
			this.enderecos = new ArrayList<Endereco>();
		this.enderecos.add(endereco);
	}

}
