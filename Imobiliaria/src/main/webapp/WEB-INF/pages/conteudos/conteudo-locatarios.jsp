
<div class="container-fluid">
	<h2>Cadastro de Locat�rios</h2>
	<hr>

	<form action='<c:url value = "/cadastros/cadastrar/locatarios"/>'
		method="POST">

		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Im�vel">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Endere�o">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Bairro">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="CEP">
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
		<div class="row">
			<div class="col-4">
				<input type="text" class="form-control" placeholder="Locat�rio">
			</div>
			<div class="col-8">
				<input type="text" class="form-control" placeholder="Nome">
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<input type="text" class="form-control" placeholder="Locador">
			</div>
			<div class="col-8">
				<input type="text" class="form-control" placeholder="Nome">
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<input type="text" class="form-control" placeholder="Fiador">
			</div>
			<div class="col-8">
				<input type="text" class="form-control" placeholder="Nome">
			</div>
		</div>
		
		<label for="inputEnderecoResidencial">Comercial</label>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Endere�o">
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
					placeholder="In�cio do Contrado">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="T�rmino do Contrato">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Loca��o Tipo">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control"
					placeholder="Tipo de Reajuste [T-Q-M-S-A]">
			</div>
			<div class="col">
				<input type="date" class="form-control" placeholder="Data Base Reajuste">
			</div>
		</div>
		
		<label for="inputDocumentacao">Documenta��o</label>
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
					placeholder="Org�o Emissor">
			</div>
			<div class="col">
				<input type="date" class="form-control" placeholder="Emiss�o">
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