<!DOCTYPE >
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" pageEncoding="UTF-8"%> 
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value = "/resources/css/programa.css"/>" />
<link rel="stylesheet" href="<c:url value = "/resources/css/input.css"/>" />
<link rel="stylesheet" href="<c:url value = "/resources/icons/css/all.css"/>" />
		<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
    <body>
 <header>
		<div class="nome-sistema">
			<p>SISTEMA IMOBILIARIO</p>
		</div>
		<div class="logo">
			<img src="<c:url value = "/resources/imgs/logo.png"/>" alt="Home" class="logo-sistema">
		</div>
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
         <%@include file='conteudos/conteudo-locatarios.jsp'%>
    </div>
</div>
<footer></footer>
	<script src="<c:url value = "/resources/js/jquery-3.4.1.min.js"/>"></script>
	<script src="<c:url value = "/resources/js/programa.js"/>"></script>
   </body>
</html>
