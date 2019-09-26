package br.com.contadores.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.contadores.model.Imovel;

@Controller
@RequestMapping("/cadastros")
public class CadastrosController {

	@GetMapping("/imoveis")
	public String runCadastroImoveis() {
		return "cadastro-imoveis";
	}
	
	@PostMapping("/cadastrar/imovel")
	public String cadastrar(Imovel imovel) {
		System.out.println("Entrou em cadastrar");
//		try {
			System.out.println(imovel);
//			DaoImovel dao = new DaoImovel();
//			dao.create(imovel);
//			return false;
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//			e.printStackTrace();
//		}
		return "cadastro-imoveis";
	}
}
