<%-- 
    Document   : prova
    Created on : 30/04/2019, 10:52:41
    Author     : Rodrigo
--%>

<%@page import="br.com.fatecpg.randomquiz.model.Ranking"%>
<%@page import="br.com.fatecpg.randomquiz.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.randomquiz.model.Database"%>
<%@page import="br.com.fatecpg.randomquiz.model.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = "";
    if (session.getAttribute("usuarioLogado") == null) {
        response.sendRedirect("login.jsp");
    } else {
        usuario = session.getAttribute("usuarioLogado").toString();
    }

    if (request.getParameter("btnFinalizaTeste") != null) {
        int total = 0;

        for (Question q : Database.getQuiz()) {
            String resposta = request.getParameter(q.getQuestion());
            if (resposta != null && resposta.equals(q.getAnswer())) {
                total++;
            }
        }

        double med = 10.0 * (total / (double) (Database.getQuiz().size()));
        Database.getRanking().add(new Ranking(usuario, med, 7));
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste</title>
    </head>
    <body>
        <h1>prova</h1>
        <h2>Teste</h2>

        <form action="teste.jsp">
            <%ArrayList<Question> test = Database.getQuiz(); %>
            <% for (Question question : test) {%>
            <h2><%=question.getQuestion()%></h2>

            <%for (String alternative : question.getAlternatives()) {%>

            <div class="form-control">
                <label class="radio">
                    <%String i = String.valueOf(test.indexOf(question));%>
                    <input type="radio" name="<%=i%>" value="<%=alternative%>" required/>
                    <%=alternative%>
                </label>
            </div>
            <%}%> 
            <%}%> 

            <input type="submit" name="btnFinalizaTeste" value="Submit"/>
            <input type="hidden" name="nomeUsuário" value=<%=request.getParameter("nome")%>  />
        </form>
        <h3>   <a href="home.jsp">Voltar</a></h3>
    </body>
</html>
