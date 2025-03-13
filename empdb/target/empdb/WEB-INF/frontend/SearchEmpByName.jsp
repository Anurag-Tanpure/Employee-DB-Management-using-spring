<%@page import="java.util.ArrayList"%>
<%@page import="com.Dao.EmpController"%>
<%@page import="com.model.Employee"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Information Form</title>
    <!-- Link to your external CSS file -->
    <link rel="stylesheet" type="text/css" href="css/Style.css">
</head>
<body>
    
    <%@ include file="Header.jsp" %>
    <% 
       String name;
       name = request.getParameter("name");
            
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
                    
                    ArrayList <Employee>l = null;
                    l = EmpController.SearchByname(name);
               
                    for(Employee e : l)
                    {
                        out.println("<tr>");
                        out.println("<td>" + e.getId()+ "</td>");
                        out.println("<td>" + e.getName() + "</td>");
                        out.println("<td>" + e.getAge() + "</td>");
                        out.println("<td>" + e.getperfectGender() + "</td>");
                        out.println("<td>" + e.getSalary() + "</td>");
                        out.println("<td>" + e.getDob() + "</td>");
                        out.println("<td>" + e.getJoinDate() + "</td>");
                        out.println("<td>" + e.getperfectDep() + "</td>");
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
    <form action="SearchEmpByName.jsp" method="post" onsubmit="return validateForm()">
        <table>
            <tr>
                <td><label for="ch">Enter Name :</label></td>
                <td><input type="text" id="name" name="name" required ></td>
            </tr>
        </table>
        <br>
        <input type="submit" value="Submit">
    </form>
</div>


     <% } %>
</body>
</html>
