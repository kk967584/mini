<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>현재 상영작</title>
		<link rel="stylesheet" href="<c:url value='/css/movieinfo.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/info_common.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/main.js'/>"></script>
		<script src="<c:url value='/js/movieSearch.js'/>"></script>
	</head>
	<body>
	<!--  공통 헤더 시작-->
	<header>
	<div id="titleimg">
		<a href="<c:url value='/index'/>"><img src="<c:url value='/image/image04.png'/>"></a>
	</div>
	</header>
	<nav>
		<div id="mainMenuBox">
			<ul id="menuItem">
				<li><a href="<c:url value='/movie/movieInfo'/>">영화정보</a></li>
				<li><a href="<c:url value='/reservation/movielist'/>">예매</a></li>
				<li><a href="#">이벤트</a></li>
				<li><a href="#">고객센터</a></li>
				<li><a href="Chat.html">리뷰채팅</a></li>
				<li><a href="#">기프트샵</a></li>
			</ul>
		</div> <!-- mainMenuBox 끝 -->
	</nav>
	<!--  공통 헤더 끝 -->
		<div id="movieinfo_wrap">
		<div id="wrap-movie-all">		<!--  페이지 전체 박스 -->
			<div id="wrap-content">		<!--  무비차트 + side -->
				<!--  -->
				<div id="tit-moviechart">	<!--  무비차트에서 최상단 박스-->
					<h2 > 무비차트</h2>

					<div class="current">
						<ul>
							<li class="currentmovie">
							<a href="<c:url value='/movie/movieInfo'/>">현재 상영작</a>
							</li>
						</ul>
					</div>
				</div>
<!--  	현재 상영작 박스 시작								-->				
				<div id="container">
					<ol class="li-container" id="kakaka">											
					<c:forEach var ="vo" items="${voList}" varStatus="status">
						<li>
							<div class="box-image">							
								<a class="rank">No.${vo.movieRank}</a>
								<a id="kaka" href="<c:url value='/reservation/${vo.movieNo}'/>">
								<img src="<c:url value='/image/${vo.movieNo}.jpg'/>"></a>						
							</div>
							<div class="box-info">								
								<p class="tit-text">
								${vo.movieTitle}																
								</p>
							</div>
						</li>
					</c:forEach>
					</ol>									

				</div>			
			<!--  	현재 상영작 박스 	끝	-->

			</div>			<!--  무비차트 + side -->
			<!--  -->
			<!-- footer 시작 -->
		<footer>
			<div id="footerBox">
	            	 <div id="bottomMenuBox">
	            	 	<ul id="botttomMenuItem">
	            	 		<li><a href="#none">회사소개</a></li>
							<li><a href="#none">이용약관</a></li>
							<li><a href="#none">개인정보처리방침</a></li>
							<li><a href="#none">회원정보</a></li>
							<li><a href="#none">고객센터</a></li>
							<li><a href="#none">GBSJ Corp.</a></li>
	            	 	</ul>
	            	 </div>
	            	 <br><hr>
	            	 <div id="bottomimg">
	            		<span><img src="<c:url value='/image/footer.png'/>"></span>&emsp;&emsp;&emsp;
	            		<span><img src="<c:url value='/image/moveToTop.png'/>" id="moveToTop"></span>
	            	 </div>
            	</div>
		</footer>
		<!--  footer 끝-->
		</div>				<!--  페이지 전체 랩 박스 닫기-->
		</div>
	</body>
</html>