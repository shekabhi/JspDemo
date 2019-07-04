<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Page</title>
 <link href="css/home.css" rel="stylesheet">
</head>
<body>

  <div align="center"  >
	<h1>Delete Student By ID</h1>
	<form name="myForm" action="/deleteid" >
	    <table border="1">
	        <tbody>
	            <tr>
	                <td>Student ID :</td>
	                <td><input type="number" name="id" size="10" /> </td>
	            </tr>
	        </tbody>
	     </table>
         <br>
	     <div>
         	   <button class="button"  type="submit"  value="Submit">Submit</button>
         	   <button class="button1"  type="reset"  value="Reset">Rest</button>
         </div>
	 </form>

  </div>

</body>
</html>