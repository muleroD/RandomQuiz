<%-- 
    Document   : logout
    Created on : 29/04/2019, 17:44:23
    Author     : Mulero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
