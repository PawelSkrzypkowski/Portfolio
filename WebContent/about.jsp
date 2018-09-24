<%@page import="pl.pawelskrzypkowski.model.Me"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Me me = (Me) request.getAttribute("aboutMe");
	String email = (String) request.getAttribute("email");
	boolean isMessage = true;
	if (email == null || email.equals(""))
		isMessage = false;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Portfolio programisty - Paweł Skrzypkowski. Dowiedz się o mnie więcej!">
<meta name="keywords"
	content="portfolio, progrmaiasta, java, php, css, html">
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
					<li class="active"><a href="MeServlet">O MNIE</a></li>
					<li><a href="CvServlet">CV</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="ProjectServlet">PROJEKTY</a></li>
					<li><a href="mwsi">CEPIK</a></li>
					<li><a href="szpital">System rejestracji w szpitalu</a></li>
				</ul></li>
		</ul>
		<div class="navbar-header navbar-right">
			<a class="navbar-brand" href="#"> PAWEŁ SKRZYPKOWSKI <i>PROGRAMISTA</i></a>
		</div>
	</div>
	</nav>
	<div class="container" style="font-family: 'din-next'; margin-bottom:50px;">
		<div class="row">
		<div class="col-sm-0 col-md-1"></div>
			<div class="col-sm-12 col-md-4">
				<div class="thumbnail">
					<div class="caption">
						<h3>O MNIE</h3>
						<p><%=me.getMe()%></p>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4">
				<div class="thumbnail">
					<div class="caption">
						<h3>KONTAKT</h3>
						pawel.skrzypkowski@outlook.com<br/>
						+48 507 748 588<br/>
						Warszawa - Wola
						<p>
							<div class="form-group">
								<form action="EmailServlet" method="post" style="margin-top: 20px">
									<input placeHolder="Imię i nazwisko" type="text" name="name"
										style="border: 1px solid black; margin-bottom: 6px;" required>
									<br> <input placeHolder="Email" type="email" name="email"
										style="border: 1px solid black; margin-bottom: 6px;" required>
									<br> <input placeHolder="Temat" type="text" name="title"
										style="border: 1px solid black; margin-bottom: 6px;" required>
									<br>
									<textarea placeHolder="Treść wiadomości" name="text" class="form-control" rows="5" style="border: 1px solid black; margin-bottom: 6px;"
										required></textarea>
									<input type="submit" value="Wyślij"
										style="background-color: #000000; color: #ffffff; border: none">
									<%
										if (isMessage) {
									%>
									<%=email%>
									<%
										}
									%>
								</form>
							</div>
						</p>
					</div>
				</div>
			</div>
		</div>
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