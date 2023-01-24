<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>간편 회원가입</title>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/joinForm2.js'/>"></script>
		<link rel="stylesheet" href=<c:url value='/css/joinForm2.css'/>>
		<script type="text/javascript">	
		</script>			
	</head>
	<body>
	<header id="headerMenu">
	<div id="titleimg">
		<a href="<c:url value='/'/>"><img src="<c:url value='/image/image04.png'/>"></a>
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
		<div class="joinForm2">
	<p class="info" id="info">회원가입 후 다양한 서비스를 즐겨보세요.</p>

	<fieldset>
        <p class="join_btn">
			<a href="<c:url value='/member/checkBox'/>" id="btnConnectNaver" class="join"><img src="<c:url value='/image/회원가입.png'/>"></a><br>
		</p>
        <div class="signup_area" id="otherjoin">
            <p class="desc"><span>간편 회원가입</span></p>
            <a href="<c:url value='#'/>" id="btnConnectNaver" class="naver"><img src="<c:url value='/image/네이버회원가입.png'/>"></a><br>
            <a href="<c:url value='#'/>" id="btnConnectGoogle" class="google"><img src="<c:url value='/image/구글회원가입.png'/>"></a><br>
            <a href="<c:url value='#'/>" id="btnConnectKakao" class="kakao"><img src="<c:url value='/image/카카오회원가입.png'/>"></a>
        </div>

	</fieldset>
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
</div>
	</body>
</html>


