<%-- 
    Document   : signIn
    Created on : 30/04/2019, 16:26:30
    Author     : Mulero
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.randomquiz.model.User"%>
<%@page import="br.com.fatecpg.randomquiz.model.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String aux = "";
    String user = request.getParameter("txtUser");

    if (request.getParameter("btnCadastro") != null) {
        if (request.getParameter("txtUser") != "") {

            User newUser = new User();
            newUser.setNome(user);

            Database.getUsers().add(newUser);
            session.setAttribute("usuarioLogado", user);

            response.sendRedirect("home.jsp");

        } else {
            aux = "Campo usuário vazio";
        }
    } else if (session.getAttribute("usuarioLogado") != null) {
        response.sendRedirect("home.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
    </head>
    <body>
        <h1>Digite seu nome de usuário</h1>
        <form>
            <input type="text" name="txtUser"/>
            <input type="submit" name="btnCadastro" value="Cadastrar"/>
        </form>
        <br>
        <h3 style="color: red;"><%=aux%></h3>
    </body>
</html>
