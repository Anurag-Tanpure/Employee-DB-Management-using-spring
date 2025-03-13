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
       String id;
       id = request.getParameter("id");
            
       if(id!=null)
       {
            Employee e ;
            e = EmpController.searchEmployee(Integer.parseInt(id));
            if(e!=null)
            {
           %>
       <div class="container">
        <h2>Employee Data</h2>
               <form action="" method="">
            <table>
                <tr>
                    <td><input type="text" value=<%= e.getId()%> id="id" name="id" hidden="true" required></td>
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
                    <td><input type="text" id="gender" value=<%=e.getperfectGender() %> name="gender" disabled required min="0"></td>
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
                    <td><input type="text" id="dep_id" value=<%=e.getperfectDep() %> disabled name="dep_id" required min="0"></td>
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
        <form action="SearchEmp.jsp" method="post">
            <table>
                <tr>
                    <td><label for="id">ID:</label></td>
                    <td><input type="text" id="id" name="id" required></td>
                </tr>            </table>
            <br>
            <input type="submit" value="Submit">
        </form>
    </div>
     <% } %>
</body>
</html>
