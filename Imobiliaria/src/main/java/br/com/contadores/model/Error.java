package br.com.contadores.model;

public interface Error {

	public String getErrorTitle();

	public String getErrorDetails() ;

	public String[] getErrors() ;

	public void create(String string, String string2, String[] errors);
}
