package br.com.contadores.services.exceptions;

public class NonDrawableClassException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4810995147814605711L;

	public NonDrawableClassException() {
		super("Undrawn class, parameter must be a class that has the @title annotation present.");
	}

	public NonDrawableClassException(Exception e) {
		super("Undrawn class, parameter must be a class that has the @title annotation present.", e);
	}

}
