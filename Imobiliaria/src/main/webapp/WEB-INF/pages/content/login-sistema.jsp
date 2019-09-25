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
			<img src="<c:url value = "/resources/imgs/logo-2.png"/>" alt="Home" class="logo-sistema">
		</div>
		<!--<i class="fas fa-search"></i>-->
		<div class="search"></div>
	</header>
    <div class="container-login">
        <div class="caixa">
            <div class="titulo-login"><strong><span>Login</span></strong></div>
            <div class="caixa-entradas">
                <strong><span>Usuário</span></strong>
                <input type="text" class="input-login">
                <strong><span>Senha</span></strong>
                <input type="text" class="input-login">
                <div><button class="bt-login" onclick="window.location.href = 'home/run'">Login</button> <button class="bt-login">Cancelar</button></div>
                
            </div>
        </div>
    </div> 
    <footer class="footer-login">
            <p>Copyright © 2012 | Gabriel Martins Frael de Abreu</p>
    </footer> 
</body>
</html>