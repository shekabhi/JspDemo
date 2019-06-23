<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Page</title>
</head>
<body>

	<h1>Student Place</h1>
	<form name="myForm" action="/studentid" >
	    <table border="1">
	        <tbody>
	            <tr>
	                <td>Student ID :</td>
	                <td><input type="number" name="id" size="10" /> </td>
	            </tr>
	        </tbody>
	     </table>
	     <br>
	    <input type="submit" value="submit" name="submit" /><br>
	    <input type="reset" value="Rest" name="reset" />
	 </form>


</body>
</html>