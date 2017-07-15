<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Navigation</title>
<link rel="stylesheet" href="Style/bootstrap.min.css">
<style>
	div#menu{
	text-align:center;
	}
</style>
</head>
<body>

<!-- <body bgcolor="#000000">
<body bgcolor="rgb(0,0,0)"> -->
<body bgcolor="pink">

<!-- <body background="Images/ebooks.jpg"> -->
<!-- <body background="Images/ebooks.jpg"> -->

	<h3></h3>
<!-- 	<div id="SearchForm">
		<input type="text" name="search" size="40" id="SearchBar" value="" placeholder="Search..." onkeyup="lookup(this.value);"/>
		<input type="submit" name="browse_title_select" value="Search" class="button_submit"/>
	</div> -->
	<div id = "menu">
		
  			
		 	
				<form action="EbooksList" class="form-inline">
						<input type="text" name="genericSearch" id="autoText" class="form-control" placeholder="Search for Ebooks"/>
						<button type="submit" class="btn btn-primary">Search</button>
				</form>
				<br>
			<a href="EbooksLandingPage.jsp"><button type="button" class="btn btn-default" style="width: 180px; ">Home</button></a>
  			<a href="Logout"><button type="button" class="btn btn-danger" style="width: 180px; ">Logout</button></a>
			<a href="ShoppingCart.jsp"><button type="button" class="btn btn-info" style="width: 180px; ">Your Cart</button></a>
			<a href="AdvancedSearch.jsp"><button type="button" class="btn btn-warning"  style="width: 180px; ">Advanced Search</button></a>
			<a href="Checkout.jsp"><button type="button" class="btn btn-success"  style="width: 180px; ">Check out</button></a>
	</div>	
	
</body>
</html>