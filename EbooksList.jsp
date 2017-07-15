<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="java.util.ArrayList, Main.*, dataTypes.*, ShoppingCart.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EbooksList</title>
<link rel="stylesheet" href="Style/bootstrap.min.css">
<style>
body{ 
    overflow-x:hidden;
    background-size:cover; 
    background-image: url(images/landingbg.jpg);
    font-family: 'Open Sans', sans-serif;
}</style>
</head>
<body onbeforeunload="return myFunction()">

<script>
function myFunction() {
	location.reload();
	//return "your code will be processed!";
    //return "Write something clever here...";
}
</script>

<%-- <p id="welcome">welcome! <c:forEach items="${request.getSession().getAttribute("customer_name")}"></td></c:forEach></p> --%>
<%-- <td>${cartItem.ebook.title}</td> --%>

<!-- <p>You just buy book</p>
<p id="welcome"></p> -->

<%
   Date createTime = new Date(session.getCreationTime());
   Date lastAccessTime = new Date(session.getLastAccessedTime());
   
	String userID = "";
	int cartSize = 0;
	ShoppingCart cart;
	if ((Customer) request.getSession().getAttribute("customer_loggedin") == null)
	{
		response.sendRedirect("login.jsp");
	} else {
		//String userID = (String)session.getAttribute(customer_name);
		userID = (String)request.getSession().getAttribute("customer_name");
		cart = (ShoppingCart)request.getSession().getAttribute("shopping_cart");
		cartSize = cart.getCartItems().size();
		// the cart information for printing cart information
	//out.print("Your cart:");
	//Ebooks ebook2 = new Ebooks(ebook.ebookId,ebook.price);
	}
	
%>

<%-- id:<% out.print( session.getId()); %><br/>
Creation Time:<% out.print(createTime); %><br/>
Time of Last Access:<% out.print(lastAccessTime); %><br/> --%>
<strong><h4>Welcome! <% out.print(userID); %> </h4></strong>
<strong><h4>Your Cart: <% out.print(cartSize); %> </h4>
	
	<!-- include header here -->
	<%@ include file="NavigationBar.jsp"%>
	
	<div id="main">
<%-- <p> Sort by  
		<a href="EbooksList?${queries}lim=${lim}&page=${page}&sort=priceasc">price up <img src="Images/up_arrow.png" class="order_arrow" /></a> | 
		<a href="EbooksList?${queries}lim=${lim}&page=${page}&sort=pricedsc">price dn <img src="Images/dn_arrow.png" class="order_arrow" /></a> | 
		<a href="EbooksList?${queries}lim=${lim}&page=${page}&sort=pagesasc">pages up <img src="Images/up_arrow.png" class="order_arrow" /></a> | 
		<a href="EbooksList?${queries}lim=${lim}&page=${page}&sort=pagesdsc">pages dn <img src="Images/dn_arrow.png" class="order_arrow" /></a> | 		
	</p>  --%>

<%-- queries: "${queries}"
subject: "${subject}"
limit: "${lim}"
pages: "${pages}"
sort: "${sort}"
genericSearch: "${genericSearch}" --%>

<div>
	<form name="sortTypeChoice" action="EbooksList" method="GET">
		<input type = "hidden" name = "queries" value = "${queries}" />
		<input type = "hidden" name="lim" value = "${lim}" />
		
		<%-- <input type = "hidden" name="subject" value = "${subject}" />  --%>
		<%-- <input type = "hidden" name="genericSearch" value = "${genericSearch}" /> --%> 
		<%-- <input type = "hidden" name="pages" value = "${pages}" /> --%>
		
		<input type="submit" value="Sort by" class="btn btn-info"/>
		<select name="sort" class="btn btn-default dropdown-toggle">
			<option value="priceasc">price up</option>
			<option value="pricedsc">price dn</option>
			<option value="pagesasc">pages up</option>
			<option value="pagesdsc">pages dn</option>
<!-- 			<option value="starsup">pages up</option>
			<option value="starsdn">pages dn</option> -->
		</select>
	  </form>
  </div>
	
	<table border=1 id="results of ebooks"class="table table-bordered">
		<c:forEach items="${ebooks}" var="ebook">
			<tr>
				<td style="text-align: center; vertical-align: middle;">
					<img src = "${ebook.image_url}" width = "150" height = "200" alt = "No Movie Image"/>
				</td>
			<td>
<%-- 				<p>Title: ${ebook.title} </p> --%>
<h3 class="movieCardAnchor" id="BookId">Title: <a href="EbookDetails?EbookId=${ebook.id}">${ebook.title}</a></h3>
				
				<p>Author: ${ebook.author} </p>
				<p>Pages: ${ebook.pages}</p>
				<p>Price: ${ebook.price} </p> 
				<p>Stars: ${ebook.stars} </p>
<%-- 				<p id=""ebookid"">${ebook.id}</p>  --%>
				<p>Customer_review: ${ebook.customer_review} </p> 
				
				<p>Publishers: 
					<c:forEach items="${ebook.publishers}" var="publisher">
						<a href="PublisherDetails?PublisherId=${publisher.id}">${publisher.name} </a> 
					</c:forEach>
				</p>
			
				<p>Subject: 
					<c:forEach items="${ebook.subjects}" var="subject">
						<a href="EbooksList?subject=${subject.name}"> ${subject.name} </a>
					</c:forEach>
				</p>
				<p><a href="${ebook.url}">Buy Online</a></p>
				<!-- <form name="addMovieToCart" action="EbooksList" method="POST"> -->
<%--   				<form name="addMovieToCart" action="CartManager" method="POST">				
 					<input type="hidden" name="request" value="add_item"></input>
					<input type="hidden" name="quantity" value=1></input>
					<input type="hidden" name="bookid" value="${ebook.id}"></input>
					<button type="submit" class="button_submit" onclick=alert("You Ebook has been added to the cart!")>Add Ebook to Cart</button>
				</form>  --%>
				
				<!-- <p id="cart">Add to Cart</p> -->
				<!-- <p name="ebookid" value = ${ebook.id} /p> -->
<!-- 				<script>
					function addtoCart(value) {
						var x = document.getElementsByName("ebookid");
					    document.getElementById("welcome").innerHTML = value;
					    //location.reload();
					    //location.reload("true");
					    return "your code will be processed!";
					}
				</script> -->
				
<%-- 				<button type="button" class="button_submit" onclick="addtoCart(${ebook.id})";>Add to Cart</button> --%>				
			<td>
								
 				<a href="CartManager?${queries}lim=${lim}&pages=${pages}&sort=${sort}&request=add_item&quantity=1&bookid=${ebook.id}">
					<button type="submit" class="BuyItem" onclick=alert("You Ebook has been added to the cart!")>Add Ebook to Cart</button>
				</a> 
<!-- 				<form name="checkOut" action="Checkout" method="POST">
					<button type="submit" class="button_submit">Check Out</button>
				</form> -->
			<br></br>
				<a href="Checkout.jsp"><button class="btn btn-info">Checkout</button></a>
			</td>
			</tr>
		</c:forEach>
	</table>
	
	<c:if test="${pages ne 0}">
		<a href="EbooksList?${queries}lim=${lim}&pages=${pages - 1}&sort=${sort}">
			<button class="btn btn-danger">Previous </button>
		</a>
	</c:if>

	<c:if test="${pages lt maxPage}">
		<a href="EbooksList?${queries}lim=${lim}&pages=${pages + 1}&sort=${sort}">
			<button class="btn btn-success">Next</button>
		</a>
	</c:if>
	
		<p>
		Results Per Page <!-- 10, 25, 50, 100  -->
		<a href="EbooksList?${queries}lim=5&page=0&sort=${sort}">5</a>
		<a href="EbooksList?${queries}lim=25&page=0&sort=${sort}">25</a>
		<a href="EbooksList?${queries}lim=50&page=0&sort=${sort}">50</a>
		<a href="EbooksList?${queries}lim=100&page=0&sort=${sort}">100</a>
		
<%-- 		<a href="FabFlixMovieList?${queries}lim=10&page=0&sort=${sort}">10</a>
		<a href="FabFlixMovieList?${queries}lim=25&page=0&sort=${sort}">25</a>
		<a href="FabFlixMovieList?${queries}lim=50&page=0&sort=${sort}">50</a>
		<a href="FabFlixMovieList?${queries}lim=100&page=0&sort=${sort}">100</a> --%>
	</p>
	
	</div>

</body>
</html>