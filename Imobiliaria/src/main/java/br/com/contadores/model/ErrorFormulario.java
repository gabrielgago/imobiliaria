package br.com.contadores.model;

import org.springframework.stereotype.Component;

@Component
public class ErrorFormulario implements Error{

	private String errorTitle;
	private String errorDetails;
	private String[] errors;
	
	public ErrorFormulario() {
	}

	public String getErrorTitle() {
		return errorTitle;
	}

	public String getErrorDetails() {
		return errorDetails;
	}

	public String[] getErrors() {
		return errors;
	}

	@Override
	public void create(String errorTitle, String errorDetails, String[] errors) {
		this.errorTitle = errorTitle;
		this.errorDetails = errorDetails;
		this.errors = errors;
	}

}
