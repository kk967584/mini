<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>${vo.movieTitle}</title>
		<link rel="stylesheet" href="<c:url value='/css/movie-detail.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/blackpanther.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/movie-detail.js'/>"></script>
	</head>

	<body>
	<!--  공통 헤더 시작-->
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
				<li><a href="<c:url value='/reservation/movielist'/>">예매하기</a></li>
				<li><a href="<c:url value='#'/>">이벤트</a></li>
				<li><a href="<c:url value='/review/sawMovieList'/>">리뷰채팅</a></li>
				<li><a href="<c:url value='#'/>">고객센터</a></li>
				<li><a href="<c:url value='#'/>">기프트샵</a></li>
			</ul>
		</div> <!-- mainMenuBox 끝 -->
	</nav>

	<!--  공통 헤더 끝 -->
	<!--  페이지 전체 박스 -->
	<div id="wrap-movie-all">		
			<div id="wrap-content">
				<div class="container">	
						<!--  영화 세부내용-->		
						<div class="sect-movie-detail">							
							<div class="box-image">
							<img src="<c:url value='/image/${vo.movieNo}.jpg'/>">
							</div>
							<div class="image-info"> 
					 		<h2>${vo.movieTitle}</h2>
							<p class="sub-tit">${vo.movieTitleEn}</p><br>
							<p> 예매율 ${vo.movieRcvp}</p>
							<br><hr><br>
							<p>감독 : ${vo.movieDirector} </p>
							<p>배우 : ${vo.movieActor}</p>
							<p>장르 : ${vo.movieGenre} </p>
							<p>기본 : ${vo.movieAge},  ${vo.movieRuntime}분,  ${vo.movieCountry} </p>
							<p>개봉 : ${vo.movieDate}</p><br>
					 		
							<span class="etc">
								<a class="trailer"href="#trailer1">예고편 보러 가기</a>	<!--  예고편 링크 -->
								<a class="movie-detail-resrvation" id="movie-detail-resrvation" href="<c:url value='/reservation/${vo.movieNo}'/>">예매하기</a>
							</span>
							<br><br><br>
							</div>
						</div>
					</div>					
				<div class="sub-container">							<!--  컨테이너전체(바디+side)-->
					<div class="sub-container-detail">			<!--  바디-->
						<ul class="sub-container-tab">
						<li class="tabmenu"><a href="#">주요정보</a></li>
						<li class="tabmenu"><a href="#">평점평가</a></li>
						<li class="tabmenu"><a href="#">스틸컷</a></li>
						<li class="tabmenu"><a href="#">실관람평</a></li>
						<li class="tabmenu"><a href="#">관람객공간</a></li>
						</ul>
					</div>
					<!--  탭 메뉴 끝-->
					<!--  -->
					<div class="sect-movie-story">
					${vo.movieSummary}
					</div>
						<div class="graphBox">
							<div class="graph">
							<img src="<c:url value='/image/${vo.movieNo}G.jpg'/>">
							</div>
						</div>
				</div>
				
				
				<!-- 스틸컷 슬라이드 쇼 -->
				<div id="slideShow"> <!-- 슬라이드 쇼 -->
					<div class="stillcuthead">
					 	<h4 style="padding-left:50px">스틸컷</h4>
					</div>
					<div id="prevNextButtonBox"> 
						<img id="prevButton" src="<c:url value='/image/prevButton.png'/> ">
						<img id="nextButton" src="<c:url value='/image/nextButton.png'/> ">
					</div>
					<div id="slideShowBox"> <!-- 슬라이드 쇼 박스-->
						<div id="slidePanel">						
					
							<c:forEach var="i" begin="1" end="15" step="1">
								<img src="<c:url value='/image/${vo.movieNo}${i}.jpg'/>" class="slideImage">
							</c:forEach>						
						
						</div>						
					</div>
				</div><br>
				<!-- 스틸컷 슬라이드 쇼 끝 -->
				<div class="movie-trailer">
					<div class="etchead" >
						<h4 style="padding-left:50px">예고편</h4>
					</div>
					<video src="<c:url value='/video/${vo.movieNo}.mp4'/>" id="trailer1" controls></video>
				</div>
				
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
			</div>
		</div>
	</body>
</html>