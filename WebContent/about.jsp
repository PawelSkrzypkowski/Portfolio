<%@page import="pl.pawelskrzypkowski.model.Me"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Me me = (Me) request.getAttribute("aboutMe");
	String email = (String) request.getAttribute("email");
	boolean isMessage = true;
	if(email == null || email.equals(""))
		isMessage = false;
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
			<div id="header">O MNIE</div>
			<div class="break"></div>
			<div id="me2">
				Kilka słów o mnie:<br />
				<%=me.getMe()%></div>
		</div>

		<div class="column">
			<div id="header">KONTAKT</div>
			<div class="break"></div>
			<div id="me2">
				pawlo133438@gmail.com<br /> +48 507 748 588<br /> Warszawa - Wola<br />
				<form action="EmailServlet" method="post" style="margin-top:20px">
					<input placeHolder="Imię i nazwisko" type="text" name="name" style="border:1px solid black; margin-bottom:6px;" required> <br>
					<input placeHolder="Email" type="email" name="email" style="border:1px solid black; margin-bottom:6px;" required> <br>
					<input placeHolder="Temat" type="text" name="title" style="border:1px solid black; margin-bottom:6px;" required> <br>
					<textarea placeHolder="Treść wiadomości" name="text" rows="4" cols="50" style="border:1px solid black; margin-bottom:6px;" required></textarea>
					<input type="submit" value="Wyślij" style="background-color: #000000; color:#ffffff; border: none">
					<%
					if(isMessage){
					%>
					<%= email %>
					<% } %>
				</form>
			</div>
		</div>
	</div>
	<div class="line"></div>
	<div id="foot">© 2017 Portfolio - Paweł Skrzypkowski</div>
</body>
</html>