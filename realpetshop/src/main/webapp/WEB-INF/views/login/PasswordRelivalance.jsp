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



<div class="container">
	<div class="no-gutters py-5 row">
		<div class="col-1 col-sm-4"></div>
		<div class="col-10 col-sm-4">
			<div class="text-center">
				<!-- 본문 시작 : start -->
				<!-- <img src="/resources/img/logo.png" style="width: 300px; margin-left: 130px;" /> -->
				<form class="formFindPassword" action="">
					<!-- method="post" novalidate="novalidate"-->
					<p class="p">
						<i class="fas fa-cat"></i>
					</p>
					<label for="username" class="sr-only"></label> <input type="text"
						id="username" class="form-control" placeholder="아이디" required
						autofocus> <label for="email" class="sr-only"></label> <input
						type="email" id="email" class="form-control"
						placeholder="가입한 이메일 주소" required>
					<button type="button"
						class="btn btn-primary btn-block btn-lg gradient" type="submit">비밀번호찾기
					</button>

					<!-- 				<p class="dn caution-msg1">일치하는 회원정보가 없습니다. 다시 입력해 주세요.</p>
 -->

					<div class="foo">
						<div>
							<h6>
								|<a href="FindID" style="color: black;">아이디 찾기</a>| <a
									href="login1" style="color: black;">로그인하기</a>|
							</h6>
						</div>
					</div>
					<div>
						<p class="mt-5 mb-3 text-muted">© 2019-01-10~2019-06-20</p>
					</div>
				</form>
			</div>
		</div>
		<div class="col-1 col-sm-4"></div>
	</div>
</div>
<%@include file="../includes/footer.jsp"%>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/passwordRelivalance.js"></script>
<!-- <script type="text/javascript">
    $(document).ready(function () {
        $('input').keyup(function () {
            $('#errorMessage', 'form').addClass('dn');
        });

        $('.btn-find-id').click(function (e) {
            location.href = '../member/find_id.php';
            e.preventDefault();
        });

        $('#formFind button[type="submit"]').click(function () {
            if ($('#formFind').valid() == false) return false;
        });

        $('#formFind').validate({
            dialog: false,
            rules: {
                memberId: {
                    required: true
                }
            },
            messages: {
                memberId: {
                    required: "아이디를 입력해주세요"
                }
            }, submitHandler: function (form) {
                var data = $(form).serializeArray();
                data.push({name: "mode", value: "find_member"});

                $.post('../member/find_ps.php', data).done(function (data, textStatus, jqXHR) {
                    console.log('gd_member ajax', data, textStatus, jqXHR);
                    var code = data.code;
                    var message = data.message;
                    if (_.isUndefined(code) && _.isUndefined(message)) {
                        form.submit();
                    } else {
                        $('#errorMessage', form).removeClass('dn').html('<strong>' + message + '</strong>');
                    }
                });
            }
        });
    });
</script> -->
<%@include file="../includes/footer.jsp"%>
