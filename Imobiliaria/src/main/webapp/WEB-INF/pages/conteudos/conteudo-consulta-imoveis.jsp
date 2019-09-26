<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<strong class="title">Imóveis cadastrados</strong>
<form action='<c:url value = "/cadastros/cadastrar/imovel"/>'
	method="POST">

	<div class="formulario">
		<input id="selecionado" type="hidden" value="0">
		<table>
			<tr>
				<th>Código</th>
				<th>Cep</th>
				<th>Descrição</th>
				<th>Proprietário</th>
				<th>Endereço</th>
			</tr>
			<tbody>
				<c:if test="${ empty imoveis }">
					<tr>
						<td colspan="4"><span>Não há registros de imóveis
								cadastrados.</span></td>
					</tr>
				</c:if>
				<c:forEach var="imovel" items="${imoveis}">
					<tr id="${ imovel.id }" onclick="mudarCorLinhaSelecionada(this, this.id);" class="tb-cadastros">
						<td>${imovel.codigo}</td>
						<td>${imovel.enderecoImovel.cep}</td>
						<td>${imovel.descricao}</td>
						<td>${imovel.codigoProprietario}</td>
						<td>Rua ${imovel.enderecoImovel.rua},
							${imovel.enderecoImovel.numero}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="menu-botoes">
		<button class="bt-menus bt-acoes">Editar</button>
		<button class="bt-menus bt-acoes">Excluir</button>
		<button class="bt-menus bt-acoes">Novo</button>
	</div>
</form>