<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fabricante Salvar here</title>
</head>
<body>
<html>
<head><title>P�gina Cadastro</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="../../APP-CRUD-NAVEGACAO-TOTAL/css/style.css" rel="stylesheet" />
</head>
<body>
<div class="container">
<form action="/APP-CRUD-NAVEGACAO-TOTAL/FabricanteGravar" method="post">
  <div class="mb-3">
   Nome:</label>
	 <input class="form-control" type="text" name="nome" id="nome"
	value="<c:out value = "${fabricante.nome}"/>"required  />
	</div>
<br />
		<label class="form-label">Codigo: </label>
		<input class="form-control" type="text" name="codigo" value="<c:out value = "${fabricante.codigo}"/>"  id="codigo" required />

	<br><input  class="btn btn-primary"  type="submit" value="Enviar"/>
	<a href="/APP-CRUD-NAVEGACAO-TOTAL/FabricanteListar" class="btn btn-warning">Voltar</a>
</form>
</div>
</body>
</html>
