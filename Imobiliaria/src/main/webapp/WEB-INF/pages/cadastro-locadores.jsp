<!DOCTYPE >
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="programa.css">
        <link href="icons/css/all.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
 <header> 
     <div class="nome-sistema"><p>SISTEMA IMOBILIARIO</p></div> 
     <div class="logo"><img src="logo.png" alt="Home" class="logo-sistema"></div>
     <!--<i class="fas fa-search"></i>-->
     <div class="search"></div>
 </header>   


<div class="container">
    <!-- sub-menu cadastros -->
    <div class="sub-menu sb-cadastros">
                    <div>
                        <button class="bt-menus" onclick="location.href='cadastro-imoveis.html';">
                            Imóveis
                        </button>
                        <button class="bt-menus" onclick="location.href='cadastro-locadores.html';">
                            Locadores
                        </button>
                        <button class="bt-menus" onclick="location.href='cadastro-locatarios.html';">
                            Locatários
                        </button>
                        
                    </div>
    </div>
    <!-- sub-menu financeiro -->
    <div class="sub-menu sb-financeiros">
            <div>
                <button class="bt-menus" >
                    Cadastros
                </button>
                <button class="bt-menus" >
                    Financeiro
                </button>
                <button class="bt-menus" >
                    Relatórios
                </button>
                <button class="bt-menus" >
                    Outros
                </button>
                
            </div>
</div>
<!-- sub-menu relatorios -->
<div class="sub-menu sb-relatorios">
        <div>
            <button class="bt-menus" >
                Cadastros
            </button>
            <button class="bt-menus" >
                Financeiro
            </button>
            <button class="bt-menus" >
                Relatórios
            </button>
            <button class="bt-menus" >
                Outros
            </button>
            
        </div>
</div>
<!-- sub-menu outros -->
<div class="sub-menu sb-outros">
        <div>
            <button class="bt-menus" >
                Cadastros
            </button>
            <button class="bt-menus" >
                Financeiro
            </button>
            <button class="bt-menus" >
                Relatórios
            </button>
            <button class="bt-menus" >
                Outros
            </button>
            
        </div>
</div>
<!-- sub-configuração -->
<div class="sub-menu sb-configuracao">
        <div>
            <button class="bt-menus" >
                Cadastros
            </button>
            <button class="bt-menus" >
                Financeiro
            </button>
            <button class="bt-menus" >
                Relatórios
            </button>
            <button class="bt-menus" >
                Outros
            </button>
            
        </div>
</div>
<!-- menu lateral -->
    <div class="barraMenuLateral">
        <div>
            <button class="bt-menus" 
                onmouseover="abreSubMenu('.sb-cadastros');" 
                    onmouseout="fechaSubMenu('.sb-cadastros');">
                Cadastros
            </button>
            <button class="bt-menus" 
                onmouseover="abreSubMenu('.sb-financeiros');" 
                    onmouseout="fechaSubMenu('.sb-financeiros');">
                Financeiro
            </button>
            <button class="bt-menus" 
                onmouseover="abreSubMenu('.sb-relatorios');" 
                    onmouseout="fechaSubMenu('.sb-relatorios');" >
                Relatórios
            </button>
            <button class="bt-menus" 
                onmouseover="abreSubMenu('.sb-outros');" 
                    onmouseout="fechaSubMenu('.sb-outros');" >
                Outros
            </button>
            <button class="bt-menus" 
                onmouseover="abreSubMenu('.sb-configuracao');" 
                    onmouseout="fechaSubMenu('.sb-configuracao');" >
                    Configuração
            </button>
            
        </div>
    </div>
    <!-- conteudo -->
    <div class="corpo">
        <p><strong>Dashboard</strong></p>
    </div>
</div>
<footer></footer>
<script src="programa.js"></script>
<script src="jquery-3.4.1.min.js"></script>
   </body>
</html>
