<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href = "/resources/css/bootstrap.min.css" />
<link rel = "stylesheet" href = "/resources/css/signin.css" />

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
    
    <style>
    	.footer{
    	}
    	a{
    		text-decoration : none;
    		color : black;
    	}
    </style>
    
  </head>
  <body class="text-center">
    <form class="form-signin">
  <img class="mb-4" src="/docs/4.3/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
  <h1 class="h3 mb-3 font-weight-normal">구매자 로그인</h1>
  <label for="userid" class="sr-only">userid</label>
  <input type="text" id="userid" class="form-control" placeholder="Userid" required autofocus>
  <label for="password" class="sr-only">Password</label>
  <input type="password" id="password" class="form-control" placeholder="Password" required>
  <div class="checkbox mb-3">
    <label>
      <input type="checkbox" value="remember-me"> Remember me
    </label>
  </div>
  <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
  <div>
  <h1><br/></h1>
  </div>
  <div class="footer">
  	<h6>| <a href="FindID">아이디 찾기</a> | <a href="PasswordRelivalance">비밀번호 찾기</a> | <a href="SignUp">회원가입</a></h6>
  </div>
  <div>
  	<input type="button" value="판매자 로그인" />
  	<input type="button" value="관리자 로그인" />
  </div>
  <p class="mt-5 mb-3 text-muted">&copy; 2019-01-10~2019-06-20</p>
</form>
</body>
</html>