<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
 $(function() {
	 // 이메일 전송 후 결과 

	var res = "${result_email}";
	if(res === "true"){
		alert("이메일 전송 성공");
		res = "";
		location.href="/email";
	}
	if(res === "false"){
		alert("이메일 전송 실패");
		res = "";
		location.href="/email";
	}
	
	
	
	var res2 = "${result_en}";
	if(res2 === "true"){
		alert("새로운 상품 추가 성공");
		res2 = "";
		location.href="/adminChoicePage_delete";
	}
	if(res2 === "false"){
		alert("새로운 상품 추가 실패");
		res2 = "";
		location.href="/adminChoicePage_enrollment";
	}
	
	
	 
	 // 상품 삭제 후 넘어오는 결과
	var res3 = "${result_delete}";
	if(res3 === "true"){
		alert("상품 삭제 성공");
		res3 = "";
		location.href="/adminChoicePage_delete";
	}
	if(res3 === "false"){
		alert("상품 삭제 실패");
		res3 = "";
		location.href="/adminChoicePage_delete";
	}
	
	
	// 회원 삭제 후 넘어오는 결과
	var res4 = "${result_delete_member}";
	if(res4 === "true"){
		alert("회원 삭제 성공");
		res4 = "";
		location.href="/adminChoicePage_member";
	}
	if(res4 === "false"){
		alert("회원  삭제 실패");
		res4 = "";
		location.href="/adminChoicePage_member";
	}
	
	// 물건 복원 후 넘어오는 결과
	var res5 = "${result_restore}";
	if(res5 === "true"){
		alert("상품 정보 복원 성공");
		res5 = "";
		location.href="/adminChoicePage_delete";
	}
	if(res5 === "false"){
		alert("상품 정보 복원 실패");
		res5 = "";
		location.href="/adminChoicePage_delete";
	}
	
});
</script>
</body>
</html>