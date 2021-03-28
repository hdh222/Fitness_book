<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FitnessBook</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<style>
	.footer{
		height:100px;
		background-color: black;
		text-align: center;
		color: white;
		
	}
	.navbar{
		font-family: 'Gugi', cursive;
	}
	
</style>
</head>
<body>
<div id="main">
	<%@ include file="include/navbar.jsp" %>
	
	<%@ include file="include/footer.jsp" %>
 </div>
</body>
</html>