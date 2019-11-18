package br.com.contadores.control;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.contadores.control.interfaces.Controlador;
import br.com.contadores.dao.interfaces.Dao;
import br.com.contadores.model.Error;
import br.com.contadores.model.Imovel;
import br.com.contadores.services.validadores.ValidadorImovel;

@Controller
@RequestMapping("/imovel")
public class ImoveisController implements Controlador<Imovel> {

	@Autowired
	public Dao<Imovel> daoImovel;
	public Error erro;

	//vincula o validador com o controller
    @InitBinder
    public void initBinder(WebDataBinder binder){
        binder.addValidators(new ValidadorImovel());
    }
	
	@RequestMapping("/formulario")
	public ModelAndView carregarFormulario() {
		ModelAndView mv = new ModelAndView("cadastro-imoveis");
		mv.addObject("imovel", new Imovel());
		return mv;
	}

	@PostMapping("/cadastrar")
	public ModelAndView cadastrar(@Valid Imovel imovel, BindingResult binding, RedirectAttributes redirect) {

		if (binding.hasErrors()) {
			ModelAndView modelAndView = new ModelAndView("cadastro-imoveis");
			return modelAndView;
//			carregarFormulario();
		}

		try {
			imovel.getEnderecos().forEach(e -> e.setImovel(imovel));
			daoImovel.create(imovel);
			redirect.addFlashAttribute("success",
					"Imóvel salvo com sucesso ! Imóvel de código : " + imovel.getCodigo());
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return new ModelAndView("forward:formulario");
		}
		ModelAndView mv = new ModelAndView("redirect:/imovel/formulario");
		return mv;
	}

	public ModelAndView editar(Imovel imovel) {
		throw new RuntimeException();
	}

	@RequestMapping(value = "remover/{id}", method = RequestMethod.DELETE)
	public String remover(@PathVariable("id") int id) {
		daoImovel.delete(id);
		return "redirect:/imoveis";
	}

	@GetMapping("/consulta")
	public ModelAndView listar() {
		ModelAndView mv = new ModelAndView("consulta-imoveis");
		mv.addObject("imoveis", daoImovel.findAll());
		return mv;
	}

}
