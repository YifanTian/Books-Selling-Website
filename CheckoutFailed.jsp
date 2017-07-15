<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="dataTypes.*" %>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UCI E-books List</title>
</head>
<body>


<%
	if ((Customer) request.getSession().getAttribute("customer_loggedin") == null)
	{
		response.sendRedirect("Login.jsp");
	}
%>

<%@ include file="NavigationBar.jsp"%>
<%-- TODO <%@ include file="EbooksMain%> --%>

<h3 style="position: absolute; top:150px; left:150px; font-family:raleway; ">The credit card you entered was invalid, please try again.</h3>
