<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Traveller - LOGIN</title>
</head>
<body>
	<form action="Login.jsp" method="post">
	Usu�rio: </br> <input type="text" name="usuario"/> </br>
	Senha: </br> <input type="password" name="senha"/> </br>
	<input type="submit" value="Logar">
	</form>
	<%
	String usuario = request.getParameter("usuario");
	String senha = request.getParameter("senha");
	
	if(usuario!=null && senha!=null && !usuario.isEmpty() && !senha.isEmpty()){
		session.setAttribute("usuario", usuario);
		response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>