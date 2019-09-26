package br.com.contadores.control;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.contadores.dao.Dao;
import br.com.contadores.model.Imovel;

@Controller
@RequestMapping("/consulta")
public class ConsultasController {

	@Autowired
	public Dao<Imovel> daoImovel;

	@GetMapping("/imoveis")
	public ModelAndView consultarImoveis() {
		List<Imovel> imoveis = new ArrayList<Imovel>();
		Imovel imo = new Imovel();
		imo.setId(3);
		imo = daoImovel.find(imo);
		imoveis.add(imo);
		ModelAndView mv = new ModelAndView("consulta-imoveis");
		mv.addObject("imoveis", imoveis);
		return mv;
	}

}
