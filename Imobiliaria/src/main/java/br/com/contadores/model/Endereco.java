package br.com.contadores.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Endereco implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4103429793962566372L;
	@Id
	@GeneratedValue
	private Integer id;
	@Column(length = 100, unique = true, nullable = false)
	private Integer cep;
	private String logradouro;
	@Column(length = 100)
	private Integer numero;
	private String complemento;
	private String bairro;
	private String municipio;
	private String cidade;
	private String estado;
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumns(value = { @JoinColumn(referencedColumnName = "id", name = "rel_imovel_endereco"),
			@JoinColumn(referencedColumnName = "id", name = "rel_imovel_endereco_correspondecia") })
	private Imovel imovel;
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumns(value = { @JoinColumn(referencedColumnName = "codigoFiador", name = "rel_fiador_endereco"),
			@JoinColumn(referencedColumnName = "codigoFiador", name = "rel_fiador_endereco_correspondecia") })
	private Fiador fiador;

	public Integer getCep() {
		return cep;
	}

	public void setCep(Integer cep) {
		this.cep = cep;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public Imovel getImovel() {
		return imovel;
	}

	public void setImovel(Imovel imovel) {
		this.imovel = imovel;
	}

	public Fiador getFiador() {
		return fiador;
	}

	public void setFiador(Fiador fiador) {
		this.fiador = fiador;
	}

	public Integer getNumero() {
		return numero;
	}

	public void setNumero(Integer numero) {
		this.numero = numero;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getMunicipio() {
		return municipio;
	}

	public void setMunicipio(String municipio) {
		this.municipio = municipio;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

}
