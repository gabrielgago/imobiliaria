package br.com.contadores.services;

import java.lang.reflect.Field;

import br.com.contadores.model.Fiador;
import br.com.contadores.model.anotations.Input;
import br.com.contadores.model.anotations.Title;
import br.com.contadores.model.interfaces.Drawable;
import br.com.contadores.services.exceptions.NonDrawableClassException;
import br.com.contadores.services.exceptions.OldNumberException;
import br.com.contadores.services.exceptions.UtilizedNumberException;

public class Desenhista {

	private static StringBuilder html;
	private static int endNumberLine = 0;

	static {
		html = new StringBuilder("");
	}

	@SuppressWarnings("unchecked")
	public static String draw(Class<? extends Drawable> classe)
			throws NonDrawableClassException, OldNumberException, UtilizedNumberException {

		if (!classe.isAnnotationPresent(Title.class))
			throw new NonDrawableClassException();

		Title title = classe.getAnnotation(Title.class);
		createTitlePage(title);
		createFormulario(title);

			for (Field f : classe.getDeclaredFields())
				if (f.isAnnotationPresent(Input.class))
					drawFieldInput(f);

		closeFormulario();

		String htmlFinal = html.toString();
		
		html = new StringBuilder("");
		
		return htmlFinal;
	}

	private static void createFormulario(Title title) {
		html.append("<form action=\"").append(title.formAction()).append("\" target=\"").append(title.formTarger())
				.append("\" method=\"").append(title.formMethod()).append("\">");
	}

	private static void drawFieldInput(Field f)
			throws NonDrawableClassException, OldNumberException, UtilizedNumberException {
		Input input = f.getDeclaredAnnotation(Input.class);

		if (input.row())
			addNewRow(input.numberRow());
		if (input.col())
			addNewCol();

		html.append("<input type=\"").append(input.type()).append("\"").append(" class=\"")
				.append(Arrays.join(input.classs(), " ")).append(" placeholder=\"").append(input.placeholder())
				.append("\"").append(" id=\"").append(input.id()).append("\"").append(" name=\"").append(input.name())
				.append("\"").append(" value=\"").append(input.value()).append("\">");

		closeCol();
		closeRow();

	}

	private static void addNewRow(int numberRow) throws OldNumberException, UtilizedNumberException {
//		if (endNumberLine < numberRow)
//			throw new OldNumberException();
//		if (endNumberLine == numberRow)
//			throw new UtilizedNumberException();
		if (endNumberLine != numberRow) {
			html.append("<div class=\"row\">");
			endNumberLine = numberRow;
		}
	}

	private static void addNewCol() {
		html.append("<div class=\"col\">");
	}

	private static void closeRow() {
		html.append("</div>");
	}

	private static void closeCol() {
		html.append("</div>");
	}

	private static void createTitlePage(Title title) {

		html.append("<h2>").append(title.name()).append("</h2>").append("<hr>");

	}

	private static void closeFormulario() {
		html.append("</form>");
	}

	public static void main(String[] args) {
		try {
			System.out.println(Desenhista.draw(Fiador.class));
		} catch (NonDrawableClassException | OldNumberException | UtilizedNumberException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}

}
