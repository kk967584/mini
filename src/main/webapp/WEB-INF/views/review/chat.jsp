<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Chat</title>
			<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css' />">
			<link rel="stylesheet" type="text/css" href="<c:url value='/css/chat_title.css' />">
			<link rel="stylesheet" type="text/css" href="<c:url value='/css/slideShow.css' />">	
			<link rel="stylesheet" type="text/css" href="<c:url value='/css/review.css' />">	
			<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>	
			<script src="<c:url value='/js/slideShow.js' />"></script>
			<script src="<c:url value='/js/review.js' />"></script>
			<script type="text/javascript">
			
				function update() {
					// false면 수정 가능
					document.getElementById('reviewtext').readonly = false;
				}
			
			</script>
	</head>
	<body>
		<div id="wrap">
			<header>
				<div id="titleimg">
		<a href="<c:url value='/'/>"><img src="<c:url value='/image/image04.png'/>"></a>
	</div>
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
				</div>
		</nav>
		<div id="headerBox">
			<h2>제목: 공조2</h2>
		</div>
		<section>
			<article id="slideShow_ch">
				<div id="slideShowBox_ch">
					<div id="slidePanel_ch">
						<img src="<c:url value='/image/steal1.jpg' />" class="slideImage_ch"> 
						<img src="<c:url value='/image/steal2.jpg' />" class="slideImage_ch"> 
						<img src="<c:url value='/image/steal3.jpg' />" class="slideImage_ch"> 
						<img src="<c:url value='/image/steal4.jpg' />" class="slideImage_ch"> 
						<img src="<c:url value='/image/steal5.jpg' />" class="slideImage_ch">
					</div>
					<!-- 슬라이드 판넬 끝 -->
				</div>
				<!-- 슬라이드 박스 끝 -->
				<div id="controlButtonBox_ch">
					<img src="<c:url value='/image/controlButton1.png' />" class="controlButton_ch">
					<img src="<c:url value='/image/controlButton1.png' />" class="controlButton_ch">
					<img src="<c:url value='/image/controlButton1.png' />" class="controlButton_ch">
					<img src="<c:url value='/image/controlButton1.png' />" class="controlButton_ch">
					<img src="<c:url value='/image/controlButton1.png' />" class="controlButton_ch">
				</div>
				<!-- 컨트롤 버튼 끝 -->
				<div id="prevNextButtonBox_ch">
					<img id="prevButton_ch" src="<c:url value='/image/prevButton.png' />"> 
					<img id="nextButton_ch" src="<c:url value='/image/nextButton.png' />">
				</div>
				<!--  (1) prevNext 버튼 박스 끝 -->
			</article>
			<!-- 슬라이드 쇼 끝 -->
			<article id="review">
				<!-- 댓글 나오는 부분 -->
				<table border="1" width="1300">
				<c:forEach var="review" items="${reviewList }">	
					<tr>
			        	<td><br>&nbsp;${review.memId } <br>	
			        		&nbsp;<a href="<c:url value='#' />" id="update" onClick="update">수정</a> / <a href="<c:url value='/review/delete/${reviewList[0].reviewNo}' />" id="delete" >삭제</a> <br>
			        		&nbsp;<input type="text" id="reviewtext" value="${review.reviewData }"/><br><br></td>
			       	</tr>
			    </c:forEach>
				</table>
				
			</article>
			<article>
			<div id="BigmemoBox">
				<div id="memoBox">
				<form method="post" action="<c:url value='/review/upload' /> "> 				
					<input type="hidden" name="movieNo" value="${reviewList[0].movieNo }">
					<input type="text" id="reviewuploadtext" name="reviewData" placeholder="댓글을 입력하세요." value="${review.reviewData }" >&nbsp;&nbsp;
					<input type="submit" id="upload"  value="등록"> 
				</form>
				</div>
			</div>
		</article>
		</section>
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
	    <br><hr>
	    <div id="bottomimg">
	    	<span><img src="<c:url value='/image/image02.png'/>"></span>&emsp;&emsp;&emsp;
	        <span><img src="<c:url value='/image/moveToTop.png'/>" id="moveToTop"></span>
	    </div>
	</div>
</footer>
	</div>
</body>
</html>