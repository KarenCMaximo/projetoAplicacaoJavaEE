<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto Aplicação JavaEE</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%if(session.getAttribute("session.username")==null){%>
        <div>Fa&ccedil;a login para ter acesso ao conte&uacute;do da p&aacute;gina!</div>
        <%}else{%>
        <h1 align="center">P&aacute;gina Inicial</h1>
        <p align="center">RA:1290481922038</p>
        <p align="center">Karen Carvalho M&aacute;ximo</p>
        <p align="center">Semestre ingresso: 2 semestre de 2019</p>
        <p align="center"><a href="https://github.com/KarenCMaximo">Link perfil GitHub</a></p>
        <%}%>
    </body>
</html>
