class ConverterVariables {
	
	sendToConvert(url, data, callback){
		$.get(url, data, (resposta)=>collback(resposta));
	}
	
}