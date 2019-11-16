package br.com.contadores.model;

import org.springframework.validation.ObjectError;

public class ErrorPadrao implements Error {

	private String titulo;
	private String detalhes;
	private String codError;

	@Override
	public String getErrorTitle() {
		return titulo;
	}

	@Override
	public String getErrorDetails() {
		return detalhes;
	}

	@Override
	public String getErrors() {
		return this.codError;
	}

	@Override
	public Error create(ObjectError error) {
		this.titulo = error.getObjectName();
		this.detalhes = error.getDefaultMessage();
		this.codError = error.getCode();
		return this;
	}

}
