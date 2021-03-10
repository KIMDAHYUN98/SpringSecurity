<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--  session="false" : 실행할 때 마다 섹션을 새로 생성한다.  -->
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

	<ul>
		<li><a href="user">일반 사용자용 페이지로</a></li>
		<li><a href="admin">관리자 전용 페이지로</a></li>
		<li><a href="top">톱 페이지로</a></li>
	</ul>
<c:if test="${not empty access_token}">
	${loginId } 님 <a href="logout">로그아웃</a>
</c:if>

<c:if test="${empty access_token}">
	<a href="loginForm">로그인</a>
</c:if>
</body>
</html>
