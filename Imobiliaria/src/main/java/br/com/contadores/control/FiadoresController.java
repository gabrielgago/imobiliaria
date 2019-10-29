package br.com.contadores.control;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.contadores.control.interfaces.Controlador;
import br.com.contadores.dao.interfaces.Dao;
import br.com.contadores.model.Fiador;

@Controller
@RequestMapping("/fiador")
public class FiadoresController implements Controlador<Fiador> {
	
	public Dao<Fiador> daoFiador;

	@Override
	@GetMapping("/formulario")
	public ModelAndView carregarFormulario(Fiador fiador, BindingResult results) {
		ModelAndView mv = new ModelAndView("cadastro-fiador");
		mv.addObject("fiador", fiador);
		if (results.hasErrors())
			mv.addObject("error", "Houve um erro ao tentar salvar o fiador de código : " + fiador.getCodigoFiador());
		return mv;
	}

	@Override
	@PostMapping("/cadastrar")
	public ModelAndView cadastrar(@Valid Fiador fiador, BindingResult binding, RedirectAttributes redirect) {
		if (binding.hasErrors())
			return carregarFormulario(fiador, binding);

		try {
			fiador.getEnderecos().forEach((e) -> e.setFiador(fiador));
			daoFiador.create(fiador);
			redirect.addFlashAttribute("success",
					"Fiador salvo com sucesso ! Fiador de código : " + fiador.getCodigoFiador());
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return carregarFormulario(fiador, binding);
		}
		ModelAndView mv = new ModelAndView("redirect:/fiador/formulario");
		return mv;
	}

	@Override
	public ModelAndView cadastrar(@Valid Fiador fiador, BindingResult binding) {
		return null;
	}

	@Override
	public ModelAndView editar(Fiador fiador) {
		return null;
	}

	@Override
	@RequestMapping(value="remover/{id}", method=RequestMethod.DELETE)
	public String remover(int id) {
		daoFiador.delete(id);
		return "redirect:/fiadores";
	}

	@Override
	public ModelAndView listar(Fiador fiador) {
		ModelAndView mv = new ModelAndView("consulta-fiadores");
		mv.addObject("fiadores", daoFiador.findAll());
		return mv;
	}

}
