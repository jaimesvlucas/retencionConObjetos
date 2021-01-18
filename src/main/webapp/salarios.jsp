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
        <%--@page import="clases.Salario"--%>
        <jsp:useBean id="miSalario" class="clases.Salario"/>
        <% 
           String nombre=request.getParameter("nombre");
           float salario= Float.parseFloat(request.getParameter("salario"));
           //Salario s = new Salario(nombre, salario);
           //s.setRetencion(s.calcularCuotaRetencion());
           //s.setSalarioNeto(s.calcularSalarioNeto());
        %>
        <jsp:setProperty name="miSalario" property="nombre" value="<%=nombre%>"/>
        <jsp:setProperty name="miSalario" property="salario" value="<%=salario%>"/>
        <p>El salario neto de <jsp:getProperty name='miSalario' property="nombre" />
        es <jsp:getProperty name='miSalario' property="salarioNeto" />, tiene una retencion de 
        <jsp:getProperty name='miSalario' property="porcentaje" />% y su salario bruto es de 
        <jsp:getProperty name='miSalario' property="salario" />
        </p>

        <a href="index.jsp">Volver al index</a>
    </body>
</html>
