package br.com.contadores.control.interfaces;

import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public interface Controlador<T> {

	ModelAndView carregarFormulario();

	ModelAndView cadastrar(@Valid T t, BindingResult binding, RedirectAttributes redirect);

	ModelAndView editar(T t);

	String remover(int id);

	ModelAndView listar();
	
//	@ExceptionHandler(Exception.class)
//	default public String handleException(HttpServletRequest req, Exception exception, Model model){
//	     model.addAttribute("errorMessage", exception.getMessage() );
//	     return "error";
//	}


}
