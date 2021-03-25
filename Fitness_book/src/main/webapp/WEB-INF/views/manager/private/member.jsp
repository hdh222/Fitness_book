<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지 - Fitness Book</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<style>
	.jumbotron{
		text-align: center;
		margin : 0px;
	}
</style>
</head>
<body>

<jsp:include page="../../include/manager_nav.jsp"></jsp:include>
	<div class="container">
		<table class="table table-white">
			<thead>
				<tr>
					<th>아이디</th>
					<th>닉네임</th>
					<th>이름</th>
					<th>이메일</th>
					<th>가입일</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="tmp" items="${list }">
				<tr>
					<td>${tmp.user_id}</td>
					<td>${tmp.user_nick}</td>
					<td>${tmp.user_name}</td>
					<td>${tmp.user_email}</td>
					<td>${tmp.user_regdate}</td>
					<td><a href="delete.do?user_id=${tmp. user_id}">삭제</a></td>
				</tr>
			</c:forEach>	
			</tbody>
		</table>
	</div>
</body>
</html>