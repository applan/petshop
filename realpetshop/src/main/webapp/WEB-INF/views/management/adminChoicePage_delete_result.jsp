<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Pat Shop</title>
</head>
<body>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
 $(function() {
	var res = ""+${result_delete}+"";
	if(res === "true"){
		alert("상품 삭제 성공");
		res = "";
		location.href="/adminChoicePage_delete";
	}
	if(res === "false"){
		alert("상품 삭제 실패");
		res = "";
		location.href="/adminChoicePage_delete";
	}
	if(res === ""){
		location.href="/adminChoicePage_delete";
	}
});
</script>
</html>