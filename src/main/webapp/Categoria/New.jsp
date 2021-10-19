<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html>
<head><title>Página Cadastro</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
<form action="/PrimeiroApp/CategoriaGravar" method="post">
	Nome: <input type="text" name="nome" id="nome" 
	value="<c:out value = "${categoria.nome}"/>"  />
<br />
	Codigo: <input type="text" name="codigo" value="<c:out value = "${categoria.codigo}"/>"  id="codigo" />
	<input type="submit" value="Enviar"/>
	<a href="/PrimeiroApp/CategoriaListar">Voltar</a>
</form>
</body>
</html>