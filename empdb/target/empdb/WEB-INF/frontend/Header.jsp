<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
    <!-- Link to your external CSS file -->
    <!--<link rel="stylesheet" type="text/css" href="css/Style.css">-->
    <!-- Link to your header CSS file -->
  <link href="<c:url value='/resources/css/Header.css' />" rel="stylesheet">
</head>
<body  >
    
    <header>
        <div class="container">
            <nav>
                <ul>
                    <li><a href="Home" >Home</a></li>
                    <li><a href="#">Employee</a>
                        <ul>
                            <li><a href="InsertEmp.jsp">Insert</a></li>
                            <li><a href="deleteEmp.jsp">Delete</a></li>
                            <li><a href="DisplayAllEmp.jsp">Display All</a></li>
                            <li><a href="UpdateEmp.jsp">Update</a></li>
                            <li><a href="SearchEmp.jsp">Search</a></li>
                            <li><a href="SearchEmpByFirstChar.jsp">Search Employee By First char</a></li>
                            <li><a href="SearchEmpByName.jsp">Search Employee By Name</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Department</a>
                        <ul>
                            <li><a href="InsertDep.jsp">Insert</a></li>
                            <li><a href="DisplayAllDep.jsp">Display All</a></li>
                            <li><a href="UpdateDep.jsp">Update</a></li>
                        </ul>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Your remaining HTML content here -->
</body>
</html>