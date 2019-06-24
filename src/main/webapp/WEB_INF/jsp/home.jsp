<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>

        <h1>Welcome on JSP Page</h>
        <p></p>
        <form action="/students" method="get" >
            <button type="submit"  value="Submit">Show All Students</button>
        </form>
        <form action="/student" method="get" >
             <button type="submit"  value="Submit">Student by Id</button>
        </form>
        <form action="/insert" method="post" >
                             <button type="submit"  value="Submit">Insert Student </button>
                </form>
        <form action="/delete" method="get" >
                     <button type="submit"  value="Submit">Delete Student by Id</button>
        </form>



</body>
</html>