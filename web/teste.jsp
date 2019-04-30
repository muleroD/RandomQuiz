<%-- 
    Document   : prova
    Created on : 26/04/2019, 10:52:41
    Author     : User
--%>

<%@page import="br.com.fatecpg.randomquiz.model.Pontuacao"%>
<%@page import="br.com.fatecpg.randomquiz.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.randomquiz.model.Database"%>
<%@page import="br.com.fatecpg.randomquiz.model.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try {
        if (request.getParameter("teste") != null) {
            //para o quiz
            Database.validateTest(new String[]{
                request.getParameter("0"),
                request.getParameter("1"),
                request.getParameter("2"),
                request.getParameter("3"),
                request.getParameter("4"),
                request.getParameter("5"),
                request.getParameter("6"),
                request.getParameter("7"),
                request.getParameter("8"),
                request.getParameter("9")
            });
            double pontuacaouser = Database.getLastGrade() * 10;
            String nome = request.getParameter("nomeUsuario");

            //criando jogador
                       
            User u = new User(nome);
            u.setNome(nome);

            //criando pontuaçao
            Pontuacao pontuacao = new Pontuacao();
            
            pontuacao.setPontuacao(pontuacaouser);
            Pontuacao.ranking.add(pontuacao);

            response.sendRedirect("index.jsp");
        }
    } catch (Exception e) {
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
            <% for(Question question : test){%>
            <h2><%=question.getQuestion() %></h2>
            
                <%for(String alternative: question.getAlternatives()) {%>

                   <div class="form-control">
                        <label class="radio">
                            <%String i = String.valueOf(test.indexOf(question));%>
                            <input type="radio" name="<%=i%>" value="<%=alternative%>" required/>
                            <%=alternative%>
                        </label>
                    </div>
            <%}%> 
          <%}%> 
           
           <input type="submit" name="teste" value="Submit"/>
           <input type="hidden" name="nomeUsuário" value=<%=request.getParameter("nome")%>  />
        </form>
        <h3>   <a href="index.jsp">Voltar</a></h3>
    </body>
</html>
