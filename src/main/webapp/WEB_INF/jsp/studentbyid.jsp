<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Data</title>
</head>
<body>


    <c:if test="${not empty object['class'].declaredFields}">
	<h3>Student Detail</h3>
	<p>${students}</p>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>Id</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Branch</th>
			<th>Year</th>
			<th>MobileNumber</th>
		</tr>
        <c:forEach var="student" items="${students}">
			<tr>
				<td><c:catch><li><span style="font-weight: bold">
                                    ${student.id}: </span>${object[student.id]}</li>
                                </c:catch></td>
				<td><c:catch><li><span style="font-weight: bold">
                                                        ${student.firstName}: </span>${object[student.firstName]}</li>
                                                    </c:catch></td>
				<td><c:catch><li><span style="font-weight: bold">
                                                        ${student.lastName}: </span>${object[student.lastName]}</li>
                                                    </c:catch></td>
				<td><c:catch><li><span style="font-weight: bold">
                                                        ${student.branch}: </span>${object[student.branch]}</li>
                                                    </c:catch></td>
				<td><c:catch><li><span style="font-weight: bold">
                                                        ${student.year}: </span>${object[student.year]}</li>
                                                    </c:catch></td>
				<td><c:catch><li><span style="font-weight: bold">
                                                        ${student.mobileNumber}: </span>${object[student.mobileNumber]}</li>
                                                    </c:catch></td>
			</tr>

		</c:forEach >
	</table>
	</c:if>

</body>
</html>