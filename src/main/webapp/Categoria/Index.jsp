<%@page import="java.util.ArrayList"%>
<%@page import="VO.Categoria"%>
<%@page import="DAO.CategoriaDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head> <meta charset="ISO-8859-1">
<title>Lista Categoria</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="../../APP-CRUD-NAVEGACAO-TOTAL/css/style.css" rel="stylesheet" />
</head>
<body>
<div class="container">
<ul class="nav justify-content-center">
	<li class="nav-item">
    <a class="nav-link" href="../../APP-CRUD-NAVEGACAO-TOTAL/index.jsp">Home</a>
  	</li>
  <li class="nav-item">
    <a class="nav-link active"  href="../../APP-CRUD-NAVEGACAO-TOTAL/Produto/Index.jsp">Produtos</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="../../APP-CRUD-NAVEGACAO-TOTAL/Categoria/Index.jsp">Categoria</a>
  </li>

   <li class="nav-item">
    <a class="nav-link" href="../../APP-CRUD-NAVEGACAO-TOTAL/Fabricante/Index.jsp">Fabricante</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="../../APP-CRUD-NAVEGACAO-TOTAL/Veiculo/Index.jsp">Veiculos</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="../../APP-CRUD-NAVEGACAO-TOTAL/Servico/Index.jsp">Servicos</a>
  </li>

  </ul>
  </div>

<div class="container-sm" align="center">
<form action="/APP-CRUD-NAVEGACAO-TOTAL/CategoriaListar" class="row g-3" method="post">
	<h1 align="center">Pesquisar Categorias</h1>
	Nome da Categoria:
	  <input class="form-control" type="text" name="nome" id="nome" />
	<input type="submit" class="btn btn-success" value="Pesquisar"/><br><br>
<a class="btn btn-primary" href="/APP-CRUD-NAVEGACAO-TOTAL/Categoria/New.jsp">Nova Categoria</a><br><br>
</form>
<c:out value = "${msg}"/>
</div>
<div class="container-sm" align="center">
<h1>Categorias</h1>
		 <table class="table table-striped">
		  	<tr>
			    <th scope="col">Codigo</th>
			    <th scope="col">Nome</th>
			  <th> </th>

		  	</tr>
		  	<c:forEach var="item" items="${lista}" varStatus="contador" >
		  		<tr>
				    <td><c:out value = "${item.codigo}"/></td>
				    <td><c:out value = "${item.nome}"/></td>
				    <td>
				    <c:url value="CategoriaEditar" var="lnkEdicao">
				    	<c:param name="codigo" value="${item.codigo}" />
					</c:url>
					<c:url value="CategoriaDeletar" var="lnkDelete">
				    	<c:param name="codigo" value="${item.codigo}" />
					</c:url>

					<a class="btn btn-warning" href="<c:out value = "${lnkEdicao}"/>">Editar</a>
				    <a class="btn btn-dark" href="<c:out value = "${lnkDelete}"/>">Deletar</a>
				    </td>
				</tr>
		  	</c:forEach>
		</table>
		</div>
</body>
</html>
