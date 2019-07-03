<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
 <link href="css/home.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
    <div align="center">
        <h1 style="margin-top:40px; margin-bottom:40px;">Welcome To Admin Page</h1>

		<div class="container">
			<div class="row">
				<div class="col-sm-4 col text-center">
					<div class="container">
						<a href=""><button style="margin-top : 20px ;" type="button" class="btn btn-outline-dark ">STUDENT PROFILE</button></a>

					</div>

				</div>
				<div class="col-sm-4 text-center">
					<div class="container">
						<a href="/insert"><button style="margin-top : 20px ;" type="button" class="btn btn-outline-dark">ADD STUDENT</button></a>

					</div>

				</div>
				<div class="col-sm-4 col text-center">
					<div class="container">
						<a href="/delete"><button style="margin-top : 20px ;" type="button" class="btn btn-outline-dark">DELETE STUDENT</button></a>
					</div>

				</div>

			</div>
		</div>

        <div class="table">
        <h3 style="margin:30px 0px 20px 0px">Student List</h3>
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
        		< c:forEach var="student" items="${students }">
        			<tr>
        				<td>${student.id }</td>
        				<td>${student.firstName }</td>
        				<td>${student.lastName}</td>
        				<td>${student.branch}</td>
        				<td>${student.year }</td>
        				<td>${student.mobileNumber }</td>
						<td>
							<a style="margin-left:10px ;" href="<c:url value='/update'>
							< c:param name='id' value='${student.id}' />
							< c:param name='firstName' value='${student.firstName}' />
							< c:param name='lastName' value='${student.lastName}' />
							< c:param name='branch' value='${student.branch}' />
							< c:param name='year' value='${student.year}' />
							< c:param name='mobileNumber' value='${student.mobileNumber}' />
							</c:url>
							">Edit</a>
						</td>

        			</tr>
        		</c:forEach>
        	</table>

        </div>

    </div>



	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>