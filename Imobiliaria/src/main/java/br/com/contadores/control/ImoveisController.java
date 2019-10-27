package br.com.contadores.control;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
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
@RequestMapping("/imovel")
public class ImoveisController {

	@Autowired
	public Dao<Imovel> daoImovel;
	
	@GetMapping("/formulario")
	public ModelAndView runCadastroImoveis(Imovel imovel, BindingResult results) {
		ModelAndView mv = new ModelAndView("cadastro-imoveis");
		mv.addObject("imovel", imovel );
//		if(dao.findAll()) busca todos os seguradores
//		mv.addObject("listaSeguradores", null); caso nao venha nada na lista, devolver null para aparecer o bt de cadastro de seguradores.
		if(results.hasErrors())
			mv.addObject("error", "Houve um erro ao tentar salvar o imóvel de código : " + imovel.getCodigo());
		return mv;
	}
	
	@PostMapping("/cadastrar")
	public ModelAndView cadastrarImovel(@Valid Imovel imovel, BindingResult binding, RedirectAttributes redirect) {

		System.out.println(imovel);
		
		if(binding.hasErrors())
			return runCadastroImoveis(imovel, binding);
		
		try {
			imovel.getEnderecos().forEach((e)->e.setImovel(imovel));
			daoImovel.create(imovel);
			redirect.addFlashAttribute("success", "Imóvel salvo com sucesso ! Imóvel de código : " + imovel.getCodigo());
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return runCadastroImoveis(imovel, binding);
		}
		ModelAndView mv = new ModelAndView("redirect:/imovel/formulario");
		return mv;
	}
	
}
