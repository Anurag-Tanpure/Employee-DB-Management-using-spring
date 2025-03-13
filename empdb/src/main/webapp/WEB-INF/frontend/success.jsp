<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success Page</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/success.css' />">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 50px;
        }

        .success-container {
            background: #fff;
            padding: 30px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            display: inline-block;
        }

        .success-icon {
            font-size: 50px;
            color: green;
            animation: pop 0.5s ease-in-out;
        }

        @keyframes pop {
            0% { transform: scale(0.5); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }

        .success-message {
            font-size: 20px;
            margin-top: 10px;
            color: #333;
        }

        .back-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            color: #fff;
            background-color: green;
            text-decoration: none;
            border-radius: 5px;
        }

        .back-button:hover {
            background-color: darkgreen;
        }
    </style>
</head>
<body>
<% 
String text = (String) request.getAttribute("msg");


%>
    <div class="success-container">
        <div class="success-icon">✔</div>
        <div class="success-message">Your operation was successful!</div>
        <div class="success-message"><% out.print(text); %>!</div>
        
        <a href="/empdb/" class="back-button">Go Back Home</a>
    </div>

</body>
</html>
