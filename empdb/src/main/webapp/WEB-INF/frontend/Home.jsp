<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/frontend/Header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>T Industries - Home</title>

    <!-- Correct path for CSS -->
<link href="<c:url value='/resources/css/style.css' />" rel="stylesheet">
  
    <style>
        /* Additional inline CSS for specific styles */
        /* You can add specific styles here if needed */
    </style>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/resources/images/bgimage.jpeg'); background-size: cover;">

</body>
</html>