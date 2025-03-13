<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.util.ArrayList"%>
<%@page import="com.empdb.models.Employee"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Information Form</title>
    <!-- Link to your external CSS file -->
        <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/Style.css' />">
</head>
<body>
        <%@ include file="/WEB-INF/frontend/Header.jsp" %>

    <% 
       String name;
       name = (String) request.getAttribute("name");
            
       if(name!=null)
       {
           %>
<div class="container" style="    max-width: 600px;">
        <h2>Employee Information</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Salary</th>
                    <th>Date of Birth</th>
                    <th>Join Date</th>
                    <th>Department</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    
                
                ArrayList<Employee> l = (ArrayList<Employee>) request.getAttribute("list");
           
                for(Employee e : l)
                {
                    out.println("<tr>");
                    out.println("<td>" + e.getEid()+ "</td>");
                    out.println("<td>" + e.getName() + "</td>");
                    out.println("<td>" + e.getAge() + "</td>");
                    out.println("<td>" + e.getPerfectGender() + "</td>");
                    out.println("<td>" + e.getSalary() + "</td>");
                    out.println("<td>" + e.getDob() + "</td>");
                    out.println("<td>" + e.getJoinDate() + "</td>");
                    out.println("<td>" + e.getDepartment().getDep_name() + "</td>");
                    out.println("</tr>");
                }
                     
                                  
                %>
            </tbody>
        </table>
    </div>           <%
            
       }
       else
       {
     
     %>

    <div class="container">
    <h2>Search Employee</h2>
    <form action="SearchEmployeeByFirstChar" method="get" onsubmit="return validateForm()">
        <table>
            <tr>
                <td><label for="ch">First Character:</label></td>
                <td><input type="text" id="ch" name="ch" required maxlength="1" oninput="validateInput()"></td>
            </tr>
        </table>
        <br>
        <input type="submit" value="Submit">
    </form>
</div>

<script>
function validateInput() {
    var input = document.getElementById('ch');
    input.value = input.value.replace(/[^a-zA-Z]/, ''); // Replace non-alphabetic characters
}

function validateForm() {
    var input = document.getElementById('ch').value;
    if (!input.match(/[a-zA-Z]/)) {
        alert('Please enter an alphabetic character.');
        return false; // Prevent form submission
    }
    return true; // Allow form submission
}
</script>

     <% } %>
</body>
</html>
