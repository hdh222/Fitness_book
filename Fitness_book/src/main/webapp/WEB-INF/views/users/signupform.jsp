<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 - Fitness Book</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
	<div class="container">
	
	<h1 class="text-center">Fitness Book</h1>	
		<form action="signup.do" method="post" id="signUpForm">
			<input type="hidden" id="user_email" name="user_email"/>
			<div class="form-group">
				<label for="user_id">아이디</label>
				<input type="text" class="form-control" id="id" name="user_id"/>
				<div class="invalid-feedback">사용 할 수 없는 아이디입니다.</div>
			</div>
			<div class="form-group">
				<label for="user_pwd">비밀번호</label>
				<input type="password" class="form-control" id="user_pwd" name="user_pwd"/>
				<div class="invalid-feedback">비밀번호가 다릅니다.</div>
			</div>
			<div class="form-group">
				<label for="user_pwd2">비밀번호 확인</label>
				<input type="password" class="form-control" id="user_pwd2" name="user_pwd2"/>
			</div>
			<div class="form-group">
				<label for="user_name">이름</label>
				<input type="text" class="form-control" id="user_name" name="user_name"/>
			</div>
			<div class="form-group">
				<label for="user_nick">닉네임</label>
				<input type="text" class="form-control" id="user_nick" name="user_nick"/>
				<div class="invalid-feedback">사용 할 수 없는 닉네임입니다.</div>
				<button id="checkNick">중복검색</button>
			</div>
			<div class="form-group">
				<label for="user_email">이메일</label>
				<div class="row">
					<input type="text" class="form-control col-4" id="email1" style="margin-left: 13px;"/>@<input type="text" class="form-control col-4" id="email2"/>
					<select name="email_address" id="email_address">
						<option value="naver.com">naver.com</option>
						<option value="hanmail.com">hanmail.com</option>
						<option value="google.com">google.com</option>
						<option value="" selected>직접입력</option>
					</select>
					</div>
			</div>
			<button class="btn btn-outline-primary" type="submit">가입</button>
			<button class="btn btn-outline-danger" type="reset">취소</button>
		</form>
	</div>
	
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
	<script>
		var reg_id = /^[a-z].{4,9}$/;
		var reg_pwd = /^.{5,10}$/;
		var reg_email = /@/;
		
		var isIdValid = false;
		var isPwdValid = false;
		var isEmailValid = false;
		var isNickValid = false;
		
		$("#signUpForm").on("submit",function(){
			isFormValid = isIdValid && isPwdValid && isEmailValid && isNickValid;
			if(!isFormValid){
				return false;
			}
		});
	
		$("#id").on("input", function(){
			var inputId = $("#id").val();
			var result = reg_id.test(inputId);
			
			$(this).removeClass("is-valid is-invalid");
			if(result){
				$.ajax({
					method : "get",
					url : "checkid.do",
					data : "user_id=" + inputId,
					success : function(data){
						$(this).removeClass("is-invalid");
						if(data.isExist){
							isIdValid=false;
							$("#id").addClass("is-invalid");
						}else{
							isIdValid = true;
							$("#id").addClass("is-valid");
						}
					}
				});
			}else{
				isIdValid = false;
				$("#id").addClass("is-invalid");
			}
		});
		
		$("#checkNick").on("click", function(){
			var inputNick = $("#user_nick").val();
			$(this).removeClass("is-valid is-invalid");
			
			$.ajax({
				method : "get",
				url : "checknick.do",
				data : "user_nick=" + inputNick,
				success : function(data){
					if(data.exist){
						isNickValid = false;
						$("#user_nick").addClass("is-invalid");
					}else{
						isNickValid = true;
						$("#user_nick").addClass("is-valid");
					}
				}
				
			});
		});
		
		$("#user_pwd, #user_pwd2").on("input", function(){
			
			$("#user_pwd").removeClass("is-valid is-invalid");
			var inputPwd = $("#user_pwd").val();
			var inputPwd2 = $("#user_pwd2").val();
			
			if(inputPwd == inputPwd2){
				isPwdValid = true;
				$("#user_pwd").addClass("is-valid");
			}else{
				isPwdValid = false;
				$("#user_pwd").addClass("is-invalid");
			}
		});
		
		$("#email_address").on("change", function(){
			var value = $("#email_address").val();
			$("#email2").val(value);
			
			var user_email = $("#email1").val() + "@" + $("#email2").val();
			
			$("#user_email").val(user_email);
			isEmailValid = true;
		});
		
		
	</script>
</body>
</html>