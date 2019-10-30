package br.com.contadores.model;

public class ErrorFormulario {

	private String errorTitle;
	private String errorDetails;
	private String[] errors;
	
	public ErrorFormulario() {
	}

	public ErrorFormulario(String errorTitle, String errorDetails, String[] errors) {
		super();
		this.errorTitle = errorTitle;
		this.errorDetails = errorDetails;
		this.errors = errors;
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

}
