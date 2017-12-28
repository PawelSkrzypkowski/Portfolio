<%@page import="pl.pawelskrzypkowski.model.Project"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	LinkedList<Project> list = (LinkedList<Project>) request.getAttribute("projects");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Portfolio programisty - Paweł Skrzypkowski. Dowiedz się o mnie więcej!">
<meta name="keywords" content="portfolio, progrmaiasta, java, php, css, html">
<meta name="author" content="Paweł Skrzypkowski">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="icon.ico">
<title>Portfolio programisty - Paweł Skrzypkowski | O mnie</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.min.css" rel="stylesheet">
</head>
<body style="margin: 0 auto;">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<ul class="nav navbar-nav navbar-left">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">Menu<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="index.jsp">HOME</a></li>
					<li><a href="MeServlet">O MNIE</a></li>
					<li><a href="CvServlet">CV</a></li>
					<li role="separator" class="divider"></li>
					<li class="active"><a href="ProjectServlet">PROJEKTY</a></li>
					<li><a href="mwsi">CEPIK</a></li>
				</ul></li>
		</ul>
		<div class="navbar-header navbar-right">
			<a class="navbar-brand" href="#"> PAWEŁ SKRZYPKOWSKI <i>PROGRAMISTA</i></a>
		</div>
	</div>
	</nav>	
	<div class="container" style="font-family: 'din-next'; margin-bottom:50px;">
				<%
				String link, git;
				for(int i=0; i<list.size(); i++){
					if(i%2 == 0){
				%>
				<div class="row">
					<div class="col-sm-0 col-md-1"></div>
				<% } %>
				<div class="col-sm-12 col-md-4">
					<div class="thumbnail">
					<%
					if(list.get(i).getSourcePath().length == 1) {
						git = list.get(i).getSourcePath()[0];
						link = list.get(i).getSourcePath()[0];
					} else {
						git = list.get(i).getSourcePath()[0];
						link = list.get(i).getSourcePath()[1];
					}%>
				      <a href="<%= link %>" target="_blank"><img border="0" alt="<%= list.get(i).getTitle() %>" src="<%= list.get(i).getImagePath() %>" style="height: 100%; width: 100%; object-fit: contain"></a>
				      <div class="caption">
				        <h3><a href="<%= link %>" target="_blank"><%= list.get(i).getTitle() %></a></h3>
				        <p><%= list.get(i).getDescr() %></p>
				        <%
				        	if(list.get(i).getSourcePath().length > 1){
				        %>
				        	<p><a href="<%= git %>" target="_blank">GitHub</a></p>
				        <%	} %>
				      </div>
				    </div>
				 <% 
				 if(i%2 == 1){
				 %>
				 </div>
				 <% } %>
				 </div>
				<% } %>
	</div>
	<footer class="navbar navbar-default navbar-fixed-bottom">
		<div class="container">
			<p class="navbar-text">
				© 2017 Portfolio - Paweł Skrzypkowski</a>
			</p>
		</div>
	</footer>
</body>
</html>