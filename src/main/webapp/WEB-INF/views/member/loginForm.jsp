<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>	
<script src="<c:url value='/js/Login.js'/>"></script>	
<link rel="stylesheet" href=<c:url value='/css/Login.css'/>>
<script type="text/javascript"></script>
</head>

<body>
<header id="headerMenu">
	<div id="titleimg">
		<a href="<c:url value='/'/>"><img src="<c:url value='/image/image04.png'/>"></a>
	</div>
<div class="loginBtn">
		</div>
		<input class="burger-check" type="checkbox" id="burger-check" />
		<label class="burger-icon" for="burger-check">
		<span class="burger-sticks"></span></label>
		<div class="menu">
			<div style="width: 200px;">
				<div id="header">
					<ul>
					<c:if test="${empty sessionScope.sid }">
						<li><br></li>
						<li><a href="<c:url value='/member/loginForm'/>">로그인하세요</a></li>
						<li><a href="<c:url value='/member/joinForm2'/>">회원가입</a></li>
						<li><a href="<c:url value='/movie/movieInfo'/>">영화정보</a></li>
						<li><a href="<c:url value='#'/>">고객센터</a></li>
						</c:if>		
						
						<c:if test="${not empty sessionScope.sid }">
							${sessionScope.sid}님 환영합니다! 
							<li><a href="<c:url value='/member/logout'/>">로그아웃</a></li>
							<li><a href="<c:url value='#'/>">고객센터</a></li>
							<li><a href="<c:url value='/review/sawMovieList'/>">리뷰채팅</a></li>
							<li><a href="<c:url value='/member/myPage'/>">My Page</a></li>
						</c:if>
						
					</ul>
				</div>
			</div>
		</div>

		<!-- 사진크기에 따라 height크기가 바뀜 -->
		<!-- 로그인, 회원가입 -->
	</header>
<nav>
		<div id="mainMenuBox">
			<ul id="menuItem">
				<li><a href="<c:url value='/movie/movieInfo'/>">영화정보</a></li>
				<li><a href="<c:url value='/reservation/reservation'/>">예매하기</a></li>
				<li><a href="<c:url value='#'/>">이벤트</a></li>
				<li><a href="<c:url value='/review/sawMovieList'/>">리뷰채팅</a></li>
				<li><a href="<c:url value='#'/>">고객센터</a></li>
				<li><a href="<c:url value='#'/>">기프트샵</a></li>
			</ul>
		</div> <!-- mainMenuBox 끝 -->
	</nav>

  <div class="loginbox">
      <h1>GBSJ Login</h1>
      <form id="loginForm">
         <fieldset>
             <legend>로그인 구역</legend>
             <label for="loginid">아이디</label>
             <input type="text" name="memId" id="memId" placeholder="아이디 입력">
             <label for="loginpw">비밀번호</label>
             <input type="password" name="memPwd" id="memPwd" placeholder="비밀번호 입력">
             <ul>
                <li><a href="<c:url value='#'/>">아이디/비밀번호찾기</a></li>&ensp;
                <li><a href="<c:url value='#'/>">|</a></li>&ensp;
                <li><a href="<c:url value='/member/joinForm2'/>">회원가입</a></li>
             </ul>
           
             <input type="submit" id="submit" value="로그인" >
          <div class="signup_area" id="otherlogin">
            
            <a href="<c:url value='#'/>" id="btnConnectNaver" class="naver"><img src="<c:url value='/image/네이버아이디로 로그인.png'/>"></a><br>
            <a href="<c:url value='#'/>" id="btnConnectGoogle" class="google"><img src="<c:url value='/image/구글아이디로 로그인.png'/>"></a><br>
            <a href="<c:url value='#'/>" id="btnConnectKakao" class="kakao"><img src="<c:url value='/image/카카오아이디로 로그인.png'/>"> </a>
        	</div>
         </fieldset>
      </form>
      
  </div>
<footer>
			<div id="footerBox">
	            	 <div id="bottomMenuBox">
	            	 	<ul id="botttomMenuItem">
	            	 		<li><a href="<c:url value='#'/>">회사소개</a></li>
							<li><a href="<c:url value='#'/>">이용약관</a></li>
							<li><a href="<c:url value='#'/>">개인정보처리방침</a></li>
							<li><a href="<c:url value='#'/>">회원정보</a></li>
							<li><a href="<c:url value='#'/>">고객센터</a></li>
							<li><a href="<c:url value='#'/>">GBSJ Corp.</a></li>
	            	 	</ul>
	            	 </div>
	            	 <br><br><br><hr>
	            	 <div id="bottomimg">
	            		 <span><img src="<c:url value='/image/image02.png'/>"></span>&emsp;&emsp;&emsp;
	            		 <span><img src="<c:url value='/image/moveToTop.png'/>" id="moveToTop"></span>
	            	 </div>
            	</div>
		</footer>
</body>
</html>


