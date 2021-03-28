<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<div id="navbar">
		<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
		    <a class="navbar-brand" href="${pageContext.request.contextPath }/home.do">Fitness Book</a>
		    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
		      <li class="nav-item active">
		        <a class="nav-link" style="color:black;" href="${pageContext.request.contextPath }/menu/e_list.do">부위별 운동법</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" style="color:black;"  href="#">타임라인</a>
		      </li>
		    </ul>
		    	<c:choose>
					<c:when test="${empty id }">
						<a href="${pageContext.request.contextPath }/users/loginform.do" id="login">로그인</a>
						<a href="${pageContext.request.contextPath }/users/signupform.do" id="signup">회원가입</a>
					</c:when>
					<c:when test="${id eq 'admin1' }">
						<p>
							<strong>
								<a href="${pageContext.request.contextPath }/manager/private/member.do">
									<img src="https://www.flaticon.com/svg/vstatic/svg/848/848043.svg?token=exp=1616934675~hmac=4011feb521cd71f29b25967566109e9f" id="userimg" />
								</a>
									<span style="margin-right:20px;">${id }님</span>
							</strong>
							<a href="${pageContext.request.contextPath }/manager/private/logout.do">
								<img src="https://www.flaticon.com/svg/vstatic/svg/3596/3596141.svg?token=exp=1616934604~hmac=94b3d8765729da152e5624378850e35a" id="logoutimg" />
							</a>
						</p>
					</c:when>
					<c:otherwise>
						<p>
							<strong>
								<a href="${pageContext.request.contextPath }/users/private/mypage.do">
									<img src="https://www.flaticon.com/svg/vstatic/svg/848/848043.svg?token=exp=1616934675~hmac=4011feb521cd71f29b25967566109e9f" id="userimg" />
								</a>
									<span style="margin-right:20px;">${id }님</span>
							</strong>
							<a href="${pageContext.request.contextPath }/users/private/logout.do">
								<img src="https://www.flaticon.com/svg/vstatic/svg/3596/3596141.svg?token=exp=1616934604~hmac=94b3d8765729da152e5624378850e35a" id="logoutimg" />
							</a>
						</p>
					</c:otherwise>
				</c:choose>
		    </p>
		  </div>
		</nav>
	</div>