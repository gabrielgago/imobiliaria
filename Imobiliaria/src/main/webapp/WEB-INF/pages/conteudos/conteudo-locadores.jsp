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
					placeholder="Orgão">
			</div>
			<div class="col">
				<input type="date" class="form-control" placeholder="Emissão">
			</div>
		</div>
		
		<label for="inputDocumentacao">Observação</label>
		<div class="row">
			<div class="col-4">
				<input type="date" class="form-control"
					placeholder="Data de Nascimento">
			</div>
		</div>
		
		<div class="row">
			<div class="col-3">
				<button type="button" class="btn btn-secondary">Salvar</button>
			</div>
			<div class="col-3">
				<button type="button" class="btn btn-secondary">Listar</button>
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
		<!-- 					<td class="label im-required">Código</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input codigo" -->
		<%-- 						name="codigo" value="${imovel.codigo}"/> <i --%>
		<!-- 						class="fas fa-sync-alt atualizar atualizar-codigo"></i></td> -->
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-geral"> -->
		<!-- 					<td class="label">Descrição</td> -->
		<!-- 					<td class="entrada"><input type="text" class="input descricao" -->
		<%-- 						name="descricao" value="${imovel.descricao}"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				Sessao proprietario -->
		<!-- 				<tr class="sub-titulo-tr"> -->
		<!-- 					<td colspan="2" class="sub-titulo-td separador-proprietario"><i -->
		<!-- 						class="far fa-caret-square-up"></i> <span class="sub-titulo">Proprietário</span> -->
		<!-- 					</td> -->
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-proprietario"> -->
		<!-- 					<td class="label">Proprietário</td> -->
		<!-- 					<td class="entrada"><select name="" id=""> -->
		<!-- 							<option value="Selecione o proprietário.">Selecione o -->
		<!-- 								proprietário.</option> -->
		<!-- 							<option value="Gabriel Martins Frael de Abreu">Gabriel -->
		<!-- 								Martins Frael de Abreu</option> -->
		<!-- 							<option value="Maycon Ribas">Maycon Ribas</option> -->
		<!-- 							<option value="Rodrigo Noutel">Rodrigo Noutel</option> -->
		<!-- 					</select> <i class="fas fa-sync-alt atualizar atualizar-proprietario"></i></td> -->
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-proprietario"> -->
		<!-- 					<td class="label">Código</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input codigo" -->
		<%-- 						name="codigoProprietario" value="${ imovel.codigoProprietario }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-proprietario"> -->
		<!-- 					<td class="label">CPF</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input cpf" /></td> -->
		<!-- 				</tr> -->
		<!-- 				Sessão endereco -->
		<!-- 				<tr class="sub-titulo-tr"> -->
		<!-- 					<td colspan="2" class="sub-titulo-td separador-endereco"><i -->
		<!-- 						class="far fa-caret-square-up"></i> <span class="sub-titulo">Endereço -->
		<!-- 							Imóvel</span></td> -->
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
		<!-- 					<td class="label">Número</td> -->
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
		<!-- 					<td class="label">Município</td> -->
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
		<!-- 						class="far fa-caret-square-up"></i> <span class="sub-titulo">Endereço -->
		<!-- 							Correspondência</span></td> -->
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
		<!-- 					<td class="label">Número</td> -->
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
		<!-- 					<td class="label">Município</td> -->
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
		<!-- 					<td class="label">Apólice de seguro</td> -->
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
		<!-- 					<td class="label">Inscrição CEDAE</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input cpf" -->
		<%-- 						name="inscricaoCedae" value="${ imovel.inscricaoCedae }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-outros"> -->
		<!-- 					<td class="label">Data</td> -->
		<!-- 					<td class="entrada"><input type="date" class="input" -->
		<%-- 						name="dataInscricao" value="${ imovel.dataInscricao }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 				<tr class="hidden hidden-outros"> -->
		<!-- 					<td class="label">Código Logradouro</td> -->
		<!-- 					<td class="entrada"><input type="number" class="input cpf" -->
		<%-- 						name="codigoLogradouro" value="${ imovel.codigoLogradouro }"/></td> --%>
		<!-- 				</tr> -->
		<!-- 		</table> -->
		<!-- 	</div> -->

		<!-- 	<div class="menu-botoes"> -->
		<%-- 		<button type="button" class="bt-menus bt-acoes" onclick="redirect('<c:url value = "/consulta/imoveis"/>');">Imóveis cadastrados</button> --%>
		<!-- 		<button class="bt-menus bt-acoes">Salvar</button> -->
		<!-- 		<button class="bt-menus bt-acoes">Limpar</button> -->
		<!-- 		<button class="bt-menus bt-acoes">Cancelar</button> -->
		<!-- 	</div> -->
	</form>
</div>