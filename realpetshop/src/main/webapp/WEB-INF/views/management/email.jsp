<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="/sendEmail" method="post">
   <input type="email"  name = "to" placeholder="보낼 사람 이메일 입력"/>
   <input type="text" name="subject" placeholder="제목 입력"/>
   <input type="text" name="text" placeholder="내용"/>
   <input type="submit" />
 </form>
</body>
</html>