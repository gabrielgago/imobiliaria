package br.com.contadores.model;

import java.util.Calendar;

import br.com.contadores.model.interfaces.Drawable;

public class Fiador implements Drawable {

	private static final long serialVersionUID = 1L;
	private int codigoFiador;
	private String nomeFiador;
	private Endereco enderecoComecial;
	private Endereco enderecoResidencial;
	private Documentos documentosFiador;
	private Calendar dataNascimento;

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

	public Endereco getEnderecoComecial() {
		return enderecoComecial;
	}

	public void setEnderecoComecial(Endereco enderecoComecial) {
		this.enderecoComecial = enderecoComecial;
	}

	public Endereco getEnderecoResidencial() {
		return enderecoResidencial;
	}

	public void setEnderecoResidencial(Endereco enderecoResidencial) {
		this.enderecoResidencial = enderecoResidencial;
	}

	public Documentos getDocumentosFiador() {
		return documentosFiador;
	}

	public void setDocumentosFiador(Documentos documentosFiador) {
		this.documentosFiador = documentosFiador;
	}

	public Calendar getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Calendar dataNascimento) {
		this.dataNascimento = dataNascimento;
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
