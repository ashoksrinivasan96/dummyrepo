<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-primary">
	<a class="navbar-brand" href="/">Spring Boot Chat</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link active" href="/">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link active" href="/chat">Chat</a>
			</li>
		</ul>
	</div>
	</nav>
	<div class="container">
		<h1>Spring Boot Chat</h1>
		<form class="form mt-4" th:action="@{/}" th:object="${user}"
			method="post">
			<div class="form-group">
				<label>Enter a username:</label> <input type="text"
					class="form-control" th:field="*{username}" placeholder="username">
			</div>
			<button id="connect" type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>