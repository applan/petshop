<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel = "stylesheet" href = "/resources/css/gd_common.css" />
<link rel = "stylesheet" href = "/resources/css/gd_content.css" />
<link rel = "stylesheet" href = "/resources/css/gd_custom.css" />
<link rel = "stylesheet" href = "/resources/css/gd_goods-view.css" />
<link rel = "stylesheet" href = "/resources/css/gd_item-display.css" />
<link rel = "stylesheet" href = "/resources/css/gd_layout.css" />
<link rel = "stylesheet" href = "/resources/css/gd_layout.css" />
 <link rel = "stylesheet" href = "/resources/css/gd_share.css" />

<!-- resources 앞에 / 를 붙일때는 context path가 없는 경우일 때 -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<script src="/resources/js/jquery-3.3.1.js"></script>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/register.js"></script>
</head>
<div id="container">


        <!-- 본문 시작 : start -->
        <div id="content">

<div class="member">
    <h2>아이디찾기</h2>

    <form id="formFindId" method="post" action="../member/member_ps.php" novalidate="novalidate">
        <div class="box">
            <div id="divFindId">
                <h3>회원 아이디찾기</h3>

                <div class="login">
                    <div class="input-info">
                        <div>
                            <input type="text" class="text" id="userName" name="userName">
                        </div>
                            <label for="userName">이름</label>
                        <div>
                            <input type="text" class="text" id="userEmail" name="userEmail" placeholder="가입메일주소">
                        </div>
                            <label for="userEmail">이메일</label>
                    </div>
                    <button type="submit" class="skinbtn point2 fi-id"><em>아이디 찾기</em></button>
                </div>
                <p class="dn caution-msg1">일치하는 회원정보가 없습니다. 다시 입력해 주세요.</p>
            </div>
            <div class="btn">
                <button class="skinbtn default fi-pw find-id btn-find-password"><em>비밀번호 찾기</em></button>
                <button class="skinbtn default fi-login find-id btn-login"><em>로그인하기</em></button>
            </div>
        </div>
    </form>
</div>


<script type="text/javascript">
    $(document).ready(function () {
        $('input').keyup(function () {
            $('.caution-msg1', 'form').addClass('dn');
        });
        $('.btn-find-password', 'form').click(function (e) {
            location.href = '';
            e.preventDefault();
        });
        $('.btn-login', 'form').click(function (e) {
            location.href = '../member/login.php';
            e.preventDefault();
        });

        $('#formFindId').validate({
            dialog: false,
            rules: {
                userName: {
                    required: true
                },
                userEmail: {
                    required: true,
                    email: true
                }
            },
            messages: {
                userName: {
                    required: "이름을 입력해주세요."
                },
                userEmail: {
                    required: "이메일을 입력해주세요.",
                    email: "메일 형식이 틀렸습니다."
                }
            }, submitHandler: function (form) {
                var params = $(form).serializeArray();
                params.push({name: "mode", value: "findId"});
                $.post('../member/find_ps.php', params).done(function (data, textStatus, jqXHR) {
                    if (data.result) {
                        var compiled = _.template($('#templateFindIdResult').html());
                        var result_message = __('회원님의 아이디는 %s 입니다', '<br><strong>' + data.memberId + '</strong>');
                        var templateData = {memberId: data.memberId, userName: $('#userName').val(), "result_message": result_message};
                        $('#divFindId').html(compiled(templateData));
                    } else {
                        $(form).find('.caution-msg1').removeClass('dn').text(data.message);
                    }
                });
            }, invalidHandler: function (form, validator) {
                var errors = validator.numberOfInvalids();
                if (errors) {
                    $(form.target).find('.caution-msg1').removeClass('dn').text(validator.errorList[0].message);
                    validator.errorList[0].element.focus(); 
                }
            }
        });
    });
</script>
<%-- <script type="text/template" id="templateFindIdResult">
    <p class="result-msg"><%=userName%> <%=result_message%></p>
</script> --%>
</div>
        <!-- 본문 끝 : end -->

    </div>