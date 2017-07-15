<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="dataTypes.*" %>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UCI E-books Checkout</title>

<link href="Style/bootstrap.css" rel="stylesheet" /> 
<!-- <link href='http://fonts.googleapis.com/css?family=Raleway:300,400,500' rel='stylesheet' type='text/css'> -->
<style>
body{ 
    overflow-x:hidden;
    background-size:cover; 
    background-image: url(images/landingbg.jpg);
    font-family: 'Open Sans', sans-serif;
}</style>
</head>

<body>

<%
	if ((Customer) request.getSession().getAttribute("customer_loggedin") == null)
	{
		response.sendRedirect("login.jsp");
	}
%>

<%@ include file="NavigationBar.jsp"%>


<div id="main_content">
<div style="text-align:center;font-size:40px;">UCI E-books Checkout</div><br>
<h4>${creditcard_check}</h4>
 
<div style="font-size:20px; margin-left: auto; margin-right: auto; width: 20em;">
	<form name="Checkout" action="Checkout" method="POST">
		<span id="form1">Credit Card Number<br></span>
			<input type="text" name="cc_id" size="50" class="form-control" id="cc_id" maxlength="20" value="" required/>
		<span id="form2">Name on Card<br></span>
			First Name<input type="text" name="first_name" size="22" class="form-control" id="first_name" value="" required/>
			<br>Last Name<input type="text" name="last_name" size="22" class="form-control" id="last_name" value="" required/>
		<span id="form3"><br>Expiration Date (YYYY-MM-DD)</span>
			<input type="text" name="expiration" size="50" id="expiration" class="form-control" placeholder="YYYY-MM-DD" maxlength="10" value="" required/><br><br>
		<button type="submit" name="Search Submit" value="Go" class="btn btn-main-primary">Check Out</button>
	</form>
</div>
</div>

</body>