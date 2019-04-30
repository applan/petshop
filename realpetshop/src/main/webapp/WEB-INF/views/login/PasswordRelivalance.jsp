<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" href="/resources/css/style.css" />



    <div id="container">
        <!-- 본문 시작 : start -->
        <div id="content">
<img src="/resources/img/logo.png" style="width:300px; margin-left: 800px; margin-top: 50px; " />
<div class="member find-pw-page" style="padding-left: 30px; padding-top: 0px;">
    <h2>비밀번호 찾기</h2>
<form action="PasswordRelivalance" class="PasswordRelivalance" id="PasswordRelivalance" method="post">
    <div class="box">
    	<fieldset>
                <h3>아이디, 이메일 입력</h3>

                <p class="guide" style="font-size: small;">비밀번호를 찾고자 하는 아이디, 이름을 입력해 주세요.</p>
           
                <div class="find-pw" style="padding:0px; border-top: 0px;">
                    <div class="input-id">          
                            <input type="text" id="userid" name="userid" class="form-control" placeholder="아이디">
                        	<small id="userid" class="text-info"></small>
                    </div>
                </div>

                <div class="find-pw" style="padding:0px; border-top: 0px;">
                    <div class="input-id">   
                            <input type="email" id="exampleFormControlInput1" name="email" class="form-control" placeholder="임시 비밀번호 받을 이메일">
                        	<small id="exampleFormControlInput1" class="text-info"></small>
                        	<div class="col-md-offset-2 col-md-10">

                        	</div>
                        	
                        	
                        <div class="form-group">
						    <input type="hidden" class="form-control password" id="exampleFormControlInput1" 
						    value="${password}" name="password" placeholder="이미지 주소를 입력해주세요">
						</div>
						
						
                        <p style="font-size: small; margin-bottom: 0px;">아이디를 모르시나요?<a href="FindID" class="btn-find-id">아이디 찾기</a></p>
                    </div>
                </div>
                <div class="btn" style="padding-left: 50px; margin-top: 0px;">
                <div class="btn">
                    <input type="submit" class="skinbtn base3 fp-next" style="background-color: red; border-color: red;"
                    value="비밀번호 찾기"></input>
                </div>
                <div class="btn">
                    <button class="skinbtn base3 fp-next" type="button" onclick="location.href='login1'" style="background-color: red; border-color: red;"><em>로그인 하러가기</em></button>
                </div>
                </div>
                </fieldset>
    </div>
    </form>
</div>
</div>
</div>
<%@include file="../includes/footer.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/passwordRelivalance.js"></script>

