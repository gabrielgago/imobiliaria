function abreSubMenu(classe){
    document.querySelectorAll(String(classe))[0].style.display = 'block';
    // document.querySelectorAll(String(classe))[0].classList.toggle(this);
}

function fechaSubMenu(classe){
    document.querySelectorAll(String(classe))[0].style.display = 'none';
    // jQuery(String(classe)).fadeToggle();
    // document.querySelectorAll(String(classe))[0].classList.toggle(this);
}

const colecao = document.querySelectorAll('.sub-menu');
for(var i = 0 ; i < colecao.length; i++){

    colecao[1].onmouseenter = function(){
        
    }

    colecao[i].onmouseover = function(){
        this.style.display = 'block';
        // jQuery(this.firstElementChild.children).each(function(index, elemento){
        //     elemento.onmouseenter = parent.onmouseenter;
        // });
    }
   
    colecao[i].onmouseout = function(){
        this.style.display = 'none';
        // jQuery('.barraMenuLateral').fadeTo("slow", 1);
        // jQuery('.barraMenuLateral').fadeTo("slow", 1);
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


