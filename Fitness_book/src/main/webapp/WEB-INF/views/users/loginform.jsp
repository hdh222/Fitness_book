<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 - Fitness Book</title>
<style>
	.form{
		padding-top : 200px;
		width:300px; height:160px;
		margin: 0 auto;
	}
	.input{
		height:50px;
		width:300px;
	}
	.login{
		height:50px;
		width:300px;
	}
	.small>a{
		color: gray;
		text-align: right;
	}
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>	
<body>
	<div class="container">
		<div class="form text-center">
		<h1>Fitness Book</h1>
			<form action="login.do" method="post">
				<div class="form-group">
					<input type="text" class="input" id="id" name="user_id" placeholder="아이디"/>
				</div>
				<div class="form-group">
					<input type="password" class="input" id="pwd" name="user_pwd" placeholder="비밀번호"/>
				</div>
				<button class="login" type="submit">로그인</button>
			</form>
			<p class="small"><a href="">아이디 찾기</a>&nbsp;|&nbsp;<a href="">비밀번호 찾기</a></p>
		</div>
	</div>
</body>
</html>