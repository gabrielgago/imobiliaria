package br.com.contadores.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
@Entity
public class Imovel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1287322913826777453L;
	@Id
	@GeneratedValue
	private Integer id;
	private Integer codigo;
	private String descricao;
	private Integer codigoProprietario;
	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumns(value = { @JoinColumn(referencedColumnName = "id", name = "rel_imovel_endereco"),
			@JoinColumn(referencedColumnName = "id", name = "rel_imovel_endereco_correspondecia") })
	private List<Endereco> enderecos = new ArrayList<Endereco>();
	@Column(scale = 2)
	private BigDecimal impostoPredial;
	private String numeroApoliceSeguros;
	private Integer codigoSegurador;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Calendar dataVencimentoApoliceSeguro;
	private Integer inscricaoCedae;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Calendar dataInscricao;
	private Integer codigoLogradouro;
	private String alugado;

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

	public String getAlugado() {
		return alugado;
	}

	public void setAlugado(String alugado) {
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
		if(this.enderecos == null)
			this.enderecos = new ArrayList<Endereco>();
		this.enderecos.add(endereco);
	}

}
