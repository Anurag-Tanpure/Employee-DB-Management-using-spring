<%@page import="com.model.Department"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.DepController"%>
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
    
    <%@ include file="//Header.jsp" %>
    

    
    
    <% 
       String id = request.getParameter("dep_id");
       
       if(id!=null)
       {
           
           Department d ;
           d = DepController.searchDep(Integer.parseInt(id));
           %>
    
        <div class="container">
        <h2>Department Form</h2>
        <form action="DepUpdate" method="post">
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
        <form action="UpdateDep.jsp" method="post">
            <table>
                <tr>
                    <td><label for="dep_id">Department:</label></td>
                    <td>
                        <select id="dep_id" name="dep_id" required>
                            <option value="">Select Department</option>
                            
                           <% 
                           List <Department>l = null;
                           l = DepController.displayallDep();
                           
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
