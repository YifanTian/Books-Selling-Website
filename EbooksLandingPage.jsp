<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ebooks_Home</title>
<link rel="stylesheet" href="Style/bootstrap.min.css">
<style>
div#main{
text-align:center;}
body{ 
    overflow-x:hidden;
    background-size:cover; 
    background-image: url(images/landingbg.jpg);
    font-family: 'Open Sans', sans-serif;
}
</style>
</head>
<body>



	<h2 style ="text-align:center;">Welcome to E-books Home Page!</h2>

<%@ include file="NavigationBar.jsp"%>
	
	<!-- include header here -->

<div id="main">

  <div class="search_option">
	  
<%-- 	<form name="browse_genre" action="EbooksLandingPage" method="POST">
	    <h3>Browse books by subjects</h3>
	    <select name="browse_subject_submit">
		  <c:forEach var="genre" items="${genres}">
			<option value="${genre}">${genre}</option>
		  </c:forEach>
	    </select>
	  <input type="submit" name="browse_subject" value="Search" class="button_submit"/>
  	</form> --%>
  
	<h3>Browse by subjects:</h3>
  	<h4>   
  		<a href="EbooksList?subject=a">Children</a>
  		<a href="EbooksList?subject=b">Novel</a>
  		<a href="EbooksList?subject=c">Health</a>
  		<a href="EbooksList?subject=d">History</a> 
  		<a href="EbooksList?subject=e">Science</a> 
  	</h4>
  
    <form name="browse_titles" action="EbooksLandingPage" method="POST">
    <h3>Browse books by titles</h3>
    
<select name="titleSelect" class="btn btn-default dropdown-toggle">
	<option value="A">A</option>
	<option value="B">B</option>
	<option value="C">C</option>
	<option value="D">D</option>
	<option value="E">E</option>
	<option value="F">F</option>
	<option value="G">G</option>
	<option value="H">H</option>
	<option value="I">I</option>
	<option value="J">J</option>
	<option value="K">K</option>
	<option value="L">L</option>
	<option value="M">M</option>
	<option value="N">N</option>
	<option value="O">O</option>
	<option value="P">P</option>
	<option value="Q">Q</option>
	<option value="R">R</option>
	<option value="S">S</option>
	<option value="T">T</option>
	<option value="U">U</option>
	<option value="V">V</option>
	<option value="W">W</option>
	<option value="X">X</option>
	<option value="Y">Y</option>
	<option value="Z">Z</option>
	<option value="0">0</option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
    </select>
  	<input type="submit" class="btn btn-primary"/>
  </form>
  </div>

	<p>
<!-- 		<div>
			<a href = "AdvancedSearch.jsp" id="AdvancedSearch"><img />Advanced Search</a>
		</div>
  -->
 </div>

	</body>
</html>