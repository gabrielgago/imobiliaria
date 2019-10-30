<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${ not empty success }">
	<!-- 	<div class="msg msg-success"> -->

	<%-- 	${ success } --%>

	<!-- 	</div> -->
	<script>
		console.log('sem msg sucesso !');
		jQuery('#alert').fadeIn('1000');
	</script>
</c:if>
<c:if test="${ not empty error }">
	<div class="msg msg-error">${ error }</div>
	<script>
		console.log('sem msg sucesso !');
		jQuery('#alert').fadeIn('1000');
	</script>
</c:if>
<script>
	function buscaCepSecundario(cep) {
		var cep = JSON.parse(buscaCep(cep));
		console.log(typeof (cep));
		console.log(cep);
	}
</script>

<div class="container-fluid">
	<h2>Cadastro de Lan�amentos</h2>
	<hr>

	<form action='<c:url value = "/cadastros/cadastrar/lancamento"/>'
		method="POST">

		<div class="row">
			<div class="col">
				<input type="text" class="form-control input-label"
					placeholder="Ano / M�s" id="data" name="codigo">
			</div>
			<div class="col">
				<input type="text" class="form-control input-label"
					placeholder="C�digo Im�vel" id="codigo" name="codigo"
					value="${imovel.codigo}">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Locat�rio"
					name="locatario" value="${imovel.locatario}">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Nome"
					name="nome" value="${imovel.descricao}">
			</div>
		</div>
		<label for="exampleInputEmail1">Localiza��o</label>
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
		<div class="row">
			<label for="dtPgto" class="col-sm-2 col-form-label">Data do
				Pagamento</label>
			<div class="col">
				<input type="date" class="form-control" id="dtPgto"
					placeholder="Data do Pagamento">
			</div>
			<label for="dtPgtoProp" class="col-sm-2 col-form-label">Data
				Pgt� Propriet�rio</label>
			<div class="col">
				<input type="date" id="dtPgtoProp" class="form-control"
					placeholder="Data Pgt� do Propriet�rio">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control"
					placeholder="Valor do Aluguel">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Valor Pago">
			</div>
			<select id="status" class="form-control col mr-3">
				<option selected>Escolher...</option>
				<option>Em atraso</option>
				<option>No prazo</option>
			</select>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Multa">
			</div>
			<select id="opcao1" class="form-control col-4 mr-3">
				<option selected>P / P</option>
				<option>Sim</option>
				<option>N�o</option>
			</select>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control"
					placeholder="Corre��o Monet�ria">
			</div>
			<select id="opcao2" class="form-control col-4 mr-3">
				<option selected>P / P</option>
				<option>Sim</option>
				<option>N�o</option>
			</select>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Honor�rios">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Outros">
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
