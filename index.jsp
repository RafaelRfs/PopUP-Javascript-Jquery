
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.lang.String, Beans.Servs"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript" src='<c:url value="/js/jquery.min.js"/>'></script>
<script type="text/javascript" src='<c:url value="/js/page.js"/>'></script>
<ul>
<form action="atualizaServ" method="POST">

<c:url value="/imgs/lupa.png" var="pesquisa" />
<li>Projeto<input type="text" name="projetos" id="projetos" readonly/> 
<img src="${pesquisa}" style="cursor:pointer;width:50px;height:50px;" onclick="getProjects()">

<li>Projeto2<input type="text" name="projetos2" id="projetos2" readonly/> 
<img src="${pesquisa}" style="cursor:pointer;width:50px;height:50px;" onclick="getProjects()">
</li>

<input type="submit" value="Salvar"/>

</ul>
</form>
