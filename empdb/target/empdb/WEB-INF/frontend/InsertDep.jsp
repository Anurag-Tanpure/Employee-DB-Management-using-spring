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
    

    <div class="container">
        <h2>Department Form</h2>
        <form action="DepInsert" method="post">
            <table>
                <tr>
                    <td><label for="dep_name">Department Name:</label></td>
                    <td><input type="text" id="dep_name" name="dep_name" required></td>
                </tr>
                
                <tr>
                    <td><label for="dep_HOD">Department Head Name:</label></td>
                    <td><input type="text" id="dep_HOD" name="dep_HOD" required></td>
                </tr>
                
            </table>
            <br>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
