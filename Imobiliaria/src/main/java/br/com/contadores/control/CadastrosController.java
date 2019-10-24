package br.com.contadores.control;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.contadores.dao.Dao;
import br.com.contadores.model.Imovel;


@Controller
@RequestMapping("/cadastros")
public class CadastrosController {

	@Autowired
	public Dao<Imovel> daoImovel;
	
	@GetMapping("/imoveis")
	public ModelAndView runCadastroImoveis(Imovel imovel, boolean hasErrors) {
		ModelAndView mv = new ModelAndView("cadastro-imoveis");
		mv.addObject("imovel", imovel );
		if(hasErrors)
			mv.addObject("error", "Houve um erro ao tentar salvar o imóvel de código : " + imovel.getCodigo());
		return mv;
	}

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
	
	@PostMapping("/cadastrar/imovel")
	public ModelAndView cadastrarImovel(@Valid Imovel imovel, BindingResult binding, RedirectAttributes redirect) {

		if(binding.hasErrors())
			return runCadastroImoveis(imovel, false);
		
		try {
			daoImovel.create(imovel);
			redirect.addFlashAttribute("success", "Imóvel salvo com sucesso ! Imóvel de código : " + imovel.getCodigo());
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return runCadastroImoveis(imovel, true);
		}
		ModelAndView mv = new ModelAndView("redirect:/cadastros/imoveis");
		return mv;
	}
	
}
