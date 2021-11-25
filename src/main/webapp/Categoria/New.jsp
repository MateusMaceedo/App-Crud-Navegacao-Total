<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Categoria Salvar</title>
</head>
<body>
<html>
<head><title>P�gina Cadastro</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="../../ProjetoCodo/css/style.css" rel="stylesheet" />
</head>

<body>
<div class="container">
<form action="/ProjetoCodo/CategoriaGravar" method="post">
  <div class="mb-3">
   Nome:</label>
	 <input class="form-control" type="text" name="nome" id="nome"
	value="<c:out value = "${categoria.nome}"/>" required />
	</div>
<br />
		<label class="form-label">Codigo: </label>
		<input class="form-control" type="text" name="codigo" value="<c:out value = "${categoria.codigo}"/>"  id="codigo" required />

	<br><input type="submit" class="btn btn-primary"  value="Enviar"/>
	<a href="/ProjetoCodo/CategoriaListar" class="btn btn-warning">Voltar</a>
</form>
</div>
</body>
</html>
