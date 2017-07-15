<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EbookDetails</title>
<style>
body{ 
    overflow-x:hidden;
    background-size:cover; 
    background-image: url(images/landingbg.jpg);
    font-family: 'Open Sans', sans-serif;
}</style>
</head>
<body>
<%@ include file="NavigationBar.jsp"%>
	
	<h2>Ebooks Details</h2>

	<table border=1 id="results of ebooks"class="table table-bordered">
			<tr>
				<td style="text-align: center; vertical-align: middle;">
					<img src = "${ebook.image_url}" width = "150" height = "200" alt = "No Movie Image"/>
				</td>
			<td>
<%-- 				<p>Title: ${ebook.title} </p> --%>
<h3 class="movieCardAnchor" id="${ebook.id}">Title: <a href="EbookDetails?EbookId=${ebook.id}">${ebook.title}</a></h3>
				<p>Title: ${ebook.author} </p>
				<p>Pages: ${ebook.pages}</p>
				<p>Price: ${ebook.price} </p> 
				<p>Stars: ${ebook.stars} </p> 
				<p>Customer_review: ${ebook.customer_review} </p> 
				
				<p>Publishers: 
					<c:forEach items="${Publishers}" var="publisher">
						<a href="PublisherDetails?PublisherId=${publisher.id}">${publisher.name}</a>, 
					</c:forEach>
				</p>
			
				<p>Subjects:
					<c:forEach items="${Subjects}" var="subject">
						${subject.name}, 
					</c:forEach>
				</p>
				<p><a href="${ebook.url}">Buy Online</a></p>
			</td>
			</tr>
		<tr>
			<td>
<%-- 				<form name="addMovieToCart" action="CartManager?request=add_item&quantity=1&movieid=${movie.id}" method="POST">
					<button type="submit" class="button_submit">Add Movie to Cart</button>
				</form> --%>
				 <a href="CartManager?request=addSpecialItem&quantity=1&bookid=${ebook.id}">
					<button type="submit" class="BuyItem" onclick=alert("You Ebook has been added to the cart!")>Add Ebook to Cart</button>
				</a> 
				
			</td>
		</tr>
	</table>

</body>
</html>