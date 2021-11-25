<%@page import="java.util.ArrayList"%>
<%@page import="VO.Servico"%>
<%@page import="DAO.ServicoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head> <meta charset="ISO-8859-1">
<title>Listar Servicos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" />
<link href="../../ProjetoCodo/css/style.css" rel="stylesheet" />
</head>
<body>
<div class="container">
<ul class="nav justify-content-center">
	<li class="nav-item">
    <a class="nav-link" href="../../ProjetoCodo/index.jsp">Home</a>
  	</li>
  <li class="nav-item">
    <a class="nav-link active"  href="../../ProjetoCodo/Produto/Index.jsp">Produtos</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="../../ProjetoCodo/Categoria/Index.jsp">Categoria</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="../../ProjetoCodo/Fabricante/Index.jsp">Fabricante</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="../../ProjetoCodo/Veiculo/Index.jsp">Veiculos</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="../../ProjetoCodo/Servico/Index.jsp">Servicos</a>
  </li>
  </ul>
  </div>

<div class="container-sm" align="center">
<form action="/ProjetoCodo/ServicoListar"  class="row g-3" method="post">
	<h1>Pesquisar Servico</h1>
	 Descricao: <input type="text" class="form-control" name="descricao" id="descricao" />
	<input class="btn btn-success"  type="submit" value="Pesquisar"/><br><br>
	<a class="btn btn-primary" href="/ProjetoCodo/Servico/New.jsp">Novo Servico</a>
</form></div>
<div class="container-sm" align="center">
<c:out value = "${msg}"/>
<h1>Servico</h1>
		 <table class="table table-striped">
		  	<tr>
			    <th>Codigo</th>
			    <th>Data</th>
			    <th>Descricao</th>
			    <th>Profissioanl</th>
			     <th></th>
		  	</tr>
		  	<c:forEach var="item" items="${lista}" varStatus="contador" >
		  		<tr>
				    <td><c:out value = "${item.codigo}"/></td>
				    <td><c:out value = "${item.data}"/></td>
				    <td><c:out value = "${item.descricao}"/></td>
				    <td><c:out value = "${item.profissional}"/></td>
				    <td>
				    <c:url value="ServicoEditar" var="lnkEdicao">
				    	<c:param name="codigo" value="${item.codigo}" />
					</c:url>
					<c:url value="ServicoDeletar" var="lnkDelete">
				    	<c:param name="codigo" value="${item.codigo}" />
					</c:url>
					<a class="btn btn-warning" href="<c:out value = "${lnkEdicao}"/>">Editar</a>
				    <a class="btn btn-dark" href="<c:out value = "${lnkDelete}"/>">Deletar</a>
				    </td>
				</tr>
		  	</c:forEach>
		</table>
		</div>
		  </div>
		</div>
</body>
</html>
