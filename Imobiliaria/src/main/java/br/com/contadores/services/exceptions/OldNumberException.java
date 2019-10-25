package br.com.contadores.services.exceptions;

public class OldNumberException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4311976098237123040L;

	public OldNumberException() {
		super("Number of row is utilized.");
	}

	public OldNumberException(Exception e) {
		super("Number of row is utilized.", e);
	}

}
