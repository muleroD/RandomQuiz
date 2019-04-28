<%-- 
    Document   : index
    Created on : 25/04/2019, 10:04:07
    Author     : Mulero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String usuario = "";
    HttpSession sessao = request.getSession();

    if (sessao.getAttribute("usuarioLogado") == null) {
        response.sendRedirect("login.jsp");
    } else {
        usuario = sessao.getAttribute("usuarioLogado").toString();
    }

    if (request.getParameter("btnLogout") != null) {
        sessao.invalidate();
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - RandomQuiz</title>
    </head>
    <body>
        <h1>Random Quiz</h1>
        <h2>Bem vindo <%=usuario%></h2>

        <!--Apresentar uma tabela com os ultimos 10 testes-->

        <form><input type="submit" name="btnLogout" value="Sair"/></form>
    </body>
</html>
