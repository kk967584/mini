<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="headerMenu">
	<a href="<c:url value='/' />"><img src="<c:url value='/image/image04.png'/>"></a>
</div>
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