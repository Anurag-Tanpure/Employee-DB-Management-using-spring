<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Error Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f8d7da;
	text-align: center;
	padding: 50px;
}

.error-container {
	background: #fff;
	padding: 30px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	display: inline-block;
}

.error-icon {
	font-size: 50px;
	color: red;
	animation: pop 0.5s ease-in-out;
}

@
keyframes pop { 0% {
	transform: scale(0.5);
	opacity: 0;
}

100
%
{
transform
:
scale(
1
);
opacity
:
1;
}
}
.error-message {
	font-size: 20px;
	margin-top: 10px;
	color: #721c24;
}

.back-button {
	display: inline-block;
	margin-top: 20px;
	padding: 10px 20px;
	color: #fff;
	background-color: red;
	text-decoration: none;
	border-radius: 5px;
}

.back-button:hover {
	background-color: darkred;
}
</style>
</head>
<body>
	<%
	String text = (String) request.getAttribute("msg");
	%>

	<div class="error-container">
		<div class="error-icon">❌</div>
		<div class="error-message">Oops! Something went wrong.</div>
		<div class="error-message"><% out.print(text); %>!</div>
		<a href="/empdb/" class="back-button">Go Back Home</a>
	</div>

</body>
</html>
