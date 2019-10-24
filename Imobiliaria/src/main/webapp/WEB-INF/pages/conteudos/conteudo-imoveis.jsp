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
	<h2>Cadastro de Im�veis</h2>
	<hr>

	<form action='<c:url value = "/cadastros/cadastrar/imovel"/>'
		method="POST">

		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="C�digo Im�vel">
			</div>
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
		<label for="exampleInputEmail1">Correspond�ncia</label>
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
			<div class="col">
				<input type="text" class="form-control" placeholder="Data">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Segurador">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control"
					placeholder="Data de Vencimento">
			</div>
			<div class="col">
				<input type="text" class="form-control"
					placeholder="Codigo Logradouro">
			</div>
		</div>

		<!-- 	<div class="formulario"> -->
		<!-- 		<table> -->
		<!-- 			<tbody> -->
		<!-- 				Sessao geral -->
		<!-- 				<tr class="sub-titulo-tr"> -->
		<!-- 					<td colspan="2" class="sub-titulo-td separador-geral"><i -->
		<!-- 						class="far fa-caret-square-up"></i> <span class="sub-titulo">Geral</span> -->
		<!-- 					</td> -->
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-geral"> -->
		<!-- 					<td class="label im-required">C�digo</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input codigo" -->
		<%-- 						name="codigo" value="${imovel.codigo}"/> <i --%>
		<!-- 						class="fas fa-sync-alt atualizar atualizar-codigo"></i></td> -->
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-geral"> -->
		<!-- 					<td class="label">Descri��o</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input descricao" -->
		<%-- 						name="descricao" value="${imovel.descricao}"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				Sessao proprietario -->
		<!-- 				<tr class="sub-titulo-tr"> -->
		<!-- 					<td colspan="2" class="sub-titulo-td separador-proprietario"><i -->
		<!-- 						class="far fa-caret-square-up"></i> <span class="sub-titulo">Propriet�rio</span> -->
		<!-- 					</td> -->
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-proprietario"> -->
		<!-- 					<td class="label">Propriet�rio</td> -->
		<!-- 					<td class="entrada"><select name="" id=""> -->
		<!-- 							<option value="Selecione o propriet�rio.">Selecione o -->
		<!-- 								propriet�rio.</option> -->
		<!-- 							<option value="Gabriel Martins Frael de Abreu">Gabriel -->
		<!-- 								Martins Frael de Abreu</option> -->
		<!-- 							<option value="Maycon Ribas">Maycon Ribas</option> -->
		<!-- 							<option value="Rodrigo Noutel">Rodrigo Noutel</option> -->
		<!-- 					</select> <i class="fas fa-sync-alt atualizar atualizar-proprietario"></i></td> -->
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-proprietario"> -->
		<!-- 					<td class="label">C�digo</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input codigo" -->
		<%-- 						name="codigoProprietario" value="${ imovel.codigoProprietario }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-proprietario"> -->
		<!-- 					<td class="label">CPF</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input cpf" /></td> -->
		<!-- 				</tr> -->
		<!-- 				Sess�o endereco -->
		<!-- 				<tr class="sub-titulo-tr"> -->
		<!-- 					<td colspan="2" class="sub-titulo-td separador-endereco"><i -->
		<!-- 						class="far fa-caret-square-up"></i> <span class="sub-titulo">Endere�o -->
		<!-- 							Im�vel</span></td> -->
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-endereco"> -->
		<!-- 					<td class="label">Cep</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input cep" -->
		<%-- 						name="enderecoImovel.cep" value="${ imovel.enderecoImovel.cep }" onblur="buscaCepSecundario(this.value);"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-endereco"> -->
		<!-- 					<td class="label">Rua</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input rua" -->
		<%-- 						name="enderecoImovel.rua" value="${ imovel.enderecoImovel.rua }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-endereco"> -->
		<!-- 					<td class="label">N�mero</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input numero" -->
		<%-- 						name="enderecoImovel.numero" value="${ imovel.enderecoImovel.numero }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-endereco"> -->
		<!-- 					<td class="label">Complemento</td> -->
		<!-- 					<td class="entrada"><input type="text" -->
		<!-- 						class="input complemento" name="enderecoImovel.complemento"  -->
		<%-- 						value="${ imovel.enderecoImovel.complemento }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-endereco"> -->
		<!-- 					<td class="label">Bairro</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input bairro" -->
		<%-- 						name="enderecoImovel.bairro" value="${ imovel.enderecoImovel.bairro }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-endereco"> -->
		<!-- 					<td class="label">Munic�pio</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input municipio" -->
		<%-- 						name="enderecoImovel.municipio" value="${ imovel.enderecoImovel.municipio }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-endereco"> -->
		<!-- 					<td class="label">Cidade</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input cidade" -->
		<%-- 						name="enderecoImovel.cidade" value="${ imovel.enderecoImovel.cidade }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-endereco"> -->
		<!-- 					<td class="label">Estado</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input estado" -->
		<%-- 						name="enderecoImovel.estado" value="${ imovel.enderecoImovel.estado }" /></td> --%>
		<!-- 				</tr> -->
		<!-- 				                    Sessao endereco 2 -->
		<!-- 				<tr class="sub-titulo-tr"> -->
		<!-- 					<td colspan="2" class="sub-titulo-td separador-correspondencia"><i -->
		<!-- 						class="far fa-caret-square-up"></i> <span class="sub-titulo">Endere�o -->
		<!-- 							Correspond�ncia</span></td> -->
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-correspondencia"> -->
		<!-- 					<td class="label">Cep</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input cep" -->
		<%-- 						name="enderecoCorrespondencia.cep" value="${ imovel.enderecoCorrespondencia.cep }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-correspondencia"> -->
		<!-- 					<td class="label">Rua</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input rua" -->
		<%-- 						name="enderecoCorrespondencia.rua" value="${ imovel.enderecoCorrespondencia.rua }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-correspondencia"> -->
		<!-- 					<td class="label">N�mero</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input numero" -->
		<%-- 						name="enderecoCorrespondencia.numero" value="${ imovel.enderecoCorrespondencia.numero }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-correspondencia"> -->
		<!-- 					<td class="label">Complemento</td> -->
		<!-- 					<td class="entrada"><input type="text" -->
		<!-- 						class="input complemento" -->
		<%-- 						name="enderecoCorrespondencia.complemento" value="${ imovel.enderecoCorrespondencia.complemento }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-correspondencia"> -->
		<!-- 					<td class="label">Bairro</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input bairro" -->
		<%-- 						name="enderecoCorrespondencia.bairro" value="${ imovel.enderecoCorrespondencia.bairro }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-correspondencia"> -->
		<!-- 					<td class="label">Munic�pio</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input municipio" -->
		<%-- 						name="enderecoCorrespondencia.municipio" value="${ imovel.enderecoCorrespondencia.municipio }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-correspondencia"> -->
		<!-- 					<td class="label">Cidade</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input cidade" -->
		<%-- 						name="enderecoCorrespondencia.cidade" value="${ imovel.enderecoCorrespondencia.cidade }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-correspondencia"> -->
		<!-- 					<td class="label">Estado</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input estado" -->
		<%-- 						name="enderecoCorrespondencia.estado" value="${ imovel.enderecoCorrespondencia.estado }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 							sessao outros -->
		<!-- 				<tr class="sub-titulo-tr"> -->
		<!-- 					<td colspan="2" class="sub-titulo-td separador-outros"><i -->
		<!-- 						class="far fa-caret-square-up"></i> <span class="sub-titulo">Outros</span> -->
		<!-- 					</td> -->
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-outros"> -->
		<!-- 					<td class="label">Imposto Predial</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input cpf" -->
		<%-- 						name="impostoPredial" value="${ imovel.impostoPredial }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-outros"> -->
		<!-- 					<td class="label">Ap�lice de seguro</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input cpf" -->
		<%-- 						name="numeroApoliceSeguros" value="${ imovel.numeroApoliceSeguros }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-outros"> -->
		<!-- 					<td class="label">Segurador</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input cpf" -->
		<%-- 						name="codigoSegurador" value="${ imovel.codigoSegurador }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-outros"> -->
		<!-- 					<td class="label">Data vencimento</td> -->
		<!-- 					<td class="entrada"><input type="date" class="input" -->
		<%-- 						name="dataVencimento" value="${ imovel.dataVencimento }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-outros"> -->
		<!-- 					<td class="label">Inscri��o CEDAE</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input cpf" -->
		<%-- 						name="inscricaoCedae" value="${ imovel.inscricaoCedae }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-outros"> -->
		<!-- 					<td class="label">Data</td> -->
		<!-- 					<td class="entrada"><input type="date" class="input" -->
		<%-- 						name="dataInscricao" value="${ imovel.dataInscricao }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-outros"> -->
		<!-- 					<td class="label">C�digo Logradouro</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input cpf" -->
		<%-- 						name="codigoLogradouro" value="${ imovel.codigoLogradouro }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 		</table> -->
		<!-- 	</div> -->

		<!-- 	<div class="menu-botoes"> -->
		<%-- 		<button type="button" class="bt-menus bt-acoes" onclick="redirect('<c:url value = "/consulta/imoveis"/>');">Im�veis cadastrados</button> --%>
		<!-- 		<button class="bt-menus bt-acoes">Salvar</button> -->
		<!-- 		<button class="bt-menus bt-acoes">Limpar</button> -->
		<!-- 		<button class="bt-menus bt-acoes">Cancelar</button> -->
		<!-- 	</div> -->
	</form>
</div>
