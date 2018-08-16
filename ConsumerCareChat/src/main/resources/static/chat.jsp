<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/sockjs-client/sockjs.min.js"></script>
<script src="/webjars/stomp-websocket/stomp.min.js"></script>
<script src="/app.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid h-100">
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
			<div class="navbar-nav ml-auto">
				<form class="form-inline" th:action="@{/logout}" method="post">
					<button type="submit" class="btn btn-primary">Logout</button>
				</form>
			</div>
		</div>
		</nav>
		<h1>Spring Boot Chat</h1>
		<div id="chat" class="h-100 mb-5 mt-2"></div>
		<div class="row m-2 fixed-bottom">
			<div class="col">
				<form id="chat-form">
					<div class="form-row">
						<input type="text" class="form-control col-9 col-sm-11"
							id="message" placeholder="Your Message ... ">
						<button id="send" type="submit"
							class="btn btn-primary col-3 col-sm-1">Send</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>