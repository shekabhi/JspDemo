<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
 <link href="css/home.css" rel="stylesheet">
</head>
<body>
    <div align="center">
        <h1>Welcome To Home Page</h>
        <p></p>
        <div>

                 <form action="/insert" method="POST" >
                       <button class="button"  type="submit"  value="Submit">Insert Student </button>
                 </form>
                 <form action="/delete" method="get" >
                        <button class="button1"  type="submit"  value="Submit">Delete Student by Id</button>
                 </form>
        </div>

        <p></p>

        <div class="table">
        <h>Student List</h>
        	<table border="1" cellpadding="2" cellspacing="2">
        		<tr>
        			<th>Id</th>
        			<th>FirstName</th>
        			<th>LastName</th>
        			<th>Branch</th>
        			<th>Year</th>
        			<th>MobileNumber</th>
        			<th>Actions</th>
        		</tr>
        		<c:forEach var="student" items="${students }">
        			<tr>
        				<td>${student.id }</td>
        				<td>${student.firstName }</td>
        				<td>${student.lastName}</td>
        				<td>${student.branch}</td>
        				<td>${student.year }</td>
        				<td>${student.mobileNumber }</td>
        				<td><a href="/update">Edit</a></td>
        			</tr>
        		</c:forEach>
        	</table>

        </div>

    </div>

</body>
</html>