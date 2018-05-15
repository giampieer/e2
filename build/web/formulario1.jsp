<%-- 
    Document   : formulario1
    Created on : 14/05/2018, 05:19:15 PM
    Author     : TOSHIBA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
    String zone = null;
    String price = null;
%>
<%
    zone = (String)request.getAttribute("zone");
    price = (String)request.getAttribute("price");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario1</title>
    </head>
    <body>
        <h1>Ingrese su DNI</h1>
        <form method="POST" action="<%=request.getContextPath()%>/PaymentController?op=2">
            <input type="number" name="dni" value="" required/><br/>
            <input type="hidden" name="zone" value="<%=zone%>"/><br>
            <input type="hidden" name="price" value="<%=price%>"/><br>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
