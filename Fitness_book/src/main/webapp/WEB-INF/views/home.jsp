<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<style>
	#main{
		width:100%;
		height:100%;
	}
	#title{
		width:100%;
		height:100px;
	}
	.navbar{
		font-family: 'Gugi', cursive;
	}
	#left{
		width:50%;
		height:660px;
		background-image: url("./resources/images/main.JPG");
		background-size: 100% 99%;
		float : left;
	}
	#right{
		width:50%;
		height:660px;
		float : right;=
	}
	#right p{
		margin-top : 180px;
		line-height : 150px;
		text-align : center;
		color : black;
		font-family: 'Gugi', cursive;
		font-size : 20px;
	}
	#footer{
		width:100%;
		height:100px;
		background-color:black;
		text-align: center;
		color: white;
	}
	
</style>
</head>
<body>
	<div id="main">
		<div id="title" class="fixed-top">
			<%@include file="include/navbar.jsp" %>
		</div>
		<div id="left"></div>
		<div id="right">
				<p>운동할때의 고통은 잠깐이지만 <br />
				감량 후의 즐거움은 평생입니다.</p>
		</div>
		<div id="footer" class="fixed-bottom">
			<%@include file="include/footer.jsp" %>
		</div>
	</div>
</body>
</html>