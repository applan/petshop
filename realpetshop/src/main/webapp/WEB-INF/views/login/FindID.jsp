<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>
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
				<form class="formFindId" action="">
					<!-- method="post" novalidate="novalidate"-->
					<p class="p">
						<i class="fas fa-dog"></i>
					</p>
					<label for="username" class="sr-only"></label> <input type="text"
						id="username" class="form-control" placeholder="이름" required
						autofocus> <label for="email" class="sr-only"></label> <input
						type="email" id="email" class="form-control"
						placeholder="가입한 이메일 주소" required>
					<button type="button"
						class="btn btn-primary btn-block btn-lg gradient" type="submit">아이디찾기</button>



            <div class="btn" style="border-left-width: 90px;">
                <button type="button" class="skinbtn default fi-pw find-id btn-find-password" id="pwd"
                onclick = "location.href = 'PasswordRelivalance'"
                style="background-color: red; border-color: red; color:white;"><em>비밀번호 찾기</em></button>
                <button type="button" class="skinbtn default fi-login find-id btn-login" 
                onclick = "location.href = 'login1'"
                style="background-color: red; border-color: red; color:white;"><em>로그인하기</em></button>
            </div>
        </div>


					<!-- 				<p class="dn caution-msg1">일치하는 회원정보가 없습니다. 다시 입력해 주세요.</p>
 -->
					
		
				</form>
			</div>
		</div>
		<div class="col-1 col-sm-4"></div>
	</div>


<!-- 본문 끝 : end -->
<%@include file="../includes/footer.jsp"%>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/findid.js"></script>