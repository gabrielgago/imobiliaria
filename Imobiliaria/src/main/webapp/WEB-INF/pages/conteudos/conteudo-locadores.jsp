<script>
	function buscaCepSecundario(cep) {
		var cep = JSON.parse(buscaCep(cep));
		console.log(typeof (cep));
		console.log(cep);
	}
</script>

<div class="container-fluid">
	<h2>Cadastro de Locadores</h2>
	<hr>

	<form action='<c:url value = "/cadastros/cadastrar/locadores"/>'
		method="POST">

		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Locador">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Alugado">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Nome">
			</div>
		</div>
		<label for="inputEnderecoComercial">Comercial</label>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Endereço">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Bairro">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Cep">
			</div>
		</div>
		
		<label for="inputEnderecoResidencial">Residencial</label>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Endereço">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Bairro">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Cep">
			</div>
		</div>
		
		<label for="inputTelefone">Telefones</label>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Celular">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Fixo">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Comercial">
			</div>
		</div>
		
		<label for="inputOutros">Outros</label>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control"
					placeholder="Modalidade de Pgto">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Taxa Administrativa">
			</div>
		</div>
		
		<label for="inputDocumentacao">Documentação</label>
		<div class="row">
			<div class="col-4">
				<input type="text" class="form-control"
					placeholder="CPF">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Identidade">
			</div>
			<div class="col">
				<input type="text" class="form-control"
					placeholder="Orgão Emissor">
			</div>
			<div class="col">
				<input type="date" class="form-control" placeholder="Emissão">
			</div>
		</div>
		
		<label for="inputDocumentacao">Data de Nascimento</label>
		<div class="row">
			<div class="col-4">
				<input type="date" class="form-control"
					placeholder="Data de Nascimento">
			</div>
		</div>
		
		<div class="row">
			<div class="col-2">
				<button type="button" class="btn btn-secondary">Salvar</button>
			</div>
			<div class="col-2">
				<button type="button" class="btn btn-secondary">Listar</button>
			</div>
		</div>
		
	</form>
</div>