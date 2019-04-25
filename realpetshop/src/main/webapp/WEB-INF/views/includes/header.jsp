<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="resources/css/style.css" />


<title>Pet Shop</title>

</head>
<body>
<!-- Header / navbar 사이트 계속 따라다니는 부분 -->
<header>

<!-- 로그인/회원가입/장바구니/커뮤니티 -->
	<nav class="navbar navbar-expand-sm">
	  <!-- <a class="navbar-brand" href="#">Navbar</a> -->
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <!-- logo -->
	<div class="logo">
	    <ul>
	       <li><a href="#" title=""><img src="resources/img/facebook.png"/></a></li>
	       <li><a href="#" title=""><img src="resources/img/instagram.png"/></a></li>
	       <li><a href="#" title=""><img src="resources/img/twitter.png"/></a></li>
	    </ul>
	</div>
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
	      <!-- <li class="nav-item active">
	        <a class="nav-link" href="../login1">Login<span class="sr-only">(current)</span></a>
	      </li> -->
	      <li>
	      	<select name="loginselect" onchange="window.open(value,'_self')">
	      		<option value="login select">login select</option>
	      		<option value="../login1">구매자 로그인</option>
	      		<option value="../SellerLogin">판매자 로그인</option>
	      		<option value="../adminLogin">관리자 로그인</option>
	      	</select>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Join</a>
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
	</nav>
	
<!-- navbar -->
	<nav class="navbar navbar-expand-lg">
	  <a class="navbar-brand" href="#"><img src="resources/img/logo.png" alt="" /></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  
	  
<!-- 검색창 -->
	<form class="form-inline my-2 my-lg-0 ">
      	<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
     	<button class="btn btn-primary btn-my-2 round my-2 my-sm-0" type="submit">Search</button>
   	</form>
	</nav>
	
</header>

<script>
	
</script>






