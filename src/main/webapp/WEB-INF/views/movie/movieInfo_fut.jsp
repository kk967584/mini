<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>개봉 예정 작</title>		
		
		<link rel="stylesheet" href="<c:url value='/css/movieinfo_fut.css'/>">
		<link rel="stylesheet" href="<c:url value='/css/info_common.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/main.js'/>"></script>
		
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
							<li class="fut-movie">
								<a href="<c:url value='/movie/movieInfo_fut'/>">개봉 예정작</a>
							</li>
						</ul>
					</div>
				</div>
<!--  	상영 예정작 박스 시작															-->				

				<div id="container">							
					<ol class="li-container">				
						<li>
							<div class="box-image">
								<a class="rank">개봉 추천 영화1</a>
								<span >
								<img src="<c:url value='/image/M1013.jpg'/>">
								</span>
							</div>
							<div class="box-info">
								<p class="tit-text">영웅</p>
							</div>
							<div class="box-reserve">
									<div class="rv_percent">
										<p>예매율 9.2%</p><br>
										<p>2022.12.21 개봉</p>
									</div>
								<span class="movieReserve">
								<a href="reservation.html"class="movie-resrvation"  >예매하기</a>
								</span>
							</div>
						</li>						
						<li>
							<div class="box-image">
								<a class="rank">개봉 추천 영화2</a>
								<span>
								<img src="<c:url value='/image/M1018.jpg'/>">
								</span>
							</div>
							<div class="box-info">
								<p class="tit-text">트윈</p>
							</div>
							<div class="box-reserve">
									<div class="rv_percent">
										<p>예매율 0.0%</p><br>
										<p>2022.12 개봉예정</p>
									</div>
								<span class="movieReserve">
									<a class="movie-resrvation" >예매하기</a>
								</span>
							</div>
						</li>						
						<li>
							<div class="box-image">
								<a class="rank">개봉 추천 영화3</a>
								<span>
									<img src="<c:url value='/image/M1019.jpg'/>">
								</span>
							</div>
							<div class="box-info">
								<p class="tit-text">장화 신은 고양이-끝내주는 모험</p>
							</div>							
							<div class="box-reserve">
									<div class="rv_percent">
										<p>예매율 0.0%</p><br>
										<p>2023.01.04. 개봉</p>
									</div>
								<span class="movieReserve">
									<a class="movie-resrvation" >예매하기</a>
								</span>
							</div>
						</li>
						<li>
							<div class="box-image">
								<a class="rank">개봉 추천 영화4</a>
								<span>
								<img src="<c:url value='/image/M1020.jpg'/>">
								</span>
							</div>
							<div class="box-info">
								<p class="tit-text">코르사주</p>
							</div>							
							<div class="box-reserve">
									<div class="rv_percent">
										<p>예매율 0.1%</p><br>
										<p>2022.12.21 개봉</p>
									</div>
								<span class="movieReserve">
									<a class="movie-resrvation" >예매하기</a>
								</span>
							</div>
						</li>
					</ol>
<!--  													-->					
<!--    상영 예정작 두번째 줄 목록 태그-->
					<h4 class="tit_future">2022.12.28(수)</h4>
					<ol class="li-container">
						<li>
							<div class="box-image">
								<a class="rank"></a>
								<a></a>				
								<span>
								<img src="<c:url value='/image/M1014.jpg'/>">
								</span>
							</div>
							<div class="box-info">
								<p class="tit-text">젠틀맨</p>
							</div>							
							<div class="box-reserve">
								<div class="btn-heart"title="찜하기">
									<button type="button"class="button-btn">
										<img src="<c:url value='/image/heartlogo.JPG'/>"class="heart">		
										<span>55</span>
									</button>

								</div>
								<span class="movieReserve">
									<a class="movie-resrvation" >예매하기</a>
								</span>
							</div>
						</li>						
						<li>
							<div class="box-image">
								<a class="rank"></a>
								<span>
								<img src="<c:url value='/image/M1015.jpg'/>">
								</span>
							</div>
							<div class="box-info">
								<p class="tit-text">몬스터 신부</p>
							</div>							
							<div class="box-reserve">
								<div class="btn-heart"title="찜하기">
									<button type="button"class="button-btn">
									<img src="<c:url value='/image/heartlogo.JPG'/>"class="heart">
										<span>355</span>
									</button>
								</div>
								<span class="movieReserve">
									<a class="movie-resrvation" >예매하기</a>
								</span>
							</div>
						</li>									
						<li>
							<div class="box-image">
								<a class="rank"></a>
								<span>
								<img src="<c:url value='/image/M1016.jpg'/>">
								</span>
							</div>
							<div class="box-info">
								<p class="tit-text">이스터 선데이</p>
							</div>							
							<div class="box-reserve">
								<div class="btn-heart"title="찜하기">
									<button type="button"class="button-btn">
									<img src="<c:url value='/image/heartlogo.JPG'/>"class="heart">
										<span>128</span>
									</button>
								</div>
								<span class="movieReserve">
									<a class="movie-resrvation" >예매하기</a>
								</span>
							</div>
						</li>
						<li>
							<div class="box-image">
								<a class="rank"></a>
								<span>
									<img src="<c:url value='/image/M1021.jpg'/>">
								</span>
							</div>
							<div class="box-info">
								<p class="tit-text">크레이지 컴페티션</p>
							</div>							
							<div class="box-reserve">
								<div class="btn-heart"title="찜하기">
									<button type="button"class="button-btn">
									<img src="<c:url value='/image/heartlogo.JPG'/>"class="heart">
										<span>32</span>
									</button>
								</div>
								<span class="movieReserve">
									<a class="movie-resrvation" >예매하기</a>
								</span>
							</div>
						</li>												
					</ol>					
				</div>
				<details >
   					<p ><summary id="moreMv">펼치기</summary></p>
   					
   					<h4 class="tit_future2">2023.01.04(수)</h4>
					<ol class="li-container2">
						<li>
							<div class="box-image2">
								<a class="rank2"></a>
								<a></a>				
								<span>
								<img src="<c:url value='/image/M1022.jpg'/>">
								</span>
							</div>
							<div class="box-info">
								<p class="tit-text">3000년의 기다림</p>
							</div>							
							<div class="box-reserve">
								<div class="btn-heart"title="찜하기">
									<button type="button"class="button-btn">
										<img src="<c:url value='/image/heartlogo.JPG'/>"class="heart">		
										<span>21</span>
									</button>

								</div>
								<span class="movieReserve">
									<a class="movie-resrvation" >예매하기</a>
								</span>
							</div>
						</li>						
						<li>
							<div class="box-image2">
								<a class="rank2"></a>
								<span>
								<img src="<c:url value='/image/M1023.jpg'/>">
								</span>
							</div>
							<div class="box-info">
								<p class="tit-text">스위치</p>
							</div>							
							<div class="box-reserve">
								<div class="btn-heart"title="찜하기">
									<button type="button"class="button-btn">
									<img src="<c:url value='/image/heartlogo.JPG'/>"class="heart">
										<span>10</span>
									</button>
								</div>
								<span class="movieReserve">
									<a class="movie-resrvation" >예매하기</a>
								</span>
							</div>
						</li>									
						<li>
							<div class="box-image2">
								<a class="rank2"></a>
								<span>
								<img src="<c:url value='/image/M1019.jpg'/>">
								</span>
							</div>
							<div class="box-info">
								<p class="tit-text">장화신은 고양이-끝내주는 모험</p>
							</div>							
							<div class="box-reserve">
								<div class="btn-heart"title="찜하기">
									<button type="button"class="button-btn">
									<img src="<c:url value='/image/heartlogo.JPG'/>"class="heart">
										<span>130</span>
									</button>
								</div>
								<span class="movieReserve">
									<a class="movie-resrvation" >예매하기</a>
								</span>
							</div>
						</li>
						<li>
							<div class="box-image2">
								<a class="rank2"></a>
								<span>
									<img src="<c:url value='/image/M1024.jpg'/>">
								</span>
							</div>
							<div class="box-info">
								<p class="tit-text">패닉 런</p>
							</div>							
							<div class="box-reserve">
								<div class="btn-heart"title="찜하기">
									<button type="button"class="button-btn">
									<img src="<c:url value='/image/heartlogo.JPG'/>"class="heart">
										<span>32</span>
									</button>
								</div>
								<span class="movieReserve">
									<a class="movie-resrvation" >예매하기</a>
								</span>
							</div>
						</li>												
					</ol>	  					
				</details>
				
			</div>
			<!--  무비차트+side 끝-->
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
			
		</div>
		</div>			
	</body>
</html>