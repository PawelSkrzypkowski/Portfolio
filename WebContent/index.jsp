<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Portfolio programisty - Paweł Skrzypkowski</title>
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
					<li class="active"><a href="index.jsp">HOME</a></li>
					<li><a href="MeServlet">O MNIE</a></li>
					<li><a href="CvServlet">CV</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="ProjectServlet">PROJEKTY</a></li>
					<li><a href="mwsi">CEPIK</a></li>
				</ul></li>
		</ul>
		<div class="navbar-header navbar-right">
			<a class="navbar-brand" href="#"> PAWEŁ SKRZYPKOWSKI <i>PROGRAMISTA</i></a>
		</div>
	</div>
	</nav>


	<div class="container" style="font-family: 'din-next'; margin-bottom:50px;">
		<div class="row">
			<div class="col col-md-4 col-sm-0"></div>
			<div class="col col-md-4 col-sm-12">
				<img class="img-responsive" src="images/logo.jpg" />
			</div>
		</div>
		<div class="row">
			<div class="col col-md-3 col-sm-0"></div>
			<div class="col col-md-6 col-sm-12">
				<div class="line"></div>
				<div class="break"></div>
			</div>
		</div>
		<div class="row">
			<div class="col col-md-4 col-sm-0"></div>
			<div class="col col-md-4 col-sm-12">Witaj na mojej stronie!
				Nazywam się Paweł Skrzypkowski i odkąd pamiętam interesowałem się
				komputerami i informatyką. Już w gimnazjum zacząłem tworzyć własne
				strony internetowe, a nawet grę przeglądarkową opartą o PHP. Z
				czasem zacząłem interesować się językiem JAVA i to w tym języku
				staram się obecnie rozwijać.</div>
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