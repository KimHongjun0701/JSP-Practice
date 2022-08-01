<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="cb" class="test.CalcBean" />
<%-- test 패키지에 있는 CalcBean 클래스를 cb 라는 이름으로 객체화 --%>
<%-- CalcBean cb = new CalcBean(); 와 같은 뜻 --%>
<%-- 객체화만 했을 뿐 setter를 이용하여 저장해야 함 ( 하지만 자동매핑이 있다?! 홀리 쉣 )--%>

<jsp:setProperty property="*" name="cb" />
<%-- cb 라는 이름을 가진 객체의 setter 메서드 자동매핑호출 --%>
<%-- * 은 모든 멤버변수를 뜻함 --%>
<%-- 자바 클래스의 변수명과 == HTML name의 변수명과 같아야한다 ** (자주 실수 하는 부분) --%>

<% 	cb.calc();  %>
<%-- 실행했을 때 오류가 발생했는데 --%>
<%-- 자동 매핑을 했지만, 아무값도 없는 것을 매핑하기 때문에 기본 초기화가 되어 int값은 0으로 String값('op')은 null로 초기화된다 --%>
<%-- cb.calc(); 메소드를 실행하게되면 op에 null 값이 들어있기 때문에 오류가 발생하게 된다 --%>
<%--   ->  CalcBean 자바 클래스 파일에 들어가서 op를 임의로 초기화 해줌으로서 해결 --%>

<%-- .jsp -> .java(서블릿 파일) 가장먼저 수행 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기 - 2</title>
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
		계산 결과 : <jsp:getProperty property="result" name="cb"/>  </h2>
		  <!-- getter를 부르는 jsp문  property="멤버변수" name="객체화한 이름" -->

</body>
</html>