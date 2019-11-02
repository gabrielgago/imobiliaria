class ConverterVariables {
	
	sendToConvert(url, data, callback){
		console.log('Entrou em converter.');
		$.get(url, data, (resposta)=>collback(resposta));
	}
	
}