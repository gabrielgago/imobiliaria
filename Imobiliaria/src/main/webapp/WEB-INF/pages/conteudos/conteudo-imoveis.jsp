<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<c:if test="${error != null}">
	<div class="alert alert-danger alert-dismissible fade show"
		role="alert">
		<strong><c:out value="${error}"></c:out></strong> <c:out value="${errorDetails}"></c:out>
		<button type="button" class="close" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
</c:if>

<div class="container-fluid">
	<h2>Cadastro de Imóveis</h2>
	<hr>

	<s:form action="cadastrar" method="POST" modelAttribute="imovel">

		<div class="row">
			<div class="col">
				<s:input type="number" class="form-control input-label"
					placeholder="Código Imóvel" id="codigo" path="codigo" />
			</div>
			<div class="col">
				<s:input type="text" class="form-control" placeholder="Locador"
					path="descricao" />
			</div>
			<s:select id="alugado" class="form-control col mr-3" path="alugado">
				<s:options items="${statusImovel}" itemLabel="descricao" /> 
			</s:select>
<%-- 				<c:forEach items="${statusImovel}" var="status"> --%>
<%-- 					<option><c:out value="${status.descricao}"></c:out></option> --%>
<%-- 				</c:forEach> --%>
		</div>
		<div class="row">
			<div class="col">
				<s:input type="text" class="form-control" placeholder="Descrição"
					path="descricao" />
			</div>
		</div>


		<c:forEach items="${imovel.enderecos}" var="endereco"
			varStatus="status">
			<c:if test="${ status.index == 0 }">
				<label><h5>
						<p>Localização</p>
					</h5></label>
			</c:if>
			<c:if test="${ status.index == 1 }">
				<label><h5>
						<p>Correspondência</p>
					</h5></label>
			</c:if>
			<div class="row">
				<div class="col-sm-3">
					<s:input type="number" class="form-control" placeholder="Cep"
						path="enderecos[${status.index}].cep" value="${endereco.cep}"
						onblur="buscaCep(this.value,
						['enderecos${status.index }.cep',
						'enderecos${status.index }.logradouro',
						'enderecos${status.index }.complemento',
						'enderecos${status.index }.bairro',
						'enderecos${status.index }.cidade',
						'enderecos${status.index }.estado'] );" />
				</div>
				<div class="col-sm-6">
					<s:input type="text" class="form-control" placeholder="Endereço"
						path="enderecos[${status.index}].logradouro"
						value="${endereco.logradouro}" />
				</div>
				<div class="col-sm-3">
					<s:input type="number" class="form-control" placeholder="Numero"
						path="enderecos[${status.index}].numero"
						value="${endereco.numero}" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<s:input type="text" class="form-control" placeholder="Bairro"
						path="enderecos[${status.index}].bairro"
						value="${endereco.bairro}" />
				</div>
				<div class="col-sm-4">
					<s:input type="text" class="form-control" placeholder="Cidade"
						path="enderecos[${status.index}].cidade"
						value="${endereco.cidade}" />
				</div>
				<div class="col-sm-4">
					<s:input type="text" class="form-control" placeholder="Estado"
						path="enderecos[${status.index}].estado"
						value="${endereco.estado}" />
				</div>
			</div>
			<div class="row">
				<div class="col">
					<s:input type="text" class="form-control" placeholder="Complemento"
						path="enderecos[${status.index}].complemento"
						value="${endereco.complemento}" />
				</div>
			</div>
		</c:forEach>


		<label><h5>
				<p>Outros</p>
			</h5></label>
		<div class="row">
			<div class="col">
				<s:input type="number" class="form-control"
					placeholder="Codigo Logradouro" path="codigoLogradouro" />
			</div>
			<label for="dtVencimento" class="col-sm-2 col-form-label text-right">Data
				Inscrição</label>
			<div class="col">
				<s:input type="date" id="dtVencimento" class="form-control"
					path="dataInscricao" />
			</div>
		</div>
		<div class="row">
			<div class="col">
				<s:input type="text" class="form-control"
					placeholder="Imposto Predial" path="impostoPredial"
					onblur="this.value = this.value.replace(',', '.');" />
			</div>
			<div class="col">
				<s:input type="number" class="form-control"
					placeholder="Insc. Cedae" path="inscricaoCedae" />
			</div>
			<!-- 			dataInscricao -->
		</div>
		<div class="row">
			<div class="col">
				<s:input type="number" class="form-control"
					placeholder="Apolice de seguro" path="numeroApoliceSeguros" />
			</div>
			<label for="data" class="col-sm-2 col-form-label text-right">Data
				de Venc.</label>
			<div class="col">
				<s:input type="date" id="data" class="form-control"
					placeholder="Data" path="dataVencimentoApoliceSeguro" />
			</div>
		</div>
		<div class="row">
			<div class="col">
				<s:select id="seguradores" class="form-control col mr-3"
					path="codigoSegurador">
					<option value="-1">Não há seguradores cadastrados</option>
					<c:forEach items="${listaSeguradores}" var="segurador"
						varStatus="status">
						<option value="${segurador.codigo}">${segurador.nome}</option>
					</c:forEach>
				</s:select>
			</div>
			<c:if test="${listaSeguradores == null}">
				<div class="col">
					<button type="button" class="btn btn-secondary">Cadastrar
						Seguradores</button>
				</div>
			</c:if>
		</div>

		<div class="row">
			<div class="col-2">
				<button type="submit" class="btn btn-secondary">Salvar</button>
			</div>
			<div class="col-2">
				<a href="#" class="btn btn-secondary">Listar</a>
			</div>
		</div>

	</s:form>
</div>
