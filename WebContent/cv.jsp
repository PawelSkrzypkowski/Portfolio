<%@page import="pl.pawelskrzypkowski.model.Cv"%>
<%@page import="pl.pawelskrzypkowski.model.Project"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Cv cv = (Cv) request.getAttribute("cv");
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
<title>Portfolio programisty - Paweł Skrzypkowski | CV</title>
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
					<li class="active"><a href="CvServlet">CV</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="ProjectServlet">PROJEKTY</a></li>
				</ul></li>
		</ul>
		<div class="navbar-header navbar-right">
			<a class="navbar-brand" href="#"> PAWEŁ SKRZYPKOWSKI <i>PROGRAMISTA</i></a>
		</div>
	</div>
	</nav>
	<div class="container" style="font-family: 'din-next';">
		<div class="row">
		<div class="col-sm-0 col-md-1"></div>
			<div class="col-sm-12 col-md-4">
				<div class="thumbnail">
					<div class="caption">
						<h3>CV</h3>
						<h4><u><%= cv.getName() %></u></h4>
						<%= cv.getEmail() %><br/>
						<%= cv.getPhone() %><br/>
						<%= cv.getBirthDate() %><br/>
						<%= cv.getCountry() %><br/>
						<%= cv.getCity() %><br/>
						<p><%= cv.getAim() %></p>
						<div class="break"></div>
						<h4><u>Umiejętności</u></h4>
						<% for(String s : cv.getSkills()){ %>
						<%= s %><br/>
						<% } %>
					<div class="break"></div>
					<h4><u>Wykształcenie</u></h4>
					<% for(String s : cv.getEducation()){ %>
						<%= s %><br/>
					<% } %>
					<div class="break"></div>
					<h4><u>Doświadczenie</u></h4>
					<% for(String s : cv.getExperience()){ %>
					<%= s %><br/>
					<% } %>
					<div class="break"></div>
					<h4><u>Znajomość języków obcych</u></h4>
					<% for(String s : cv.getLanguages()){ %>
					<%= s %><br/>
					<% } %>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4">
				<div class="thumbnail">
					<div class="caption">
						<div class="break"></div>
						<h4><u>Projekty</u></h4>
						<% for(Project p : cv.getProjects()){ %>
							<br/><b><%= p.getTitle() %>: </b>
							<%= p.getDescr() %><br/>
							<%if(!p.getSourcePath().equals("#")){ %>
							Link: <a href="<%= p.getSourcePath() %>" target="_blank">GitHub</a><br/>
						<% } }%>
						<h4><u>Zainteresowania</u></h4>
						<p><%= cv.getHobby() %></p>
						<% for(Map.Entry<String, String> entry : cv.getSocialLinks().entrySet()){ %>
						<p><b><%=entry.getKey() %> </b><a href="<%= entry.getValue() %>" target="_blank">link</a></p>
						<% } %>
						<p><a target="_blank" href="cv-pawel-skrzypkowski.pdf" style="background-color: #000000; color: #ffffff; border: 7px solid #000000;">Pobierz CV</a>
						<a target="_blank" href="cv-pawel-skrzypkowski-english.pdf" style="background-color: #000000; color: #ffffff; border: 7px solid #000000; margin-left: 20px;">Download CV</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="navbar navbar-default navbar-static-bottom">
		<div class="container">
			<p class="navbar-text">
				© 2017 Portfolio - Paweł Skrzypkowski</a>
			</p>
		</div>
	</footer>
</body>
</html>