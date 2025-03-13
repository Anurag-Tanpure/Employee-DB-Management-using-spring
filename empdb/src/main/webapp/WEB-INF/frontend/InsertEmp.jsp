<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="com.empdb.models.Department" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Information Form</title>

    <!-- Link to external CSS file -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/Style.css' />">

</head>
<body>

<%@ include file="/WEB-INF/frontend/Header.jsp" %>

<div class="container">
    <h2>Employee Information Form</h2>
    <form action="EmpInsert" method="get">
        <table>
            <tr>
                <td><label for="name">Name:</label></td>
                <td><input type="text" id="name" name="name" required></td>
            </tr>
            <tr>
                <td><label for="age">Age:</label></td>
                <td><input type="number" id="age" name="age" required min="0"></td>
            </tr>
            <tr>
                <td><label for="gender">Gender:</label></td>
                <td>
                    <select id="gender" name="gender" required>
                        <option value="">Select Gender</option>
                        <option value="1">Male</option>
                        <option value="2">Female</option>
                        <option value="3">Other</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label for="salary">Salary:</label></td>
                <td><input type="number" id="salary" name="salary" required min="0"></td>
            </tr>
            <tr>
                <td><label for="dob">Date of Birth:</label></td>
                <td><input type="date" id="dob" name="dob" required></td>
            </tr>
            <tr>
                <td><label for="joinDate">Join Date:</label></td>
                <td><input type="date" id="joinDate" name="joinDate" required></td>
            </tr>
            <tr>
                <td><label for="dep_id">Department:</label></td>
                <td>
                    <select id="dep_id" name="dep_id" required>
                        <option value="">Select Department</option>
                        <% 
                        List<Department> l = (List<Department>) request.getAttribute("list");
                        for(Department d : l) { 
                        %>
                            <option value="<%= d.getDep_id() %>"><%= d.getDep_name() %></option>
                        <% } %>
                    </select>
                </td>
            </tr>
        </table>
        <input type="submit" value="Submit">
    </form>
</div>

</body>
</html>
