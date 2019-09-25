<strong class="title">Cadastro de Imóveis</strong>
<form action="../cadastrar/cadastrarImovel" method="POST">
	<div class="formulario">
		<table>
			<tbody>
				<!-- Sessao geral -->
				<tr class="sub-titulo-tr">
					<td colspan="2" class="sub-titulo-td separador-geral"><i
						class="far fa-caret-square-up"></i> <span class="sub-titulo">Geral</span>
					</td>
				</tr>
				<tr class="hidden hidden-geral">
					<td class="label">Código</td>
					<td class="entrada"><input type="number" class="input codigo"
						name="codigo" /> <i
						class="fas fa-sync-alt atualizar atualizar-codigo"></i></td>
				</tr>
				<tr class="hidden hidden-geral">
					<td class="label">Descrição</td>
					<td class="entrada"><input type="text" class="input descricao"
						name="descricao" /></td>
				</tr>
				<!-- Sessao proprietario -->
				<tr class="sub-titulo-tr">
					<td colspan="2" class="sub-titulo-td separador-proprietario"><i
						class="far fa-caret-square-up"></i> <span class="sub-titulo">Proprietário</span>
					</td>
				</tr>
				<tr class="hidden hidden-proprietario">
					<td class="label">Proprietário</td>
					<td class="entrada"><select name="" id="">
							<option value="Selecione o proprietário.">Selecione o
								proprietário.</option>
							<option value="Gabriel Martins Frael de Abreu">Gabriel
								Martins Frael de Abreu</option>
							<option value="Maycon Ribas">Maycon Ribas</option>
							<option value="Rodrigo Noutel">Rodrigo Noutel</option>
					</select> <i class="fas fa-sync-alt atualizar atualizar-proprietario"></i></td>
				</tr>
				<tr class="hidden hidden-proprietario">
					<td class="label">Código</td>
					<td class="entrada"><input type="number" class="input codigo"
						name="codigoProprietario" /></td>
				</tr>
				<tr class="hidden hidden-proprietario">
					<td class="label">CPF</td>
					<td class="entrada"><input type="number" class="input cpf" /></td>
				</tr>
				<!-- Sessão endereco -->
				<tr class="sub-titulo-tr">
					<td colspan="2" class="sub-titulo-td separador-endereco"><i
						class="far fa-caret-square-up"></i> <span class="sub-titulo">Endereço
							Imóvel</span></td>
				</tr>
				<tr class="hidden hidden-endereco">
					<td class="label">Cep</td>
					<td class="entrada"><input type="number" class="input cep"
						name="enderecoImovel.cep" /></td>
				</tr>
				<tr class="hidden hidden-endereco">
					<td class="label">Rua</td>
					<td class="entrada"><input type="text" class="input rua"
						name="enderecoImovel.rua" /></td>
				</tr>
				<tr class="hidden hidden-endereco">
					<td class="label">Número</td>
					<td class="entrada"><input type="text" class="input numero"
						name="enderecoImovel.numero" /></td>
				</tr>
				<tr class="hidden hidden-endereco">
					<td class="label">Complemento</td>
					<td class="entrada"><input type="text"
						class="input complemento" name="enderecoImovel.complemento" /></td>
				</tr>
				<tr class="hidden hidden-endereco">
					<td class="label">Bairro</td>
					<td class="entrada"><input type="text" class="input bairro"
						name="enderecoImovel.bairro" /></td>
				</tr>
				<tr class="hidden hidden-endereco">
					<td class="label">Município</td>
					<td class="entrada"><input type="text" class="input municipio"
						name="enderecoImovel.municipio" /></td>
				</tr>
				<tr class="hidden hidden-endereco">
					<td class="label">Cidade</td>
					<td class="entrada"><input type="text" class="input cidade"
						name="enderecoImovel.cidade" /></td>
				</tr>
				<tr class="hidden hidden-endereco">
					<td class="label">Estado</td>
					<td class="entrada"><input type="text" class="input estado"
						name="enderecoImovel.estado" /></td>
				</tr>
				<!--                     Sessao endereco 2 -->
				<tr class="sub-titulo-tr">
					<td colspan="2" class="sub-titulo-td separador-correspondencia"><i
						class="far fa-caret-square-up"></i> <span class="sub-titulo">Endereço
							Correspondência</span></td>
				</tr>
				<tr class="hidden hidden-correspondencia">
					<td class="label">Cep</td>
					<td class="entrada"><input type="number" class="input cep"
						name="enderecoCorrespondencia.cep" /></td>
				</tr>
				<tr class="hidden hidden-correspondencia">
					<td class="label">Rua</td>
					<td class="entrada"><input type="text" class="input rua"
						name="enderecoCorrespondencia.rua" /></td>
				</tr>
				<tr class="hidden hidden-correspondencia">
					<td class="label">Número</td>
					<td class="entrada"><input type="text" class="input numero"
						name="enderecoCorrespondencia.numero" /></td>
				</tr>
				<tr class="hidden hidden-correspondencia">
					<td class="label">Complemento</td>
					<td class="entrada"><input type="text"
						class="input complemento"
						name="enderecoCorrespondencia.complemento" /></td>
				</tr>
				<tr class="hidden hidden-correspondencia">
					<td class="label">Bairro</td>
					<td class="entrada"><input type="text" class="input bairro"
						name="enderecoCorrespondencia.bairro" /></td>
				</tr>
				<tr class="hidden hidden-correspondencia">
					<td class="label">Município</td>
					<td class="entrada"><input type="text" class="input municipio"
						name="enderecoCorrespondencia.municipio" /></td>
				</tr>
				<tr class="hidden hidden-correspondencia">
					<td class="label">Cidade</td>
					<td class="entrada"><input type="text" class="input cidade"
						name="enderecoCorrespondencia.cidade" /></td>
				</tr>
				<tr class="hidden hidden-correspondencia">
					<td class="label">Estado</td>
					<td class="entrada"><input type="text" class="input estado"
						name="enderecoCorrespondencia.estado" /></td>
				</tr>
				<!-- 			sessao outros -->
				<tr class="sub-titulo-tr">
					<td colspan="2" class="sub-titulo-td separador-outros"><i
						class="far fa-caret-square-up"></i> <span class="sub-titulo">Outros</span>
					</td>
				</tr>
				<tr class="hidden hidden-outros">
					<td class="label">Imposto Predial</td>
					<td class="entrada"><input type="number" class="input codigo"
						name="impostoPredial" /></td>
				</tr>
				<tr class="hidden hidden-outros">
					<td class="label">Apólice de seguro</td>
					<td class="entrada"><input type="number" class="input cpf"
						name="numeroApoliceSeguros" /></td>
				</tr>
				<tr class="hidden hidden-outros">
					<td class="label">Segurador</td>
					<td class="entrada"><input type="number" class="input cpf"
						name="codigoSegurador" /></td>
				</tr>
				<tr class="hidden hidden-outros">
					<td class="label">Data vencimento</td>
					<td class="entrada"><input type="number" class="input cpf"
						name="dataVencimento" /></td>
				</tr>
				<tr class="hidden hidden-outros">
					<td class="label">Inscrição CEDAE</td>
					<td class="entrada"><input type="number" class="input cpf"
						name="inscricaoCedae" /></td>
				</tr>
				<tr class="hidden hidden-outros">
					<td class="label">Data</td>
					<td class="entrada"><input type="number" class="input cpf"
						name="dataInscricao" /></td>
				</tr>
				<tr class="hidden hidden-outros">
					<td class="label">Código Logradouro</td>
					<td class="entrada"><input type="number" class="input cpf"
						name="codigoLogradouro" /></td>
				</tr>
		</table>
	</div>

	<div class="menu-botoes">
		<button class="bt-menus bt-acoes">Salvar</button>
		<button class="bt-menus bt-acoes">Limpar</button>
		<button class="bt-menus bt-acoes">Cancelar</button>
	</div>
</form>