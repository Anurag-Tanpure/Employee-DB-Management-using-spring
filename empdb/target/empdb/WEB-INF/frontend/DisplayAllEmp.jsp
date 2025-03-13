<%@page import="com.model.Employee"%>
<%@page import="com.Dao.EmpController"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Information</title>
    <!-- Link to your external CSS file -->
    <link rel="stylesheet" type="text/css" href="css/Style.css">
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
    <%@ include file="//Header.jsp" %>
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
                    
                    List <Employee>l = null;
                    l = EmpController.displayAll();
               
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
    </div>
</body>
</html>
