function abreSubMenu(classe){
    document.querySelectorAll(String(classe))[0].style.display = 'block';
}

function fechaSubMenu(classe){
    document.querySelectorAll(String(classe))[0].style.display = 'none';
}

const colecao = document.querySelectorAll('.sub-menu');
for(var i = 0 ; i < colecao.length; i++){

    colecao[1].onmouseenter = function(){
        
    }

    colecao[i].onmouseover = function(){
        this.style.display = 'block';
    }
   
    colecao[i].onmouseout = function(){
        this.style.display = 'none';
    }
}

jQuery('.sub-titulo-td').each(function(index, element){
    jQuery(element).click(function(){
        var nomeTr = '.hidden-' + this.classList[1].split('-')[1];
        if(this.firstElementChild.classList[1] === 'fa-caret-square-down'){
            this.firstElementChild.classList.remove('fa-caret-square-down');
            this.firstElementChild.classList.add('fa-caret-square-up')
            jQuery(nomeTr).hide();
        }else{
            this.firstElementChild.classList.remove('fa-caret-square-up');
            this.firstElementChild.classList.add('fa-caret-square-down')
            jQuery(nomeTr).show();
        }
        
    })
});

var msg = jQuery('.msg')[0];
if(msg != 'undefined'){
	setTimeout( function() {
		jQuery(msg).fadeOut(3000);
		}, 6000 );
}
