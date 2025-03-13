<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
    <!-- Link to your external CSS file -->
    <link href="<c:url value='/resources/css/Header.css' />" rel="stylesheet">
</head>
    
    <header>
        <div class="container">
            <nav>
                <ul>
                    <li><a href="<c:url value='/home' />">Home</a></li>
                    <li><a href="#">Employee</a>
                        <ul>
                            <li><a href="<c:url value='/Employee/InsertEmp' />">Insert</a></li>
                            <li><a href="<c:url value='/Employee/deleteEmp' />">Delete</a></li>
                            <li><a href="<c:url value='/Employee/DisplayAllEmp' />">Display All</a></li>
                            <li><a href="<c:url value='/Employee/UpdateEmp' />">Update</a></li>
                            <li><a href="<c:url value='/Employee/SearchEmp' />">Search</a></li>
                            <li><a href="<c:url value='/Employee/SearchEmpByFirstChar' />">Search Employee By First char</a></li>
                            <li><a href="<c:url value='/Employee/SearchEmpByName' />">Search Employee By Name</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Department</a>
                        <ul>
                            <li><a href="<c:url value='/Department/InsertDep' />">Insert Department</a></li>
                            <li><a href="<c:url value='/Department/DisplayAllDep' />">Display All Department</a></li>
                            <li><a href="<c:url value='/Department/UpdateDep' />">Update Department</a></li>
                            <li><a href="<c:url value='/Department/SearchDep' />">Search Department</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Your remaining HTML content here -->
</body>
</html>
