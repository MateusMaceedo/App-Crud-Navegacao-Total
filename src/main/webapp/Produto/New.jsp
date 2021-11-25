<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produto Salvar</title>
</head>
<body>
<html>
<head><title>P�gina Cadastro</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="../../ProjetoCodo/css/style.css" rel="stylesheet" />
</head>
<body>
<div class="container-sm">
<form action="/ProjetoCodo/Cadastro" method="post">
<label class="form-label">Codigo: </label>
		<input class="form-control" type="text" name="codigo" value="<c:out value = "${produto.codigo}"/>"  id="codigo" required />
  <label class="form-label">Marca: </label>
	 <input class="form-control" type="text" name="marca" id="marca"
	value="<c:out value = "${produto.marca}"/>"  required />
   <label class="form-label">Nome: </label>
	 <input class="form-control" type="text" name="nome" id="nome"
	value="<c:out value ="${produto.nome}"/>"   required/><br>

	<input class="btn btn-primary"  type="submit" value="Enviar"/>
	<a href="/ProjetoCodo/ListaCadastro" class="btn btn-warning">Voltar</a></br>
</form>
</div>
</body>
</html>
