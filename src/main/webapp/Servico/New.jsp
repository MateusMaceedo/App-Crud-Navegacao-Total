<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">  
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html>
<head><title>Página Cadastro</title></head>
<body>
<form action="/PrimeiroApp/ServicoGravar" method="post">
	Codigo: <input type="text" name="codigo" id="codigo" 
	value="<c:out value = "${servico.codigo}"/>"  />
<br />
	Data: <input type="text" name=data" id="data"  
	value="<c:out value = "${servico.data}"/>" />
<br />
	Descricao: <input type="text" name="descricao" value="<c:out value = "${servico.descricao}"/>"  id="descricao" />
<br />
	Profissional: <input type="text" name="profissional" id="profissional"  
	value="<c:out value = "${servico.profissional}"/>" />
	<input type="submit" value="Enviar"/>
	<a href="/PrimeiroApp/ServicoListar">Voltar</a>
</form>
</body>
</html>