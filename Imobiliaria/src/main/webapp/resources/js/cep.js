/**
 * Script para buscar o endereço a partir do número de CEP dado como parametro.
 */

function buscaCep(numero){
	jQuery.ajax({
		  url: "http://viacep.com.br/ws/" + String(numero) + "/json/",
		}).done(function(retorno) {
			console.log(retorno);
		  return retorno;
		}).fail(function(errors){
			return {"error": "ouve um erro ao tentar recuperar o cep selecionado."};
		});
}