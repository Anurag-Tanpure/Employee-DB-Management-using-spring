<%@page import="java.util.List"%>
<%@page import="com.Dao.DepController"%>
<%@page import="com.model.Department"%>
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

            if (id != null) {
                Employee e;
                e = EmpController.searchEmployee(Integer.parseInt(id));
                if (e != null) {
        %>
        <div class="container">
            <h2>Update Data</h2>
            <form action="EmpUpdate" method="post">
                <table>
                    <tr>
                        <td><input type="text" value=<%= e.getId()%> id="id" name="id" hidden="true" required></td>
                    </tr>   
                    <tr>
                        <td><label for="name"  >Name:</label></td>
                        <td><input type="text" value="<%= e.getName()%>" id="name" name="name"  required></td>
                    </tr>
                    <tr>
                        <td><label for="age">Age:</label></td>
                        <td><input type="number" id="age" value=<%=e.getAge()%> name="age"  required min="0"></td>
                    </tr>
                    <tr>
                        <td><label for="gender">Gender:</label></td>

                        <td>
                            <select id="gender" name="gender" required>
                                <option value=<%= e.getGender()%> > <%out.print(e.getperfectGender());%> </option>
                                <option value="1">Male</option>
                                <option value="2">Female</option>
                                <option value="3">Other</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td><label for="salary">Salary:</label></td>
                        <td><input type="number" id="salary" value=<%= e.getSalary()%> name="salary"  required min="0"></td>
                    </tr>
                    <tr>
                        <td><label for="dob">Date of Birth:</label></td>
                        <td><input type="date" id="dob" value=<%=e.getDob()%> name="dob"  required></td>
                    </tr>  
                    <tr>
                        <td><label for="joinDate">Join Date:</label></td>
                        <td><input type="date" id="joinDate" name="joinDate" value=<%=e.getJoinDate()%> required></td>
                    </tr>

                    <tr>
                        <td><label for="dep_id">Department:</label></td>
                        <td>
                            <select id="dep_id" name="dep_id" required>
                                <option value="">Select Department</option>

                                <%
                                    List<Department> l = null;
                                    l = DepController.displayallDep();

                                    for (Department d : l) {


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
            } else {
                out.print("<div style='text-align: center; color: red; font-size: larger; margin-top: 20px;'>Employee not found. Check ID again.</div>");

            }

        } else {

        %>

        <div class="container">
            <h2>Update Form</h2>
            <form action="UpdateEmp.jsp" method="post">
                <table>
                    <tr>
                        <td><label for="id">ID:</label></td>
                        <td><input type="text" id="id" name="id" required></td>
                    </tr>            </table>
                <br>
                <input type="submit" value="Submit">
            </form>
        </div>
        <% }%>
    </body>
</html>
