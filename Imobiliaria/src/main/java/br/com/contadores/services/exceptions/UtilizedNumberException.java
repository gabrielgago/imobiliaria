
package br.com.contadores.services.exceptions;

public class UtilizedNumberException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8696714667630635249L;

	public UtilizedNumberException() {
		super("Number is min of old number row.");
	}

	public UtilizedNumberException(Exception e) {
		super("Number is min of old number row.", e);
	}

}
