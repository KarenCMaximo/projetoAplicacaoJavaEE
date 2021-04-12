<%-- 
    Document   : disciplinas
    Created on : 12 de abr. de 2021, 12:35:42
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("atualizar") !=null) {
        session.setAttribute("poop1", request.getParameter("poop1"));
        session.setAttribute("poop2", request.getParameter("poop2"));
        session.setAttribute("sistemasp1", request.getParameter("sistemasp1"));
        session.setAttribute("sistemasp2", request.getParameter("sistemasp2"));
        session.setAttribute("engenhariap1", request.getParameter("engenhariap1"));
        session.setAttribute("engenhariap2", request.getParameter("engenhariap2"));
        session.setAttribute("inglesp1", request.getParameter("inglesp1"));
        session.setAttribute("inglesp2", request.getParameter("inglesp2"));
        session.setAttribute("metodologiap1", request.getParameter("metodologiap1"));
        session.setAttribute("metodologiap2", request.getParameter("metodologiap2"));
        session.setAttribute("linguagemp1", request.getParameter("linguagemp1"));
        session.setAttribute("linguagemp2", request.getParameter("linguagemp2"));                
    }
    %>
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
        <h1 align="center">Disciplinas cursadas / 1 semestre 2021:</h1>
        <form align="center">
            <table border="1" align="center">
                <tr>
                    <th>Disciplinas</th>
                    <th>Professor(a)</th>
                    <th>Dia da semana</th>
                    <th>Hor&aacute;rio</th>
                    <th>P1</th>
                    <th>P2</th>
                </tr>
                <tr>
                    <td>Programa&ccedil;&atilde;o orientada a objetos</td>
                    <td>Ricardo</td>
                    <td>Segunda-feira</td>
                    <td>15:00 as 18:30</td>
                    <td><input type="number" name="poop1" placeholder=<%= session.getAttribute("poop1")%>></td>
                    <td><input type="number" name="poop2" placeholder=<%= session.getAttribute("poop2")%>></td>
                </tr>
                <tr>
                    <td>Sistemas Operacionais</td>
                    <td>F&aacute;bio</td>
                    <td>Ter&ccedil;a-feira e Quarta-feira</td>
                    <td>16:50 as 18:30 e 13:10 as 14:50</td>
                    <td><input type="number" name="sistemasp1" placeholder=<%= session.getAttribute("sistemasp1")%>></td>
                    <td><input type="number" name="sistemasp2" placeholder=<%= session.getAttribute("sistemasp2")%>></td>
                </tr>
                <tr>
                    <td>Engenharia de Software</td>
                    <td>Renata</td>
                    <td>Quarta-feira</td>
                    <td>15:00 as 18:30</td>
                    <td><input type="number" name="engenhariap1" placeholder=<%= session.getAttribute("engenhariap1")%>></td>
                    <td><input type="number" name="engenhariap2" placeholder=<%= session.getAttribute("engenhariap2")%>></td>
                </tr>
                <tr>
                    <td>Ingl&ecirc;s IV</td>
                    <td>Ulysses</td>
                    <td>Quinta-feira</td>
                    <td>15:00 as 16:40</td>
                    <td><input type="number" name="inglesp1" placeholder=<%= session.getAttribute("inglesp1")%>></td>
                    <td><input type="number" name="inglesp2" placeholder=<%= session.getAttribute("inglesp2")%>></td>
                </tr>
                <tr>
                    <td>Metodologia da Pesquisa Cient&iacude;fico-Tecnol&oacute;gica</td>
                    <td>Allan</td>
                    <td>Quinta-feira</td>
                    <td>16:50 as 18:30</td>
                    <td><input type="number" name="metodologiap1" placeholder=<%= session.getAttribute("metodologiap1")%>></td>
                    <td><input type="number" name="metodologiap2" placeholder=<%= session.getAttribute("metodologiap2")%>></td>
                </tr>
                <tr>
                    <td>Linguagem de Programa&ccedil;&atilde;o IV - INTERNET</td>
                    <td>(Denise)?</td>
                    <td>Sexta-feira</td>
                    <td>13:10 as 16:40</td>
                    <td><input type="number" name="linguagemp1" placeholder=<%= session.getAttribute("linguagemp1")%>></td>
                    <td><input type="number" name="linguagemp2" placeholder=<%= session.getAttribute("linguagemp2")%>></td>
                </tr>
                <input type="submit" name="atualizar" value="Atualizar"/>
            </table>
        </form>
       <%}%>
    </div>
    </body>
</html>
