<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int result = 0; // 초기화 필수

// 해당 jsp를 실행하면 여기부터 읽고 이후에 body로 들어가기때문에
// 여기에 있는 값들이 null로 나올수 있기때문에 조건을 잘 걸어주어야 한다
// 조건이 없었다면 500 에러가 났을 것이다
	if (request.getMethod().equals("POST")) {
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	// 웹에서 가져오는 모든 값은 String 타입으로 가져온다 **
	String op = request.getParameter("op");

	if (op.equals("+")) {
		result = num1 + num2;
	} else if (op.equals("-")) {
		result = num1 - num2;
	} else if (op.equals("*")) {
		result = num1 * num2;
	} else if (op.equals("/")) {
		result = num1 / num2;
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기 - 1</title>
</head>
<body>

	<h1>계산기</h1>
	<hr>
	<!-- 선 긋기 -->
	<form method="post">
		<!-- form의 submit을 통해 POST 방식으로 '요청' -->
		<!-- 요청에 대한 정보는 request 객체에 저장되어있음 -->
		<input type="text" name="num1"> <select name="op">
			<option>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select> <input type="text" name="num2">
		<!-- input이나 select에 대한 값을
		 name이라는 속성으로 찾을 수 있음  -->

		<input type="submit" value="계산 결과보기">
	</form>
	<h2>
		계산 결과:
		<%=result%></h2>
	<!-- result 를 선언 초기화를 해주어야함 -->

</body>
</html>