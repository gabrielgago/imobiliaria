package br.com.contadores.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cadastros")
public class CadastrosController {

	@GetMapping("/imoveis")
	public String runCadastroImoveis() {
		return "cadastro-imoveis";
	}
	@GetMapping("/despesas")
	public String runCadastroDespesas() {
		return "cadastro-despesas";
	}
	
}
