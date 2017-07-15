<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PublisherDetails</title>
<link rel="stylesheet" href="Style/bootstrap.min.css">
<style>
body{ 
    overflow-x:hidden;
    background-size:cover; 
    background-image: url(images/landingbg.jpg);
    font-family: 'Open Sans', sans-serif;
    text-align:center;
}</style>
</head>
<body>

<%@ include file="NavigationBar.jsp"%>

	<h2>Publisher Details</h2>
	
	<table border=1 id="results of Publisher" class="table table-bordered">
			<tr>
				<td>
					<img src = "${Publisher.image_url}" width = "150" height = "200" alt = "No Movie Image"/>
				</td>
			<td>
<%-- 				<p>Title: ${ebook.title} </p> --%>
<h3 class="PublisherAnchor" id="${Publisher.id}">Title: <a href="PublisherDetails?PublisherId=${Publisher.id}">${Publisher.name}</a></h3>
				
				<p>Ebooks: 
					<c:forEach items="${Ebooks}" var="ebook">
						<a href="EbookDetails?EbookId=${ebook.id}">${ebook.title}</a>, 
					</c:forEach>
				</p>
				<p>Address: ${Publisher.address} </p> 
				<p>HomePage: <a href="${Publisher.homepage}">${Publisher.homepage}</a></p>
			</td>
			</tr>

	</table>
	
</body>
</html>