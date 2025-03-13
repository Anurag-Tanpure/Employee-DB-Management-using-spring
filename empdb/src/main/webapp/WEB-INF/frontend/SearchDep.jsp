<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="com.empdb.models.Department"%>
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
         String id;
         id = (String) request.getAttribute("id");
         
         if(id!=null)
         {                    
            Department d=(Department) request.getAttribute("department");
            if(d!=null)
            {
                %>
                   <div class="container">
        <h2>Department Form</h2>
            <table>
                <tr>
                    <td><label for="dep_name">Department Name:</label></td>
                    <td><input type="text" value=<%= d.getDep_name()%> id="dep_name" name="dep_name" disabled required></td>
                </tr>
                
                <tr>
                    <td><label for="dep_HOD">Department Head Name:</label></td>
                    <td><input type="text" value=<%=d.getDep_HOD()%> id="dep_HOD" name="dep_HOD" disabled required></td>
                </tr>
                
            </table>
            <br>
    </div>
 
                <%
            }
            else
            {
            out.print("<div style='text-align: center; color: red; font-size: larger; margin-top: 20px;'>Department not found. Check ID again.</div>");

            
            }
            
         }
    else
         {
             
          %>
    <div class="container">
        <h2>Department Search </h2>
        
        
        <form action="SearchDepartment" method="get">
            <table>
                <tr>
                    <td><label for="id">Department ID:</label></td>
                    <td><input type="text" id="id" name="id" required></td>
                </tr>            
            </table>
            <br>
            <input type="submit" value="Submit">
        </form>
    </div>
    
    <% 
             
         }
         
         %>
</body>
</html>
