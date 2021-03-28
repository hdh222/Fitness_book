<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
	<p><a href="exercise_form.do" class="float-right">새 글 작성</a></p>
	<table class="table">
		<thead>
			<tr>
				<th>카테고리</th>
				<th>제목</th>
				<th>작성자</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${list }">
				<tr>
					<td>${tmp.i_category }</td>
					<td><a href="e_detail.do?i_num=${tmp.i_num }">${tmp.i_title }</a></td>
					<td>${tmp.i_writer }</td>
					<c:if test="${tmp.i_writer eq id }">
						<td><a href="e_delete.do?i_num=${tmp.i_num }">삭제</a></td>	
					</c:if>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="form-group">
		<form action="exercise.do" method="get">
			<select name="search_option" id="search_option">
				<option value="title_category">제목+카테고리</option>
				<option value="title">제목</option>
				<option value="category">카테고리</option>
			</select>
			<input type="text" name="keyword" id="keyword" />
			<button type="submit">검색</button>
		</form>
	</div>
</div>
</body>
</html>