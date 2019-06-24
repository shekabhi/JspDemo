<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student List</title>
</head>
<body>
    <form action="/" method="get" >
            <button type="submit"  value="Submit">Home</button>
    </form>
     <p></p>
	<h3>Student List</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>Id</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Branch</th>
			<th>Year</th>
			<th>MobileNumber</th>
		</tr>
		<c:forEach var="student" items="${students }">
			<tr>
				<td>${student.id }</td>
				<td>${student.firstName }</td>
				<td>${student.lastName}</td>
				<td>${student.branch}</td>
				<td>${student.year }</td>
				<td>${student.mobileNumber }</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>