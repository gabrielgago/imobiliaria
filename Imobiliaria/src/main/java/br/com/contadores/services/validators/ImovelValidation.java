package br.com.contadores.services.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import br.com.contadores.model.Imovel;

public class ImovelValidation implements Validator {

	// classe a qual a validacao dara suporte
	@Override
	public boolean supports(Class<?> clazz) {
		return Imovel.class.isAssignableFrom(clazz);
	}

	// efetiva a validacao
	@Override
	public void validate(Object target, Errors errors) {
		Imovel imovel = (Imovel) target;
		if (imovel.getCodigo() == null || imovel.getCodigo() <= 0) {
			errors.rejectValue("codigo", "imovel.codigo");
		}
	}

}
