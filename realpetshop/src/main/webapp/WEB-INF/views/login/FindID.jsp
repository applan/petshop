<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>

<link rel = "stylesheet" href = "/resources/css/gd_common.css" />
<link rel = "stylesheet" href = "/resources/css/gd_content.css" />

<div id="container">
        <!-- 본문 시작 : start -->
        <div id="content">

<div class="member">
	<img src="/resources/img/logo.png" style="width: 300px; margin-left: 130px;" />


    <form id="formFindId"  action="" ><!-- method="post" novalidate="novalidate"-->
        <div class="box">
            <div id="divFindId">
                <h3>회원 아이디찾기</h3>

                <div class="login" style="padding-bottom: 20px;">
                    <div class="input-info">
                    
   
							
                        <div >
 
                            <input type="text" class="text" id="username" name="username" class="form-control" placeholder="이름">
                            <small id="username" class="text-info"></small>
                        </div>
		<br/>
                        <div >
                  
                             <input type="text" class="text" id="email" name="email" class="form-control"placeholder="가입메일주소">
                            <small id="email" class="text-info"></small>
                        </div>
<!-- 실험용 -->
<a href="EditPersonalInformation" style="color:black;">개인정보수정</a>


                    </div>
                    <button type="submit" class="skinbtn point2 fi-id" style="height:103px;"><em>아이디 찾기</em></button>
                </div>
                <p class="dn caution-msg1">일치하는 회원정보가 없습니다. 다시 입력해 주세요.</p>
            </div>
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
        <!-- 본문 끝 : end -->

</div>
<%@include file="../includes/footer.jsp" %>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/findid.js"></script>