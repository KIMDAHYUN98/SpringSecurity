<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user/login.jsp</title>
</head>
<body>
<h1>로그인</h1>
<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION }">
	<font color="red">
		${SPRING_SECURITY_LAST_EXCEPTION.message }
		<c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session"/>
	</font>
</c:if>

<form action="login" method="post">
	로그인	: <input name="id" ><br>
	비밀번호	: <input name="password" ><br>
	<button>로그인</button>
	<button type="reset">취소</button>
</form>
</body>
</html>