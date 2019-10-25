package br.com.contadores.services;

public class Arrays {

	public static String join(String[] arr, String particionador) {
		String join = "";
		for (String p : arr)
			join += particionador + p;

		return join;
	}

}
