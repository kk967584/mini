<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>봤던 영화 목록들</title>
		<c:import url ="/WEB-INF/views/layout/head.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/sawmovie.css' />">
	</head>
	<body>
	<c:import url ="/WEB-INF/views/layout/top.jsp" />
	
	 <div id ="wrap">
		<!-- 봤던 영화 포스터들 띄우기 -->
		<br><br><br><br><br><br>
		<h1>봤던 영화 목록들</h1><br><br><br>
		<h2><a href="<c:url value='/review/chat'/>" class="title">공조2</a></h2><br><br>
		<h2><a href="<c:url value='#'/>"  class="title">영웅</a></h2><br><br>
		<h2><a href="<c:url value='#'/>"  class="title">블랙팬서</a></h2><br><br>
		<h2><a href="<c:url value='#'/>"  class="title">올빼미</a></h2><br><br>
		<h2><a href="<c:url value='#'/>"  class="title">데시벨</a></h2><br><br>
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