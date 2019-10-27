package br.com.contadores.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/cadastros")
public class CadastrosController {


	@GetMapping("/locadores")
	public ModelAndView runCadastroLocadores() {
		ModelAndView mv = new ModelAndView("cadastro-locadores");
		return mv;
	}
	
	@GetMapping("/locatarios")
	public ModelAndView runCadastroLocatarios() {
		ModelAndView mv = new ModelAndView("cadastro-locatarios");
		return mv;
	}

	@GetMapping("/fiadores")
	public ModelAndView runCadastroFiadores() {
		ModelAndView mv = new ModelAndView("cadastro-fiador");
		return mv;
	}
	
	@GetMapping("/lancamento")
	public ModelAndView runCadastroLancamento() {
		ModelAndView mv = new ModelAndView("cadastro-lancamento");
		return mv;
	}
	
	
}
