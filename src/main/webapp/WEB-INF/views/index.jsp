<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>GBSJ.movie</title>
			<style>
				iframe { width:1300px; height:480px; border:none; }
			</style>
			<link rel="stylesheet" href=<c:url value='/css/main.css'/>>
			<link rel="stylesheet" href=<c:url value='/css/theater.css'/>>
			<link rel="stylesheet" href=<c:url value='/css/header.css'/>>
			<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
			<script src="<c:url value='/js/main.js'/>"></script>
			<script src="<c:url value='/js/theater.js'/>"></script>
			<script src="<c:url value='/js/main2.js'/>"></script>
		</head>
	<body>
	<!-- top -->
   <header id="headerMenu">
	<div id="titleimg">
		<a href="<c:url value='/'/>"><img src="<c:url value='/image/image04.png'/>"></a>
	</div>
<div class="loginBtn">
		</div>
		<input class="burger-check" type="checkbox" id="burger-check">
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
				<li><a href="<c:url value='/reservation/movielist'/>">예매하기</a></li>
				<li><a href="<c:url value='#'/>">이벤트</a></li>
				<li><a href="<c:url value='/review/sawMovieList'/>">리뷰채팅</a></li>
				<li><a href="<c:url value='#'/>">고객센터</a></li>
				<li><a href="<c:url value='#'/>">기프트샵</a></li>
			</ul>
		</div> <!-- mainMenuBox 끝 -->
	</nav>
   <div id="wrap">
   
	<div>
		<section>
			<article id="slideShow"> <!-- 슬라이드 쇼 -->
				<div id="prevNextButtonBox">
					<img id="prevButton" src="<c:url value='/image/prevButton.png'/>">
            		<img id="nextButton" src="<c:url value='/image/nextButton.png'/>">
				</div>
				<div id="slideShowBox"> <!-- 슬라이드 쇼 박스-->
					<div id="slidePanel">
						<img src="<c:url value='/image/donggam.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/jjanggu.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/blackadam.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/confession.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/decibel.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/distributor.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/everything.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/life.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/nom.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/owl.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/remember.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/strange_world.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/taeil.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/thefall.jpg'/>" class="slideImage">
						<img src="<c:url value='/image/wakanda.jpg'/>" class="slideImage">

					</div>
				</div> <!-- 슬라이드 쇼 박스 끝 -->
				<!-- (3) 컨트롤 버튼 -->
				<div id="controlButtonBox">
					<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
            		<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
            		<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
            		<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
            		<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
				</div>
			</article> <!-- 슬라이드쇼 끝 -->
			<article>
				<div id="추천영화박스">
					<div id="추천영화박스제목">
						<h1 style="color:white;">이번달 추천영화</h1>
					</div>
					<div id="추천영화예고편">
						<video width="420" height="330" controls autoplay loop muted>
						<source src="<c:url value='/movie/아바타 예고편.mp4'/>" type="video/mp4" />
						</video>
						<video width="420" height="330" controls autoplay loop muted>
						<source src="<c:url value='/movie/영웅 예고편.mp4'/>" type="video/mp4" />
						</video>
						<video width="420" height="330" controls autoplay loop muted>
						<source src="<c:url value='/movie/헌트 예고편.mp4'/>" type="video/mp4" />

						</video>
					</div>
				</div>
			</article> <!-- 영화추천 끝 -->
			<article>
				<div id="event">
					<div id="eventtitle">
						<h1 style="color:white;">EVENT</h1>
					</div>
					<div id="eventprevnext">
						<img id="prevButton2" src="<c:url value='/image/prevButton.png'/>"> 
						<img id="nextButton2" src="<c:url value='/image/nextButton.png'/>"> 
					</div>
					<div id="event123">
						<div id="eventimg">
							<img src="<c:url value='/image/현대.PNG'/>" class="eventshow">
							<img src="<c:url value='/image/수능.PNG'/>" class="eventshow">
							<img src="<c:url value='/image/lg.PNG'/>" class="eventshow">
							<img src="<c:url value='/image/Event09.JPG'/>" class="eventshow">
							<img src="<c:url value='/image/Event05.JPG'/>" class="eventshow">
							<img src="<c:url value='/image/Event08.JPG'/>" class="eventshow">
							<img src="<c:url value='/image/Event07.JPG'/>" class="eventshow">
						</div>
					</div>
				</div> <!-- 이벤트 나열 끝 -->						
			</article>
			<article>
				<%@ include file="/WEB-INF/views/theater/theater.jsp" %>
			</article>
			</section>
		</div>
		
		<!-- bottom -->
        <c:import url ="/WEB-INF/views/layout/bottom.jsp" />
	</div>
</body>
</html>