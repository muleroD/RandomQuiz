<%-- 
    Document   : index
    Created on : 30/04/2019, 16:24:51
    Author     : Mulero
--%>

<%@page import="br.com.fatecpg.randomquiz.model.Ranking"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="br.com.fatecpg.randomquiz.model.Database"%>
<%@page import="br.com.fatecpg.randomquiz.model.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String usuario = "";
    if (session.getAttribute("usuarioLogado") == null) {
        response.sendRedirect("login.jsp");
    } else {
        usuario = session.getAttribute("usuarioLogado").toString();
    }
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspfs/head.jspf" %>
        <title>Home</title>
    </head>
    <body>
        <a href="logout.jsp">Sair</a>

        <h1>Seja Bem-Vindo "<%=usuario%>" ao Web Quiz </h1>
        <h2>O Teste a seguir contém <u>10</u> perguntas na área da Ciência</h2>

        <% if (request.getParameter("teste") == null) {%>
        <h2>clique <a href="teste.jsp">aqui</a> para iniciar</h2>
        <%}%>

        <hr/>

        <table>
            <h2>Ranking Geral</h2>
            <tbody><%
                for (Ranking r : Ranking.orderByResult(Database.getRanking())) {%>
                <tr>
                    <td><%= r.getUser()%></td>
                    <td><%= r.getResult()%></td>
                </tr>
                <% }%>
            </tbody>
        </table>

        <hr/>


        <table>
            <h2>Ultimos feitos</h2>
            <tbody><%
                for (Ranking r : Ranking.orderById(Database.getRanking())) {%>
                <tr>
                    <td><%= r.getUser()%></td>
                    <td><%= r.getResult()%></td>
                </tr>
                <% }%>
            </tbody>
        </table>


    </body>
</html>

