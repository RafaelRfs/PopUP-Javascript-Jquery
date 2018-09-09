
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.lang.String,java.util.ArrayList, Beans.Servs, admsiterfs.DaoService"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript" src='<c:url value="/js/jquery.min.js"/>'></script>
<script type="text/javascript" src='<c:url value="/js/site2.js"/>'></script>
<html>
<header>
<meta charset="utf-8"/>
<title>GetProjects</title>
</header>
<body>
<%
String nome = request.getParameter("s") == null ?  ""  : request.getParameter("s") ;
ArrayList<Servs> nomes = new DaoService().READ(nome);
%> 


<form>

<table style="width:100%;border:1px solid #000; padding:5px;">
<tr>
<td colspan=3>
<form action="" method="GET">
<input type="text" placeholder="Pesquisar..." name="s" style="width:65%;padding:2px; padding-left:5px; padding-right:5px;" />
<input type="submit" value="pesquisar">
</form> 
</td>
</td>
</tr>

<tr>
<td>Nome:</td> 
<td>Descrição</td>
<td><input type="checkbox" onclick="javascript:selecionaTodos()" title="Selecionar Todos"></td>
</tr>

<%for(Servs srv : nomes ){%>
<tr>
<td><%=srv.getNome()%></td>
<td><%=srv.getConteudo()%></td>
<td><input type="checkbox" name="projeto" value="<%=srv.getId()+"-"+srv.getNome()%>"></td>
</tr>
<%}%>
</table>
<input type="button" onclick="closeWindow()" value="Selecionar"/>
</form>
<hr/>
<p>teste 2</p>
<input type="radio" name="projeto2" value="teste"> Teste <br>
<input type="radio" name="projeto2" value="teste2"> Teste 2<br>
<input type="radio" name="projeto2" value="teste3"> Teste 3<br>
<input type="button" onclick="closeWindow2()" value="Selecionar2"/>
</body>
</html>
