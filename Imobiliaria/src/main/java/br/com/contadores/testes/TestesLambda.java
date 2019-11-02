package br.com.contadores.testes;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;

public class TestesLambda {
  
	public static void main(String[] args) {
		
//		Map<Integer, String> colocacaoVercoNomeDev = new HashMap();
//		
//		
//		int colocacao = 1;
//		colocacaoVercoNomeDev.put(colocacao++, "gabriel");
//		colocacaoVercoNomeDev.put(colocacao++, "Victor");
//		colocacaoVercoNomeDev.put(colocacao++, "Pablo");
//		colocacaoVercoNomeDev.put(colocacao++, "Predador");
//		colocacaoVercoNomeDev.put(colocacao, "Tadeu, Mayquinho");
//		
//		colocacaoVercoNomeDev.forEach((chave, valor) -> System.out.println("colocacao : " + chave + ", nome dev : " + valor));
//		
//		colocacaoVercoNomeDev.entrySet().forEach( (entrada) -> System.out.println("["+entrada.getKey()+ "," +entrada.getValue()+ "]") );


		List<String> nomeCompleto = new ArrayList<>();
		nomeCompleto.add("Gabriel");
		nomeCompleto.add("Martins");
		nomeCompleto.add("Frael");
		nomeCompleto.add("De");
		nomeCompleto.add("Abreu");
		
//		Stream<String> stream = nomeCompleto.stream().map( s -> s.concat("--") );
//		stream.close();
//		nomeCompleto.forEach(System.out::println);
		
//		01 List<String> pessoas = new Pessoa().populaPessoas();
//		02 double media = pessoas.stream().
//		03 filter(pessoa -> pessoa.getNacionalidade().equals("Brasil")).
//		04 mapToInt(pessoa -> pessoa.getIdade()).
//		05 average().
//		06 getAsDouble();
		
		Optional<String> first = nomeCompleto.stream().filter( pessoa -> pessoa.equals("Gabriel") ).findFirst();
		System.out.println(first.get());
		System.out.println(first.isPresent());
//		.forEach(System.out::println);
		
	}
	
}
