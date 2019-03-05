<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="utf-8">

<!-- FORÇA NAVEGAÇÃO MOBILE EM RESOLUÇÕES MENORES -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" >

<!-- CSS BOOTSTRAP -->
<link rel="stylesheet" href="recursos/lib/bootstrap/css/bootstrap.min.css">

<!-- FONT AWESOME (ICONES FA)-->
<link href="recursos/lib/font-awesome/css/all.css" rel="stylesheet">

<!-- VARIÁVEL DE TEMA, DEPENDENDO DO NOME, IRÁ BUSCAR O CSS E IMAGENS EM UMA PASTA ESPECÍFICA -->
<%String tema = "direito";%>

<!-- CSS PRINCIPAL (PASTA TEMA) -->
<link href="recursos/tema/<%=tema%>/css/estilos.css" rel="stylesheet">
