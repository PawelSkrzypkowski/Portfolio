<%@page import="pl.pawelskrzypkowski.model.Project"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	LinkedList<Project> list = Project.getProjectsList();
	int halfSize = list.size() / 2;
	if(list.size() % 2 == 1)
		halfSize++;
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
</head>
<body>
	<div id="menu">
		<a href="index.jsp">HOME</a> <a href="MeServlet">O MNIE</a> <a
			href="CvServlet">CV</a> <a href="ProjectServlet">PROJEKTY</a>
	</div>
	<div class="line"></div>
	<div class="break"></div>
	<div id="content">
		<div class="column">
			<div class="break"></div>
			<div id="me2">
				<%
				for(int i=0; i<halfSize; i++){
				%>
					<div class="header2"><%= list.get(i).getTitle() %></div><br/>
					<a href="<%= list.get(i).getSourcePath() %>" target="_blank"><img border="0" alt="<%= list.get(i).getTitle() %>" title="<%= list.get(i).getDescr() %>" src="<%= list.get(i).getImagePath() %>" style="height: 100%; width: 100%; object-fit: contain"></a>
					<div class="break"></div>
				<% } %>
			</div>
		</div>

		<div class="column">
			<div class="break"></div>
			<div id="me2">
				<%
				for(int i=halfSize; i<list.size(); i++){
				%>
					<div class="header2"><%= list.get(i).getTitle() %></div><br/>
					<div style="width:100%; height: width"><a href="<%= list.get(i).getSourcePath() %>" target="_blank"><img border="0" alt="<%= list.get(i).getTitle() %>" title="<%= list.get(i).getDescr() %>" src="<%= list.get(i).getImagePath() %>" style="max-height: 100%; max-width: 100%; vertical-align: middle"></a></div>
					<div class="break"></div>
				<% } %>
			</div>
		</div>
	</div>
	<div class="line"></div>
	<div id="foot">© 2017 Portfolio - Paweł Skrzypkowski</div>
</body>
</html>