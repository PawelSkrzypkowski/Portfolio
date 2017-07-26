<%@page import="pl.pawelskrzypkowski.model.Cv"%>
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
			<div id="header">CV</div>
			<div class="line"></div>
			<div class="break"></div>
			<div id="me2">
				<div class="header2"><%= cv.getName() %></div><br/>
				Email: <%= cv.getEmail() %><br/>
				Telefon: <%= cv.getPhone() %><br/>
				Data urodzenia: <%= cv.getBirthDate() %><br/>
				Kraj zamieszkania: <%= cv.getCountry() %><br/>
				Miasto: <%= cv.getCity() %><br/>
				<div class="break"></div>
				<div class="header2">Wykształcenie</div><br/>
				<% for(String s : cv.getEducation()){ %>
					<%= s %><br/>
				<% } %>
				<div class="break"></div>
				<div class="header2">Doświadczenie</div><br/>
				<% for(String s : cv.getExperience()){ %>
				<%= s %><br/>
				<% } %>
				<div class="break"></div>
				<div class="header2">Znajomość języków obcych</div><br/>
				<% for(String s : cv.getLanguages()){ %>
				<%= s %><br/>
				<% } %>
			</div>
		</div>

		<div class="column">
			<div class="break"></div>
			<div id="me2">
				<div class="header2">Umiejętności</div><br/>
					<% for(String s : cv.getSkills()){ %>
					<%= s %><br/>
					<% } %>
				<div class="break"></div>
				<div class="header2">Zainteresowania</div><br/>
					<%= cv.getHobby() %>
					<p><a target="_blank" href="cv-pawel-skrzypkowski.pdf" style="background-color: #000000; color: #ffffff; border: 7px solid #000000;">Pobierz CV</a>
					<a target="_blank" href="cv-pawel-skrzypkowski-english.pdf" style="background-color: #000000; color: #ffffff; border: 7px solid #000000; margin-left: 20px;">Download CV</a>
					</p>
			</div>
		</div>
	</div>
	<div class="line"></div>
	<div id="foot">© 2017 Portfolio - Paweł Skrzypkowski</div>
</body>
</html>