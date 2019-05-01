<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="stylesheet" href="/resources/css/gd_common.css" /> -->

<link rel="stylesheet" href="/resources/css/style.css" />

<div class="container">
	<div class="no-gutters py-5 row">
		<div class="col-1 col-sm-4"></div>
		<div class="col-10 col-sm-4">
			<div class="text-center">
				<!-- 본문 시작 : start -->
				<!-- <img src="/resources/img/logo.png" style="width: 300px; margin-left: 130px;" /> -->
				<form class="formFindId" id="formFindId" method="post" action="/findfindfinduserid">
					<!-- method="post" novalidate="novalidate"-->
					<p class="p">
						<i class="fas fa-dog"></i>
					</p>
					<label for="username" class="sr-only"></label> <input type="text"
						id="username" name="username" class="form-control" placeholder="이름" required
						autofocus> <label for="email" class="sr-only"></label> <input
						type="email" id="email" name="email" class="form-control"
						placeholder="가입한 이메일 주소" required>
					<button type="submit"
						class="btn btn-primary btn-block btn-lg gradient findidd" id="findid" 
						value="${userid }">아이디찾기</button>



            <div class="btn" style="border-left-width: 90px;">
                <button type="button" class="skinbtn default fi-pw find-id btn-find-password" id="pwd"
                onclick = "location.href = 'PasswordRelivalance'"
                style="background-color: red; border-color: red; color:white;"><em>비밀번호 찾기</em></button>
                <button type="button" class="skinbtn default fi-login find-id btn-login" 
                onclick = "location.href = 'login1'"
                style="background-color: red; border-color: red; color:white;"><em>로그인하기</em></button>
            </div>
        </div>		
				</form>
			</div>
		</div>
		<div class="col-1 col-sm-4"></div>
	</div>
<!-- <script>
	$(function(){
		$(".findidd").click(function(e){
			e.preventDefault();
			
			var useridfind = $(this).attr("role");
			var url = "findfindfinduserid?username:email="+useridfind;
			window.open(url, "Pet Shop", "width=100, height=100, toolbar=no, menuber=no, scrollbars=no, resizable=yes");
		})
	})
</script> -->
<%@include file="../includes/footer.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/findid.js"></script>