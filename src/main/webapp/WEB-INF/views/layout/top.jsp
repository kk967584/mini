<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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