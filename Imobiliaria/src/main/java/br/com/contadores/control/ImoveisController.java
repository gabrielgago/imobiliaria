package br.com.contadores.control;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.contadores.control.interfaces.Controlador;
import br.com.contadores.dao.interfaces.Dao;
import br.com.contadores.model.Imovel;
import br.com.contadores.model.StatusImovel;

@Controller
@RequestMapping("/imovel")
public class ImoveisController implements Controlador<Imovel> {

	@Autowired
	public Dao<Imovel> daoImovel;

	@Override
	@GetMapping("/formulario")
	public ModelAndView carregarFormulario(Imovel imovel, BindingResult results) {
		ModelAndView mv = new ModelAndView("cadastro-imoveis");
		mv.addObject("imovel", imovel);
		mv.addObject("statusImovel", StatusImovel.values());
//		if(dao.findAll()) busca todos os seguradores
//		mv.addObject("listaSeguradores", null); caso nao venha nada na lista, devolver null para aparecer o bt de cadastro de seguradores.
		if (results.hasErrors()) {
			final StringBuilder errors = new StringBuilder("");
			results.getFieldErrors().forEach(erro -> errors.append(erro).append("<br>"));
			mv.addObject("error", "Houve um erro ao tentar salvar o imóvel de código : " + imovel.getCodigo());
			mv.addObject("errorDetails",
					"Parâmetros enviados na requisição não deram match com os atributos do modelo. Favor verificar o formulário." + errors);
		}
		return mv;
	}

	@Override
	@PostMapping("/cadastrar")
	public ModelAndView cadastrar(@Valid Imovel imovel, BindingResult binding, RedirectAttributes redirect) {
		if (binding.hasErrors())
			return carregarFormulario(imovel, binding);

		try {
			imovel.getEnderecos().forEach(e -> e.setImovel(imovel));
			daoImovel.create(imovel);
			redirect.addFlashAttribute("success",
					"Imóvel salvo com sucesso ! Imóvel de código : " + imovel.getCodigo());
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return carregarFormulario(imovel, binding);
		}
		ModelAndView mv = new ModelAndView("redirect:/imovel/formulario");
		return mv;
	}

	@Override
	public ModelAndView editar(Imovel imovel) {
		return null;
	}

	@Override
	@RequestMapping(value = "remover/{id}", method = RequestMethod.DELETE)
	public String remover(@PathVariable("id") int id) {
		daoImovel.delete(id);
		return "redirect:/imoveis";
	}

	@Override
	@GetMapping("/consulta")
	public ModelAndView listar(Imovel imovel) {
		ModelAndView mv = new ModelAndView("consulta-imoveis");
		mv.addObject("imoveis", daoImovel.findAll());
		return mv;
	}

	@Override
	public ModelAndView cadastrar(@Valid Imovel imovel, BindingResult binding) {
		return null;
	}

}
