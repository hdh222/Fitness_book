<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 - Fitness Book</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<style>
	#i_content{
		display : none;
		width: 100%;
		height : 200px;
	}
	.jumbotron{
		text-align: center;
		margin : 0px;
		font-family: 'Gugi', cursive;
	}
	.navbar{
		font-family: 'Gugi', cursive;
	}
</style>
</head>
<body>
<jsp:include page="../../include/manager_nav.jsp"></jsp:include>
<div class="container">
	<form action="exercise_update.do" method="post" enctype="multipart/form-data">
		<input type="hidden" value="${data.i_num }" name="i_num" id="i_num"/>
		<div class="form-group">
			<label for="i_writer">작성자</label>
			<input type="text" class="form-control" value="${id }" disabled/>
		</div>
		<div class="form-group">
			<label for="i_category">카테고리</label>
			<select name="i_category" id="i_category">
				<option value="가슴운동" <c:if test="${data.i_category eq '가슴운동'}">selected</c:if>>가슴운동</option>
				<option value="등운동" <c:if test="${data.i_category eq '등운동'}">selected</c:if>>등운동</option>
				<option value="어깨운동" <c:if test="${data.i_category eq '어깨운동'}">selected</c:if>>어깨운동</option>
				<option value="이두운동" <c:if test="${data.i_category eq '이두운동'}">selected</c:if>>이두운동</option>
				<option value="삼두운동" <c:if test="${data.i_category eq '삼두운동'}">selected</c:if>>삼두운동</option>
				<option value="허벅지운동" <c:if test="${data.i_category eq '허벅지운동'}">selected</c:if>>허벅지운동</option>
				<option value="엉덩이운동" <c:if test="${data.i_category eq '엉덩이운동'}">selected</c:if>>엉덩이운동</option>
			</select>
		</div>
		
		<div class="form-group">
			<label for="i_title">제목</label>
			<input type="text" class="form-control" name="i_title" id="i_title" value="${data.i_title }"/>
		</div>
		
		<div class="form-group">
			<label for="i_content">내용</label>
			<textarea class="form-control" name="i_content" id="i_content" cols="30" rows="10">${data.i_content }</textarea>
		</div>
		
		<div class="form-group">
			<label for="m_img">썸네일</label>
			<input type="file" class="form-control" name="m_img" id="m_img" 
			accept=".jpg, .jpeg, .png, .JPG, .JPEG" id="image"/>
			<img src="${data.i_img }" alt="" />
		</div>
			
		<button class="btn btn-outline-primary" type="submit" onclick="submitContents(this);">수정</button>
		<button class="btn btn-outline-danger" type="reset" onclick="location.href='exercise.do'">목록</button>
	</form>
</div>

<script src="${pageContext.request.contextPath }/SmartEditor/js/HuskyEZCreator.js"></script>
<script>
	var oEditors = [];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "i_content",
		sSkinURI: "${pageContext.request.contextPath}/SmartEditor/SmartEditor2Skin.html",	
		htParams : {
			bUseToolbar : true,				
			bUseVerticalResizer : true,		
			bUseModeChanger : true,			
			//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
			fOnBeforeUnload : function(){
				//alert("완료!");
			}
		}, //boolean
		fOnAppLoad : function(){
			//예제 코드
			//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator: "createSEditor2"
	});
	
	function pasteHTML() {
		var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
		oEditors.getById["i_content"].exec("PASTE_HTML", [sHTML]);
	}
	
	function showHTML() {
		var sHTML = oEditors.getById["i_content"].getIR();
		alert(sHTML);
	}
		
	function submitContents(elClickedObj) {
		oEditors.getById["i_content"].exec("UPDATE_CONTENTS_FIELD", []);	
		
		try {
			elClickedObj.form.submit();
		} catch(e) {}
	}
	
	function setDefaultFont() {
		var sDefaultFont = '궁서';
		var nFontSize = 24;
		oEditors.getById["i_content"].setDefaultFont(sDefaultFont, nFontSize);
	}
	
	
</script>
</body>
</html>