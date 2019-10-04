<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</div>
<aside>
	<div class="gb-bt-menus">
		<!-- <button>Cadastros</button>
		<button>Relatórios</button>
		<button>Pdv</button> -->
		<ul>
			<li class="gb-h-activo gb-bt-menu gb-bt-menu-cadastro"><button>Cadastros</button></li>
			<li style="display: none;" class="gb-bt-sub-menu-cadastro">
				<div
					style="width: 100%; padding: 0; margin: 0; box-sizing: border-box;">
					<ul>
						<li class="gb-h-activo" onclick="redirect('<c:url value = "/cadastros/imoveis"/>');">Imoveis</li>
						<li class="gb-h-activo" onclick="redirect('cadastros/locadores');">Locadores</li>
						<li class="gb-h-activo" onclick="redirect('cadastros/locatarios');">Locatarios</li>
						<li class="gb-h-activo" onclick="redirect('cadastros/receitas');">Receitas</li>
						<li class="gb-h-activo" onclick="redirect('cadastros/despesas');">Despesas</li>
					</ul>
				</div>
			</li>
			<li class="gb-h-activo gb-bt-menu gb-bt-menu-relatorios"><button>Relatórios</button></li>
			<li style="display: none;" class="gb-bt-sub-menu-relatorios">
				<div
					style="width: 100%; padding: 0; margin: 0; box-sizing: border-box;">
					<ul>
						<li class="gb-h-activo">Imoveis</li>
						<li class="gb-h-activo">Locadores</li>
						<li class="gb-h-activo">Locatarios</li>
						<li class="gb-h-activo">Receitas</li>
						<li class="gb-h-activo">Despesas</li>
					</ul>
				</div>
			</li>
			<li class="gb-h-activo gb-bt-menu gb-bt-menu-configuracoes"><button>Configuracao</button></li>
			<li style="display: none;" class="gb-bt-sub-menu-configuracoes">
				<div
					style="width: 100%; padding: 0; margin: 0; box-sizing: border-box;">
					<ul>
						<li class="gb-h-activo">Imoveis</li>
						<li class="gb-h-activo">Locadores</li>
						<li class="gb-h-activo">Locatarios</li>
						<li class="gb-h-activo">Receitas</li>
						<li class="gb-h-activo">Despesas</li>
					</ul>
				</div>
			</li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
</aside>

<!--<footer>
	<span class="footer">Copyright © 2010 SisMobile. All rights reserved.</span>
</footer>-->
<script src="<c:url value = "/resources/js/programa.js"/>"></script>
<script src="<c:url value = "/resources/js/acoes-botoes.js"/>"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</body>
</html>