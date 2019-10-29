package br.com.contadores.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
@Entity
public class Fiador implements Serializable {

	private static final long serialVersionUID = 6100586324253265106L;

	@Id
	@GeneratedValue
	private int codigoFiador;
	private String nomeFiador;
	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy="fiador")
	private List<Endereco> enderecos = new ArrayList<Endereco>();
	@OneToOne(fetch=FetchType.LAZY, orphanRemoval=true, cascade=CascadeType.ALL, mappedBy="fiador")
	private Documentos documentosFiador;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Calendar dtNascimento;

	{
		enderecos.addAll(Arrays.asList(new Endereco[] { new Endereco(), new Endereco() }));
	}

	public int getCodigoFiador() {
		return codigoFiador;
	}

	public void setCodigoFiador(int codigoFiador) {
		this.codigoFiador = codigoFiador;
	}

	public String getNomeFiador() {
		return nomeFiador;
	}

	public void setNomeFiador(String nomeFiador) {
		this.nomeFiador = nomeFiador;
	}

	public List<Endereco> getEnderecos() {
		return enderecos;
	}

	public void setEnderecos(List<Endereco> enderecos) {
		this.enderecos = enderecos;
	}

	public Documentos getDocumentosFiador() {
		return documentosFiador;
	}

	public void setDocumentosFiador(Documentos documentosFiador) {
		this.documentosFiador = documentosFiador;
	}

	public Calendar getDtNascimento() {
		return dtNascimento;
	}

	public void setDtNascimento(Calendar dtNascimento) {
		this.dtNascimento = dtNascimento;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + codigoFiador;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Fiador other = (Fiador) obj;
		if (codigoFiador != other.codigoFiador)
			return false;
		return true;
	}

}
