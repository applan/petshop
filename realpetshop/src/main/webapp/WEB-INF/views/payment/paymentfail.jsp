<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제에 실패하였습니다</title>
</head>
<body>
<h2>이전 화면으로 돌아가시려면 확인 버튼을 눌러주세요</h2>
<button id="button-click" onclick="button_click();">확인</button>
<script>
function button_click() {
	alert("이전 페이지로 돌아갑니다.");
	location.href='/backpage';
}
</script>
</body>
</html>