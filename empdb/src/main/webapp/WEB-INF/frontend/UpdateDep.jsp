<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.util.List"%>
<%@page import="com.empdb.models.Department"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Information Form</title>
        <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/Style.css' />">
</head>
<body>
    
    <%@ include file="/WEB-INF/frontend/Header.jsp" %>


    
    
    <% 
       String id = (String) request.getAttribute("dep_id");
       
       if(id!=null)
       {
           
           Department d = (Department) request.getAttribute("department");
           %>
    
        <div class="container">
        <h2>Department Form</h2>
        <form action="DepUpdate" method="get">
            <table>
                
                <input type="text" id ="dep_id" value=<%=d.getDep_id() %> name="dep_id" hidden="true">
                <tr>
                    <td><label for="dep_name">Department Name:</label></td>
                    <td><input type="text" id="dep_name" name="dep_name" value="<%=d.getDep_name() %>" required></td>
                </tr>
                
                <tr>
                    <td><label for="dep_HOD">Department Head Name:</label></td>
                    <td><input type="text" id="dep_HOD" name="dep_HOD" value="<%=d.getDep_HOD() %>" required></td>
                </tr>
                
            </table>
            <br>
            <input type="submit" value="Submit">
        </form>
    </div>

    <%
       }
       else
       {
           
       
    %>
    <div class="container">
        <h2>Select Department For Update</h2>
        <form action="UpdateDepartment" method="get">
            <table>
                <tr>
                    <td><label for="dep_id">Department:</label></td>
                    <td>
                        <select id="dep_id" name="dep_id" required>
                            <option value="">Select Department</option>
                            
                           <% 
                           List<Department> l  = (List<Department>)  request.getAttribute("list");
                           for(Department d : l)
                           {
                          
                               
                           %>
                            <option value=<%=d.getDep_id()%> > <% out.print(d.getDep_name()); %> </option>
                       <%  
                       
                           }
                       %>
                        
                        </select>
                    </td>
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
