<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Data</title>
</head>
<body>

    <form action="/" method="get" >
            <button type="submit"  value="Submit">Home</button>
    </form>
    <p></p>

	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>Id</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Branch</th>
			<th>Year</th>
			<th>MobileNumber</th>
		</tr>
			<tr>
				<td>${students.id }</td>
				<td>${students.firstName }</td>
				<td>${students.lastName}</td>
				<td>${students.branch}</td>
				<td>${students.year }</td>
				<td>${students.mobileNumber }</td>
			</tr>

	</table>


</body>
</html>