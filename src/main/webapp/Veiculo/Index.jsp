<%@page import="java.util.ArrayList"%>
<%@page import="VO.Veiculo"%>
<%@page import="DAO.VeiculoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>                       
<head> <meta charset="ISO-8859-1">
<title>Listar Veiculo</title>  
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">                          
</head>
<body>


<div class="container">
<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link active"  href="Produto/Index.jsp">Produtos</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Categoria/Index.jsp">Categoria</a>
  </li>

   <li class="nav-item">
    <a class="nav-link" href="Fabricante/Index.jsp">Fabricante</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="Veiculo/Index.jsp">Veiculos</a>
  </li> <div>
  </div>


</div>

<form action="/PrimeiroApp/VeiculoListar" method="post">
	<h1>Pesquisar Veiculo</h1>
	 Nome: <input type="text" name="nome" id="nome" />
	<input type="submit" value="Pesquisar"/><br>
	<a href="/PrimeiroApp/Veiculo/New.jsp">Novo Veiculo</a>
</form>
<c:out value = "${msg}"/>
<h1>Veiculos</h1>
		 <table class="table">
		  	<tr>
			    <th>Codigo</th>
			    <th>Marca</th>
			    <th>Nome</th>
		  	</tr>
		  	<c:forEach var="item" items="${lista}" varStatus="contador" >
		  		<tr>
				    <td><c:out value = "${item.codigo}"/></td>
				    <td><c:out value = "${item.marca}"/></td>	
				    <td><c:out value = "${item.nome}"/></td>
				    <td>
				    <c:url value="VeiculoEditar" var="lnkEdicao">
				    	<c:param name="codigo" value="${item.codigo}" />
					</c:url>
					
					<c:url value="VeiculoDeletar" var="lnkDelete">
				    	<c:param name="codigo" value="${item.codigo}" />
					</c:url>
					
					<a href="<c:out value = "${lnkEdicao}"/>">Editar</a>
				    <a href="<c:out value = "${lnkDelete}"/>">Deletar</a>
				    </td>				  
				</tr> 	
				
		  	</c:forEach>
		</table>
</body>
</html>