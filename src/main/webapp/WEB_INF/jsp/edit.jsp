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
	<h1>Student Place</h1>
	<form name="myForm" action="/insertstudentdetail" method="POST"  >
	    <table border="1" cellpadding="2" cellspacing="2">

	        <tbody>

            	            <tr>
            	                <td align="center" > ID :</td>
								<td><input  type="number" name="id" value='<%=request.getParameter("id")%>' size="10" readonly /> </td>
            	            </tr>
            </tbody>
	        <tbody>
            	            <tr>
            	                <td align="center" > First Name :</td>
            	                <td><input type= "text" name="firstName" value='<%=request.getParameter("firstName")%>' size="20" /> </td>
            	            </tr>
            </tbody>
	        <tbody>
            	            <tr>
            	                <td align="center" > Last Name  :</td>
            	                <td><input type="text" name="lastName" value='<%=request.getParameter("lastName")%>' size="20" /> </td>
            	            </tr>
            </tbody>
	        <tbody>
            	            <tr>
            	                <td align="center" > Branch :</td>
            	                <td><input type="text" name="branch" value='<%=request.getParameter("branch")%>' size="20" /> </td>
            	            </tr>
            </tbody>
	        <tbody>
            	            <tr>
            	                <td align="center" > Year :</td>
            	                <td><input type="number" name="year" value='<%=request.getParameter("year")%>' size="10" /> </td>
            	            </tr>
            </tbody>
	        <tbody>
            	            <tr>
            	                <td align="center" > Mobile Number :</td>
            	                <td><input type="text" name="mobileNumber" value='<%=request.getParameter("mobileNumber")%>' size="20" /> </td>
            	            </tr>
            </tbody>
	     </table>
	     <br>
	     <div>
	             <button class="button"  type="submit"  value="Submit">Update</button>
	              <button class="button1"  type="reset"  value="Reset">Rest</button>
	     </div>

	 </form>

   </div>


</body>
</html>