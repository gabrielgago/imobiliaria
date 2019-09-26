package br.com.contadores.control;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.contadores.model.Imovel;


@Controller
@RequestMapping("/cadastros")
public class CadastrosController {

	@GetMapping("/imoveis")
	public ModelAndView runCadastroImoveis(RedirectAttributes redirect) {
		ModelAndView mv = new ModelAndView("cadastro-imoveis");
		mv.addObject("imovel", new Imovel());
		return mv;
	}
	
	@PostMapping("/cadastrar/imovel")
	public ModelAndView cadastrar(Imovel imovel, RedirectAttributes redirect) {
		try {
			System.out.println("Entrou em cadastrar imovel");
			System.out.println(imovel);
//			DaoImovel dao = new DaoImovel();
//			dao.create(imovel);
//			return false;
			redirect.addFlashAttribute("success", "Imóvel salvo com sucesso !");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			redirect.addFlashAttribute("error", "Houve um erro ao tentar salvar o imóvel !");
		}
		ModelAndView mv = new ModelAndView("redirect:/cadastros/imoveis");
		return mv;
	}
}
