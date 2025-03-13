<%@page import="com.Dao.DepController"%>
<%@page import="com.model.Department"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Department Information</title>
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
        <h2>Department Information</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>Department ID</th>
                    <th>Department Name</th>
                    <th>Department Head</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    
                    List <Department>l = null;
                    l = DepController.displayallDep();
               
                    for(Department d : l)
                    {
                        out.println("<tr>");
                        out.println("<td>" + d.getDep_id()+ "</td>");
                        out.println("<td>" + d.getDep_name() + "</td>");
                        out.println("<td>" + d.getDep_HOD() + "</td>");
                        out.println("</tr>");
                    }
                                  
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
