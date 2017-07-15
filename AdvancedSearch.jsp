<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Advanced Search</title>
<link rel="stylesheet" href="Style/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.7.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<style>
div#searchbuttom{
	text-align:center;
	vertical-align: middle;
}
body{ 
    overflow-x:hidden;
    background-size:cover; 
    background-image: url(images/landingbg.jpg);
    font-family: 'Open Sans', sans-serif;
}
</style>

</head>
<body>

<%@ include file="NavigationBar.jsp"%>
	<div style="text-align:center;font-size:30px;">Advanced Search of Ebooks</div>
	
	<div id = search>
	<form action="EbooksList" id="SearchForm" class="form-horizontal" method="GET">
	
	<div style="font-size:20px;margin-left: auto;margin-right: auto; width: 20em;">
	
	<div class="row">
			<label for="Title">Title:</label><br>
			<input type="text" name="title" size="22" id="searchBox1" class="form-control" placeholder="Title"/>
	</div>
	
	<div class="row">
			<label for="Subjects">Subject:</label><br>
			<input type="text" name="subject" size="22" id="searchBox2" class="form-control" placeholder="Subject"/>
	</div>
	
	<div class="row">
			<label for="Publishers">Publishers:</label><br>
			<input type="text" name="publisher" size="22" id="searchBox3" class="form-control" placeholder="Publishers"/>
	</div>
	
	<div class="row">
			<label for="author">Author:</label><br>
			<input type="text" name="author" size="22" id="searchBox4" class="form-control" placeholder="Author"/>
	</div>
	
 	<div class="row">
			<label for="Star">Stars:</label><br>
			<input type="text" pattern="[0-9]*" name="star" size="22" id="searchBox5" class="form-control" placeholder="0-5"/>
	</div> 
	
		
	<div class="row">
			<label for="Price">Price:</label><br>
			<input type="text" pattern="[0-9]*-[0-9]*" name="priceRange" size="22" id="searchBox3" class="form-control" placeholder="0-999"/>
	</div>
	
<!-- 	<div class="row">
			<label for="Pages">Pages:</label><br>
			<input type="text" pattern="[0-9]*-[0-9]*" name="PagesRange" size="22" id="searchBox4" placeholder="0-9999"/>
	</div> -->
	<br>
	<div id = "searchbuttom">
		<button type="submit" class="btn btn-primary" id="advSubmit">Submit</button>
		</div>
		</div>
	</form>

	</div>
	
</body>
</html>