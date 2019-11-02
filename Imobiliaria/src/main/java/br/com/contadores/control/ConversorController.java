package br.com.contadores.control;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("conversor")
public class ConversorController {

	@GetMapping("/converter")
	public void converter() {
		
	}
	
}
