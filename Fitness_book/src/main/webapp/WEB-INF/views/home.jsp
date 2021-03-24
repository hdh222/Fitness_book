<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FitnessBook</title>
</head>
<body>
<h1>메인페이지</h1>
<c:choose>
	<c:when test="${empty id }">
		<a href="${pageContext.request.contextPath }/users/loginform.do">로그인</a>
		<a href="${pageContext.request.contextPath }/users/signupform.do">회원가입</a>
	</c:when>
	<c:otherwise>
		<p><strong><a href="${pageContext.request.contextPath }/users/mypage.do">${id }</a>님</strong>
		</p>
	</c:otherwise>
</c:choose>
</body>
</html>