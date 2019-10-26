<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container-fluid">
	<h2>Cadastro de Imóveis</h2>
	<hr>

	<form action='<c:url value = "/cadastros/cadastrar/imovel"/>'
		method="POST">

		<div class="row">
			<div class="col">
				<input type="text" class="form-control input-label"
					placeholder="Código Imóvel" id="codigo" name="codigo"
					value="${imovel.codigo}">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Locador"
					name="descricao" value="${imovel.descricao}">
			</div>
			<select id="opcao1" class="form-control col mr-3">
				<option selected>Escolher...</option>
				<option>Alugado</option>
				<option>Não Alugado</option>
			</select>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Nome"
					name="nome" value="${imovel.descricao}">
			</div>
		</div>
		<label for="exampleInputEmail1">Localização</label>
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
		<label for="exampleInputEmail1">Correspondência</label>
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
		<label for="exampleInputEmail1">Outros</label>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control"
					placeholder="Imposto Predial">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Insc. Cedae">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control"
					placeholder="Apolice de seguro">
			</div>
			<label for="data" class="col-sm-1 col-form-label">Data</label>
			<div class="col">
				<input type="date" id="data" class="form-control" placeholder="Data">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Segurador">
			</div>
		</div>
		<div class="row">
			<label for="dtVencimento" class="col-sm-2 col-form-label">Data
				de Vencimento</label>
			<div class="col">
				<input type="date" id="dtVencimento" class="form-control"
					placeholder="Data de Vencimento">
			</div>
			<div class="col">
				<input type="text" class="form-control"
					placeholder="Codigo Logradouro">
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
