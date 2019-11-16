package br.com.contadores.model;

import org.springframework.validation.ObjectError;

public interface Error {

	String getErrorTitle();

	String getErrorDetails() ;

	String getErrors() ;

	Error create(ObjectError error);
	
}
