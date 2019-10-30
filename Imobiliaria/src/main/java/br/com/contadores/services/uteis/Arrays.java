package br.com.contadores.services.uteis;

public class Arrays {

	public static String join(String[] arr, String particionador) {
		String join = "";
		for (String p : arr)
			join += particionador + p;

		return join;
	}

}
