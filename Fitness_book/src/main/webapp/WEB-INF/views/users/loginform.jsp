<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 - Fitness Book</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/loginform.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<style>
	#div-right{
		background-image: url("../resources/images/1.jpg");
		background-size: 100% 100%;
	}
	h1{
		font-family: 'Gugi', cursive;
	}
</style>
</head>	
<body>

		<div class="row">
			<div class="col-4" id="div-left">
				<div class="form">
				<h1>Fitness Book</h1>
					<form action="login.do" method="post">
						<div class="form-group">
							<input type="text" class="form-control input" id="id" name="user_id" placeholder="아이디"/>
						</div>
						<div class="form-group">
							<input type="password" class="form-control input" id="pwd" name="user_pwd" placeholder="비밀번호"/>
						</div>
						<button class="btn" type="submit">로그인</button>
						<!-- 네이버 로그인 창으로 이동 -->
						<div id="naver_id_login" style="text-align:center;"><a href="${url}">
						<img width="300" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a></div>
						<br>
					</form>
					<button class="btn" id="signupbtn" onclick="location.href='signupform.do'">회원가입</button>
					<p class="small" style="margin-left: 141px; margin-top: 15px;">
					<a href="">아이디 찾기</a>&nbsp;|&nbsp;<a href="">비밀번호 찾기</a></p>
				</div>
			</div>
			<div class="col-8" id="div-right">
				
			</div>
		</div>
	
</body>
</html>