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
		width:20%;
		height:660px;
		background-color: skyblue;
		font-family: 'Gugi', cursive;
		float : left;
		
	}
	#right{
		width:50%;
		height:660px;
		float : right;
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
	#side-nav{
		margin-top:130px;
		margin-left: 20px;
	}
	#side-nav>button{
		width:90%;
		height:40px;
		margin-top : 20px;
	}
	h3{
		margin-left:65px;
	}
	img{
		width:300px;
		height:150px;
	}
	.card{
		width : 300px;
		height : 200px;
	}
</style>
</head>
<body>
	<div id="main">
		<div id="title" class="fixed-top">
			<%@include file="../include/navbar.jsp" %>
		</div>
		<div id="left">
			<div class="container">
				<div id="side-nav">
				<h3>카테고리</h3>
					 <button class="btn btn-lg category-btn" id="category-all"  onclick="location.href='e_list.do'">전체</button>
					 <button class="btn btn-lg category-btn"  onclick="location.href='e_list.do?i_category=가슴'">가슴운동</button>
					 <button class="btn btn-lg category-btn" onclick="location.href='e_list.do?i_category=등'">등운동</button>
					 <button class="btn btn-lg category-btn" onclick="location.href='e_list.do?i_category=어깨'">어깨운동</button>
					 <button class="btn btn-lg category-btn" onclick="location.href='e_list.do?i_category=삼두'">삼두운동</button>
					 <button class="btn btn-lg category-btn" onclick="location.href='e_list.do?i_category=이두'">이두운동</button>
					 <button class="btn btn-lg category-btn" onclick="location.href='e_list.do?i_category=다리'">다리운동</button>
					 <button class="btn btn-lg category-btn" onclick="location.href='e_list.do?i_category=엉덩이'">엉덩이운동</button>
				</div>
			 
			</div>
		</div>
		<div class="right">
			<div id="list" style="padding-top : 130px; margin-left : 50px; text-align:center;">
					<div class="row">
					<c:forEach var="tmp" items="${list }">
						  <div class="col-sm-6 col-md-4 card">
						  <a href="">
						    <div class="thumbnail">
						      <img src="${pageContext.request.contextPath }${tmp.i_img }" alt="...">
						      <div class="caption">
						        <h4>${tmp.i_title }</h4>
						      </div>
						    </div>
						    </a>
						  </div>
					  </c:forEach>
					</div>
			</div>
		</div>
		<div id="footer" class="fixed-bottom">
			<%@include file="../include/footer.jsp" %>
		</div>
	</div>	
</body>
</html>