<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container-fluid">
	<h2>Cadastro de Fiador</h2>
	<hr>

	<form action='<c:url value = "/cadastros/cadastrar/fiador"/>'
		method="POST">

		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="C�digo Fiador"
					id="codigo" name="codigoFiador" value="${fiador.codigoFiador}">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Nome"
					name="nomeFiador" value="${fiador.nomeFiador}">
			</div>
			<div class="col">
				<input type="date" class="form-control"
					placeholder="Data de Nascimento" name="dataNascimento"
					value="${fiador.dataNascimento}">
			</div>
		</div>
		<label for="">Localiza��o</label>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Cep"
					value="${fiador.enderecoResidencial.cep}">
			</div>
			<div class="col">
				<input type="number" class="form-control" placeholder="N�mero"
					value="${fiador.enderecoResidencial.numero}">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Logradouro"
					value="${fiador.enderecoResidencial.lograouro}">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Bairro"
					value="${fiador.enderecoResidencial.bairro}">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Municipio"
					value="${fiador.enderecoResidencial.municipio}">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Estado"
					value="${fiador.enderecoResidencial.estado}">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Complemento"
					value="${fiador.enderecoResidencial.complemento}">
			</div>
		</div>
		<label for="">Correspond�ncia</label>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Cep"
					value="${fiador.enderecoComecial.cep}">
			</div>
			<div class="col">
				<input type="number" class="form-control" placeholder="N�mero"
					value="${fiador.enderecoComecial.numero}">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Logradouro"
					value="${fiador.enderecoComecial.lograouro}">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Bairro"
					value="${fiador.enderecoComecial.bairro}">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Municipio"
					value="${fiador.enderecoComecial.municipio}">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Estado"
					value="${fiador.enderecoComecial.estado}">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Complemento"
					value="${fiador.enderecoComecial.complemento}">
			</div>
		</div>
		<label for="">Documentos</label>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="CPF"
					value="${fiador.documentosFiador.cpf}">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Identidade"
					value="${fiador.documentosFiador.registroGeral.registro}">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Org�o Emissor"
					value="${fiador.documentosFiador.registroGeral.orgao}">
			</div>
			<div class="col">
				<input type="date" class="form-control"
					placeholder="Data de Emiss�o"
					value="${fiador.documentosFiador.registroGeral.dataEmissao}">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Estado Civil"
					value="${fiador.estadoCivil}">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Profiss�o"
					value="${fiador.profissao.codigo}">
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
