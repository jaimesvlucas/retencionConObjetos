<%-- 
    Document   : salarios
    Created on : 18 ene. 2021, 19:58:18
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="clases.Salario"%>
        <% 
           String nombre=request.getParameter("nombre");
           float salario= Float.parseFloat(request.getParameter("salario"));
           Salario s = new Salario(nombre, salario);
           s.setRetencion(s.calcularCuotaRetencion());
           s.setSalarioNeto(s.calcularSalarioNeto());
        %>
        <p>El salario neto de <%= s.getNombre() %> es <%= s.getSalarioNeto() %> , tiene una retencion de <%= s.getPorcentaje() %>% y su salario bruto es de <%= s.getSalario() %></p>

        <a href="index.jsp">Volver al index</a>
    </body>
</html>
