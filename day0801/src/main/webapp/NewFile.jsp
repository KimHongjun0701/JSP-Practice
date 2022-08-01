<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    <!-- page 지시어 -->
    <!-- language 속성 (언어) -->
    <!-- 여러가지 속성을 가질 수 있다 -->
    
    <!-- 해당 코드가 빨간줄이 생기면 라이브러리가 문제 인것 -->
    <!-- 아파치 톰캣 (서버 런타임)이 없기 때문에 추가 해줘야함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>

<!--  HTML 주석 웹에서 공개되는 주석-->
<%-- JSP 주석 웹에서 공개되지 않는 주석 (아이디 같은 중요한 주석을 여기서 이용하면 좋다)--%>
<h1><% System.out.println("JAVA 언어로 만들었어용~"); %></h1>
<h1><%= new java.util.Date() %></h1>
<p>JAVA 언어를 사용할 수 있게해주는 서버 프로그래밍 언어</p>

</body>
</html>