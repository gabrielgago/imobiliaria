package br.com.contadores.services;

import java.util.function.Function;
import java.util.stream.Collectors;

import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

import br.com.contadores.model.Error;
import br.com.contadores.model.ErrorPadrao;

public class X9Errors {

	public Error[] informar(BindingResult resultados) {

		if (resultados == null || !resultados.hasErrors())
			throw new RuntimeException("Não existem erros para serem informados.");

		Function<ObjectError, Error> funcao = new Function<ObjectError, Error>() {

			@Override
			public Error apply(ObjectError resultado) {
				return new ErrorPadrao().create(resultado);
			}
		};
		
		Error[] erros = new ErrorPadrao[resultados.getErrorCount()];
		
		return (Error[]) resultados.getAllErrors()
				.stream()
				.map(funcao)
				.collect(Collectors.toList()).toArray(erros);
	}

}
