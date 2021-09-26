<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bem vindo</title>
</head>
<body>
<%
	String usuario = (String) session.getAttribute("usuario");
	if(usuario == null){
		response.sendRedirect("login.jsp");
	}
	else{
		out.print("Bem vindo, " + usuario + "</br>");
	}

%>

	<h1>Gulliver Traveller</h1> </br>
	<a href="deslogar.jsp">Deslogar</a>
</body>
</html>