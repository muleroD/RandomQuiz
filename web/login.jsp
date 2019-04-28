<%-- 
    Document   : login
    Created on : 28/04/2019, 13:23:03
    Author     : Mulero
--%>

<%@page import="br.com.fatecpg.randomquiz.model.User"%>
<%@page import="br.com.fatecpg.randomquiz.model.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String aux = "";
    String user = request.getParameter("txtUser");
    HttpSession sessao = request.getSession();

    if (request.getParameter("btnLogin") != null) {
        if (request.getParameter("txtUser") != "") {
            for (User u : Database.getUsers()) {
                if (u.getNome().equals(user)) {
                    aux = "Entrando";
                    sessao.setAttribute("usuarioLogado", user);
                    response.sendRedirect("home.jsp");
                } else {
                    aux = "Usuário não encontrado";
                }
            }
        } else {
            aux = "Usuário vazio";
        }
    } else if (sessao.getAttribute("usuarioLogado") != null) {
        response.sendRedirect("home.jsp");
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - RandomQuiz</title>
    </head>
    <body>
        <h1>Login</h1>

        <form>
            Usuário: <input type="text" name="txtUser">

            <input type="submit" name="btnLogin" value="Entrar"/>
        </form>

        <h3 style="color: red;"><%=aux%></h3>
    </body>
</html>
