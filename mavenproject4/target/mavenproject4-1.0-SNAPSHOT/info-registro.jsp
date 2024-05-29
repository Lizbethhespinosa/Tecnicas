<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@page import="com.mycompany.model.Cliente"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
</head>
<body>
    <div>
        <h1>Nombre: <%= ((Cliente) request.getAttribute("cliente")).getPrimer_nombre() %></h1>
    </div>
</body>
</html>