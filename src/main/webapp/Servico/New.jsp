<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="../css/style.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Servico Salvar</title>
</head>
<body>
<html>
<head><title>P�gina Cadastro</title></head>
<body>
<div class="container">
<form action="/ProjetoCodo/ServicoGravar" method="post">
<label class="form-label">Codigo: </label>
		<input class="form-control" type="text" name="codigo" value="<c:out value = "${servico.codigo}"/>"  id="codigo" required />
    <div class="mb-3">
  <label class="form-label">Data: </label>
	 <input class="form-control" type="text" name="data" id="data"
	value="<c:out value = "${servico.data}"/>" required />
	</div>
<br />
  <div class="mb-3">
   <label class="form-label">Descricao: </label>
	 <input class="form-control" type="text" name="descricao" id="descricao"
	value="<c:out value ="${servico.descricao}"/>" required />
	</div>
<br />
  <div class="mb-3">
   <label class="form-label">Profissional: </label>
	 <input class="form-control" type="text" name="profissional" id="profissional"
	value="<c:out value ="${servico.profissional}"/>" required />
	</div>
	<br><input class="btn btn-primary"  type="submit" value="Enviar"/>
	<a href="/ProjetoCodo/ServicoListar" class="btn btn-warning">Voltar</a>
</form>
</div>
</body>
</html>
