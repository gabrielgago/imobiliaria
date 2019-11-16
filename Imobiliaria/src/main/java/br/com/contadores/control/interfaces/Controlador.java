package br.com.contadores.control.interfaces;

import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.contadores.model.Error;

public interface Controlador<T> {

	ModelAndView carregarFormulario(T t, BindingResult results);

	ModelAndView cadastrar(@Valid T t, BindingResult binding, RedirectAttributes redirect);

	ModelAndView cadastrar(@Valid T t, BindingResult binding);

	ModelAndView editar(T t);

	String remover(int id);

	ModelAndView listar(T t);

}
