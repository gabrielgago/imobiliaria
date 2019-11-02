package br.com.contadores.services;

import java.util.Objects;

import javax.servlet.http.HttpSession;

public class JSPConverter<T> {

	
	private HttpSession session;

	public JSPConverter(HttpSession session) {
		Objects.requireNonNull(session, "Objeto (HttpSession) passado por parâmetro, não pode ser nulo.");
		this.session = session;
	}
	
	public T fromJavaScriptToJava(String nomeVariavel){
		return (T) session.getAttribute(nomeVariavel);
	}
	
}
