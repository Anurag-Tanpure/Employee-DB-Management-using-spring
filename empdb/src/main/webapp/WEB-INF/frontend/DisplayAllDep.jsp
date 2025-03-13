<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.util.List"%>
<%@page import="com.empdb.models.Department"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Department Information</title>
    
        <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/Style.css' />">

    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
    </style> 
</head>
<body>
  <%@ include file="/WEB-INF/frontend/Header.jsp" %>
  <div class="container" style="max-width: 600px;">
        <h2>Department Information</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>Department ID</th>
                    <th>Department Name</th>
                    <th>Department Head</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="d" items="${list}">
                    <tr>
                        <td>${d.dep_id}</td>
                        <td>${d.dep_name}</td>
                        <td>${d.dep_HOD}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
