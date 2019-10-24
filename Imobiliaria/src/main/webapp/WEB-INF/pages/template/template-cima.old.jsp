
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css"
	href="https://necolas.github.io/normalize.css/latest/normalize.css">
<link rel="stylesheet"
	href="<c:url value = "/resources/css/programa.css"/>" />
<link rel="stylesheet" href="<c:url value = "/resources/css/site.css"/>" />
<link rel="stylesheet"
	href="<c:url value = "/resources/css/input.css"/>" />
<link rel="stylesheet"
	href="<c:url value = "/resources/css/alert.css"/>" />
<link rel="stylesheet"
	href="<c:url value = "/resources/icons/css/all.css"/>" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="<c:url value = "/resources/js/cep.js"/>"></script>
<script src="<c:url value = "/resources/js/alert.js"/>"></script>
<script src="<c:url value = "/resources/js/jquery-3.4.1.min.js"/>"></script>
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
<title>Sistema Imobiliario Contadores Home</title>
<link rel="stylesheet" type="text/css"
	href="https://necolas.github.io/normalize.css/latest/normalize.css">
</head>

<body>
	<header>
		<div class="gb-logo">
			<span><img alt="" src="<c:url value="/resources/imgs/link.png"/>"></span>
		</div>
<!-- 		<nav> -->
<!-- 			<span>Ajuda</span> <span>Home</span> <span -->
<!-- 				style="margin: 0 !important;">Sair</span> -->
<!-- 		</nav> -->
		<div class="gb-search">
		<input type="text" placeholder="pesquisar">
		<i class="fas fa-search"></i>
		</div>
	</header>
	<%@include file='../content/alert.jsp'%>
	<div class="gb-conteudo">