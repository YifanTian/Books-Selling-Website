<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <title>UCI_Ebooks Login</title>
<!--   <link href='http://fonts.googleapis.com/css?family=Raleway:300,400,500' rel='stylesheet' type='text/css'>
  <link href="Style/login.css" rel="stylesheet" />  -->
  <link rel="stylesheet" href="Style/bootstrap.min.css">
  <style> 
  body{ 
    overflow-x:hidden;
    background-size:cover; 
    background-image: url(images/ebookbg1.jpg);
    font-family: 'Open Sans', sans-serif;
}div#header{
  	position: absolute;
  	width: 100%;
  	height: 100%;
  	text-align:center;
}div#header_content{
  	margin: auto;
	width: 100%;
	height: 60%;
	text-align:center;
	vertical-align: middle;
	
}div#main_content{
  width: 100%;
  
    text-align:center;
	position:absolute;
	bottom:80px;
}
</style>
<script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
<!--  The action = is the path ending the name of the servlet -->
<%-- <%
	if (request.getSession(false) != null && request.getSession().getAttribute("customer_loggedin") != null)
	{
		response.sendRedirect("FabFlixMain");
	}
%> --%>

<!-- <div class= "">
  <img src="Images/e-books.jpg" />
</div> -->

<div id="header">
  <!-- so that the opacity does not effect the header content -->
<img src="images/logo.jpg" id="logo" style="background:transparent;"/>

  <div id="header_content">
  <br><br>
 
  <form name="loginform" action="Login" method="POST" class="form-horizontal">
  <input name="email" placeholder="Email" required type="email" class="form-control" style="width: 17%; text-align:center; margin: auto;"/>
  <input name="password" type="password" placeholder="Password" required="required" style="width: 17%; text-align:center; margin: auto;" class="form-control"/>
  <div  align="center" class="g-recaptcha" data-sitekey="6LdPrCAUAAAAACcmjf_X8C-K5Una_IrzF4JuOLUX"></div>
  <input type="submit" value="Login" id="login_button" class="btn btn-primary"/>
  
  </form>
  <h4>${login_invalid}</h4>
    
  </div>
</div>


<div id="headerbg"></div>

<div id="main_content">
  <h2 style="text-align:center;">
  Here at Ebooks.com we offer you the best reading experience! <br/>
  <br/>
   
  </h2>

</div>

</body>
</html>