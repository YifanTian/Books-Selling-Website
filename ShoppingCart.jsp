<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="dataTypes.*, ShoppingCart.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UCI E-books Shopping Cart</title>
<link href="Style/bootstrap.css" rel="stylesheet" />
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

		<table width="100%">
			<tr>
				<td><h3 style="float: left;">E-book</h3></td>
				<td><h3 style="float: left;">Quantity</h3></td>
			</tr>
			<c:forEach items="${shopping_cart.cartItems}" var="cartItem">
				<tr>
					<td>${cartItem.ebook.title}</td>
					<td>
						<form method="POST" action="CartManager">
							<input type="text" name="quantity" class="form-control" value="${cartItem.quantity}" style="width: 40px;"/><br>
							<input type="hidden" name="bookid" value="${cartItem.ebook.id}"/>
							<button name="request" value="update_item_quantity" type="submit" class="btn btn-success">Update Quantity</button>
							<button name="request" value="remove_item" type="submit" class="btn btn-danger">Remove</button>
						</form>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td>
					<br>
					<br>
					<a href="Checkout.jsp"><button class="btn btn-info">Checkout</button></a>
				</td>
				<td>
					<form method="POST" action="CartManager">
						<input type="hidden" name="bookid" value="${cartItem.ebook.id}"/>
						<br>
						<button name="request" class="btn btn-danger" value="remove_all_items" type="submit">Clear Shopping Cart</button>
					</form>
				</td>
			</tr>
		</table>

</div>

</body>
</html>
