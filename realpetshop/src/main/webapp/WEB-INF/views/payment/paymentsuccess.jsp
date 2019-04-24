<%@page import="com.spring.domain.ShopVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% List<ShopVO> list=(List)request.getAttribute("list");
    int result3 = 0;
    for(int i=0; i<list.size(); i++){
    	result3 += list.get(i).getSummoney();
    	
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>이용해주셔서 대단히 감사합니다</h2>
<table border="1px solid">
	<tr align="center">
		<th>상품명</th>
		<th>이용 기간</th>
		<th>결제 수단</th>
		<th>결제 결과</th>
		<th>결제 금액</th>
	</tr>
	<tr>
	<!-- 상품 반복문 들어갈 구간 -->
	<%for(ShopVO vo:list){
	%>
	</tr>
		<th><%=vo.getProductname() %></th>
		<th><%=vo.getMonth() %></th>
		<th><%=vo.getPaymentdata() %></th>
		<th><%=vo.getResult2() %></th>
		<th><%=vo.getMoney() %></th>
	<%} %>
	<tr>
		<th colspan="4">합 계</th>
		<td><%= result3  %>원</td>
	</tr>
	<tr>
	<td colspan="5" align="center">
	<button id="button-click" onclick="button_click();">메인페이지로 이동</button></td>
	</tr>
</table>
<script>
function button_click() {
	alert("메인페이지로 돌아갑니다.");
	location.href='/home';
}
</script>
</body>
</html>