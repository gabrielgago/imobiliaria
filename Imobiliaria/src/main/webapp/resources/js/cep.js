/**
 * Script para buscar o endereço a partir do número de CEP dado como parametro.
 */

function buscaCep(numero, arr){
	jQuery.ajax({
		  url: "http://viacep.com.br/ws/" + String(numero) + "/json/",
		}).done(function(retorno) {
			document.getElementById(arr[1]).value = retorno.logradouro;
			document.getElementById(arr[2]).value = retorno.complemento;
			document.getElementById(arr[3]).value = retorno.bairro;
			document.getElementById(arr[4]).value = retorno.localidade;
			document.getElementById(arr[5]).value = retorno.uf;
			return retorno;
		}).fail(function(errors){
			return {"error": "ouve um erro ao tentar recuperar o cep selecionado."};
		});
}