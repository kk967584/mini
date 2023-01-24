<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용약관</title>
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script type="text/javascript"></script>
<link rel="stylesheet" href=<c:url value='/css/checkBox.css'/>>
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/checkBox.js'/>"></script>

</head>
<body>
<c:import url="/WEB-INF/views/layout/top.jsp" />

	<div class="usebox">
		<h1>사용약관</h1>
		<form action="#">
			<fieldset>
				<legend>체크 구역</legend>

				<div class="check-menu-box">
					<div class="checkbox-container">
						<input type="checkbox" id="checkbox1" name="checkAll" /> 
						<label for="checkbox1">약관에 모두 동의</label>
						
					</div>
					<div class="checkbox-container">
						<input type="checkbox" id="checkbox2" name="checkOne" /> <label
							for="checkbox2">(필수) 만 14세 이상입니다</label>
							
					</div>
					<div class="checkbox-container">
						<input type="checkbox" id="checkbox3" name="checkOne" /> 
						<label for="checkbox3">(필수) 서비스 이용약관에 동의</label>
						
					</div>
					<div class="checkbox-container">
						<input type="checkbox" id="checkbox4" name="checkOne" /> 
						<label for="checkbox4">(필수) 개인정보 수집이용에 동의</label>
						
					</div>
					<div class="checkbox-container">
						<input type="checkbox" id="checkbox5" name="checkOne" /> 
						<label for="checkbox5">(선택) 광고 수신 및 마케팅 이용에 동의</label>
						
					</div>
				</div>

				<div class="btn_wrap">
					<!-- <a href="#n" class="btn"></a> -->
					<button type="button" id="cancleBtn" onClick="location.href='joinForm2' ">취소</button>
					<button type="button" id="join" onClick="location.href='joinForm' ">다음</button>
				</div>
			</fieldset>
		</form>
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
</html>