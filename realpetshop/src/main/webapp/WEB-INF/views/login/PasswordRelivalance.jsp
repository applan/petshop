<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>
<link rel = "stylesheet" href = "/resources/css/gd_common.css" />
<link rel = "stylesheet" href = "/resources/css/gd_content.css" />




    <div id="container">
        <!-- 본문 시작 : start -->
        <div id="content">
<img src="resources/img/logo.png" style="width:300px; margin-left: 800px; margin-top: 50px; " />
<div class="member find-pw-page" style="padding-left: 30px; padding-top: 0px;">
    <h2>비밀번호 찾기</h2>
<form class="passwordsearch" id="passwordsearch" action="">
    <div class="box">
    	<fieldset>
                <h3>아이디, 이메일 입력</h3>

                <p class="guide" style="font-size: small;">비밀번호를 찾고자 하는 아이디, 이메일을 입력해 주세요.</p>
           
                <div class="find-pw" style="padding:0px; border-top: 0px;">
                    <div class="input-id">          
                            <input type="text" id="userid" name="userid" class="form-control" placeholder="아이디">
                        	<small id="userid" class="text-info"></small>
                    </div>
                </div>
                <div class="find-pw" style="padding:0px; border-top: 0px;">
                    <div class="input-id">   
                            <input type="email" id="email" name="email" class="form-control" placeholder="이메일">
                        	<small id="email" class="text-info"></small>
                        <p style="font-size: small; margin-bottom: 0px;">아이디를 모르시나요?<a href="FindID" class="btn-find-id">아이디 찾기</a></p>
                    </div>
                </div>
                <div class="btn" style="padding-left: 50px; margin-top: 0px;">
                <div class="btn">
                    <button type="submit" class="skinbtn base3 fp-next" style="background-color: red; border-color: red;"><em>비밀번호 찾기</em></button>
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
<%@include file="../includes/footer.jsp" %>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/passwordRelivalance.js"></script>

