<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="com.empdb.models.Employee" %>
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
       id = (String) request.getAttribute("eid");
            
       if(id!=null)
       {
            Employee e =(Employee) request.getAttribute("Employee");
           // e = EmpController.searchEmployee(Integer.parseInt(id));
            if(e!=null)
            {
           %>
       <div class="container">
        <h2>Employee Data</h2>
               <form action="" method="">
            <table>
                <tr>
                    <td><input type="text" value=<%= e.getEid() %> id="id" name="id" hidden="true" required></td>
                </tr>   
                <tr>
                    <td><label for="name"  >Name:</label></td>
                   <td><input type="text" value="<%= e.getName() %>" id="name" name="name" disabled required></td>
                </tr>
                <tr>
                    <td><label for="age">Age:</label></td>
                    <td><input type="number" id="age" value=<%=e.getAge() %> name="age" disabled required min="0"></td>
                </tr>
                <tr>
                    <td><label for="gender">Gender:</label></td>
                    <td><input type="text" id="gender" value=<%=e.getGender() %> name="gender" disabled required min="0"></td>
                </tr>
                <tr>
                    <td><label for="salary">Salary:</label></td>
                    <td><input type="number" id="salary" value=<%= e.getSalary() %> name="salary" disabled required min="0"></td>
                </tr>
                <tr>
                    <td><label for="dob">Date of Birth:</label></td>
                    <td><input type="date" id="dob" value=<%=e.getDob() %> name="dob" disabled required></td>
                </tr>
                <tr>
                    <td><label for="joinDate">Join Date:</label></td>
                    <td><input type="date" id="joinDate" name="joinDate" disabled value=<%= e.getJoinDate()%> required></td>
                </tr>
                <tr>
                    <td><label for="dep_id" >Department:</label></td>
                    <td><input type="text" id="department" name="department" disabled value=<%= e.getDepartment().getDep_name() %> required></td>
                
                </tr>
            </table>
        </form>
    </div>
           <%
            }else
            {
out.print("<div style='text-align: center; color: red; font-size: larger; margin-top: 20px;'>Employee not found. Check ID again.</div>");

            }
            
       }
       else
       {
     
     %>

    <div class="container">
        <h2>Search Employee</h2>
        <form action="SearchEmployee" method="get">
            <table>
                <tr>
                    <td><label for="eid">ID:</label></td>
                    <td><input type="text" id="eid" name="eid" required></td>
                </tr>            </table>
            <br>
            <input type="submit" value="Submit">
        </form>
    </div>
     <% } %>
</body>
</html>
