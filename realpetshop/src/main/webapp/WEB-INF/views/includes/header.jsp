
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="resources/css/style.css" />


<title>Pet Shop</title>

</head>
<body>



<!-- ë¡ê·¸ì¸/íìê°ì/ì¥ë°êµ¬ë/ì»¤ë®¤ëí° -->

<!-- Header -->
<header id="header">
	 <div class="header">
	  	<img src="resources/img/logo.png" alt="" />

	</div>

    <div id="topbar">
    <div class="container">
      <div class="row">
      
        <div class="col-sm-6">
          <div class="contactinfo">
              <a href="#"><i class="fa fa-phone" id="ph"></i>+2 95 01 88 821</a>
              <a href="#"><i class="fa fa-envelope" id="en"></i>nnmmaz95@gmail.com</a>
          </div>
        </div>
        
<!-- login menu -->
     	<div class="col-sm-4">
          <div class="login">
              <i class="fa fa-user" id="fa"></i><div class="lo"><a href="#">Login</a></div>
              <i class="fa fa-user-plus" id="fa"></i><div class="jo"><a href="#">Join</a></div>
              <i class="fa fa-shopping-cart" id="fa"></i><div class="ca"><a href="#">Cart</a></div>
              <i class="fa fa-calendar" id="fa"></i><div class="ev"><a href="#">Event</a></div>
              <i class="fa fa-exclamation-circle" id="fa"></i><div class="no"><a href="#">Notice</a></div>
          </div>
        </div>
        
        
<!-- social media -->
        <div class="col-sm-2">
          <div class="social-icons pull-right">
              <div class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></div>
              <div class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></div>
             <div class="instagram"> <a href="#"><i class="fa fa-instagram"></i></a></div>
              <div class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></div>
          </div>
        </div>
      </div>
    </div>
  </div>

	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">

	       <li class="nav-item active">
	        <a class="nav-link" href="../login1">Login<span class="sr-only">(current)</span></a>
	      </li> 
	      <!-- 충동해결 -->
	      <li>
	      	<select name="loginselect" onchange="window.open(value,'_self')">
	      		<option value="login select">login select</option>
	      		<option value="../login1">구매자 로그인</option>
	      		<option value="../SellerLogin">판매자 로그인</option>
	      		<option value="../adminLogin">관리자 로그인</option>
	      	</select>

	      <li class="nav-item active">
	        <a class="nav-link" href="login1">Login<span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="SignUp">Join</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Cart</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Event</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Notice</a>
	      </li>
	    </ul>

	  </div>

	
<!-- navbar -->
	<nav class="navbar navbar-expand-lg">
	  <a class="navbar-brand" href="#"></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>

<!--  -->
	<div class="pet">
		  <div class="collapse navbar-collapse">
		    <ul class="navbar-nav">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">Food</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Toy</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Toilet</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Feeder</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Health</a>
		      </li>
		    </ul>
		  </div>
	  </div>
	  

	  
<!-- ê²ìì°½ -->


<!-- search -->
   	<div class="search-box">
   		<input class="search-txt" type="text" id="search" placeholder="Search . . ."/>
   		<a href="#" class="search-btn">
   			<i class="fa fa-search"></i>
   		</a>
   	</div>

   	</nav>

	
</header>

<script>
	
</script>






