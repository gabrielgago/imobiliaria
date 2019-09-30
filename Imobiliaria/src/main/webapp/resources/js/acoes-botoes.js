/**
 * responsavel pela ação dos botoes.
 */

function abreSubMenu() {
	const colecaoBtMenus = jQuery('.gb-bt-menu');

	jQuery('.gb-bt-menu').each(function(index, elemento) {
		// gb-bt-menu-cadastro
		var classe = elemento.classList[2].split('-');
		// ["gb", "bt", "menu", "cadastro"]
		// gb-bt-sub-menu-cadastro
		var troca = [];
		jQuery(classe).each(function(indice, elemento){
			if(indice == 2){
				troca[indice++] = 'sub';
				troca[indice] = elemento;
				return;
			}
			troca[indice == 3 ? ++indice : indice] = elemento;
			});
		classe = '.' + troca.join("-");
		if(!jQuery(classe).is(':visible')){
			jQuery(classe).fadeIn('2000');
		}else{
			jQuery(classe).fadeOut('2000');
		}
	});

}
