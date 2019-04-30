
<%@page import="br.com.fatecpg.randomquiz.model.Ranquing"%>
<%@page import="java.util.Collections"%>
<%@page import="br.com.fatecpg.randomquiz.model.Pontuacao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="br.com.fatecpg.randomquiz.model.Database"%>
<%@page import="br.com.fatecpg.randomquiz.model.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DecimalFormat df = new DecimalFormat("#.##");
    DecimalFormat df2 = new DecimalFormat("0.00");
    double lastGrade = 100.0 * Database.getLastGrade();
    double averageGrade = 100.0 * Database.getGradeAverage();

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
        <%@include file="WEB-INF/jspfs/header.jspf" %>
        <h1>Seja Bem-Vindo "<%=usuario%>" ao Web Quiz </h1>
        <h2>O Teste a seguir contém <u>10</u> perguntas na área da Ciência</h2>

        <% if (request.getParameter("teste") == null) {%>
        <h2>clique <a href="teste.jsp">aqui</a> para iniciar</h2>

        <%}%>
        <div class="row">
            <div class="col-md-6">
                <h3>Última nota:</h3>
                <% if (lastGrade != 0) {%>
                <h4><%= df.format(lastGrade)%>%</h4>
                <%}%>

            </div>
            <div class="col-md-6">
                <h3>Média</h3>
                <% if (averageGrade != 0) {%>
                <h4><%= df.format(averageGrade)%>%</h4>
                <%}%>
            </div>
        </div>
        <hr/>
        <div class="table col-md-12">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th id="titleTable" colspan="2"> <h3>Ranking</h3> </th>
                    </tr>
                    <tr>
                        <th>Pontuação</th>
                        <th>Jogador</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList<Pontuacao> ranking = Pontuacao.ranking;
                        Collections.sort(ranking, new Ranquing());
                        for (Pontuacao score : ranking) {%>
                    <tr>
                        <td><%= df2.format(score.getPontuacao())%></td>
                        <td><%= score.getUser().getNome()%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
        <a href="logout.jsp">Sair</a>
    </body>
</html>

