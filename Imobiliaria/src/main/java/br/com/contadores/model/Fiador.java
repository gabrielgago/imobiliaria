package br.com.contadores.model;

import java.util.Calendar;

import br.com.contadores.model.anotations.Embedded;
import br.com.contadores.model.anotations.Input;
import br.com.contadores.model.anotations.Title;
import br.com.contadores.model.interfaces.Drawable;

@Title(name = "Cadastro de Fiador")
public class Fiador implements Drawable{

	@Input(row = true, col = true, numberRow = 1, numberCol = 1, type = "number", classs = {
			"form-control" }, placeholder = "Código Fiador", id = "codFiador", value = "${imovel.codigoFiador}")
	private int codigoFiador;
	@Input(row = true, col = true, numberRow = 1, numberCol = 2, type = "text", classs = {
			"form-control" }, placeholder = "Nome Fiador", id = "nomeFiador", value = "${imovel.nomeFiador}")
	private String nomeFiador;
	@Embedded
	private Endereco enderecoComecial;
	@Embedded
	private Endereco enderecoResidencial;
	@Embedded
	private Documentos documentosFiador;
	@Input(row = true, col = true, numberRow = 2, numberCol = 1, type = "date", classs = {
			"form-control" }, placeholder = "Data de Nascimento", id = "dataNascimento", value = "${imovel.dataNascimento}")
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
