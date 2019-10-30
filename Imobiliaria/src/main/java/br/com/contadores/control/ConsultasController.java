package br.com.contadores.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.contadores.dao.interfaces.Dao;
import br.com.contadores.model.Imovel;

@Controller
@RequestMapping("/consulta")
public class ConsultasController {

	@Autowired
	public Dao<Imovel> daoImovel;

	@GetMapping("/imoveis")
	public ModelAndView consultarImoveis() {
		ModelAndView mv = new ModelAndView("consulta-imoveis");
		mv.addObject("imoveis", daoImovel.findAll());
		return mv;
	}

}