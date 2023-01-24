<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src= "<c:url value='/js/join.js'/>"></script>	
<link rel="stylesheet" href=<c:url value='/css/join.css'/>>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="<c:url value='/js/searchZip.js' />"></script>
<script src="<c:url value='/js/idCheck.js' />"></script>
<script type="text/javascript"></script>
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


	<form id=frmLogin method="post" action="/member/insert">
		<div class="container">
			<div class="insert">

				<table>
					<caption>
						<h1>GBSJ 회원가입</h1>
					</caption>
					<tr>
						<td class="col1">이름</td>
						<td class="col2"><input type="text" name="memName" maxlength="5"></td>
					</tr>
					<tr>
						<td class="col1">아이디</td>
						<td class="col2"><input type="text" name="memId" id="memId" maxlength="10">
							<input class='but1' type="button" id="idCheck" value="중복확인">
						</td>
					</tr>
					<tr>
						<td class="col1">비밀번호</td>
						<td class="col2"><input type="password" name="memPwd" id="memPwd"
							maxlength="16">
							<p>
								※비밀번호는 <span class="num">문자, 숫자, 특수문자(~!@#$%^&*)의 조합 10 ~
									16자리</span>로 입력이 가능합니다.
							</p></td>
					</tr>
					<tr>
						<td class="col1">비밀번호 확인</td>
						<td class="col2"><input type="password" name="pwdCheck" id="pwdCheck"
							maxlength="16"><br>
							<font id="chkNotice" size="2"></font>
						</td>
						
						
					</tr>
					<tr>
						<td class="col1">이메일</td>
						<td class="col2"><label><input name="memEmail" id="memEmail" type="text" size="11"></label>@<select
							name="Email" >
								<option value="direct" selected>직접입력</option>
								<option value="naver">naver.com</option>
								<option value="google">gmail.com</option>
								<option value="daum">daum.net</option>
						</select></td>
					</tr>
					<tr>
						<td class="col1">생년월일</td>
						<td class="col2">
						<label><input id="memBirth" name="memBirth" type="number" size="8" maxlength="8" placeholder="생년월일<8자>"></label> 
						</td>
					</tr>
					<tr>
					   <td class="col1">성별</td>
					   <td class="col2"><label><input type="radio" name="gender"
								value="1" checked>남</label> <label><input type="radio"
								name="gender" value="2">여</label></td>
					</tr>
					<tr>
					   <td class="col1">주소</td>
					   <td class="col2"><label><input type="text" id="memZipcode" name="memZipcode" size="5" readonly></label>
					   <input class="but2" type="button" id="searchZipBtn" name="searchZipBtn" value="우편번호"><br>
							<label><input type="text" id="memAddress1" name="memAddress1" placeholder="주소 입력" size="70" readonly></label><br>
							<label><input type="text" id="memAddress2" name="memAddress2" size="70" placeholder="상세주소 입력" required></label>

						</td>
					</tr>
					
					<tr>
					   <td class="col1">휴대전화</td>
					   <td class="col2"><select name="memCall" id="memCall">
								<option value="SKT" selected>SKT</option>
								<option value="KT">KT</option>
								<option value="LG U+">LG U+</option>
								<option value="알뜰폰">알뜰폰</option>
						</select>
					   <select name="hp1" id="hp1">
								<option value="010" selected>010</option>
								<option value="011">011</option>
								<option value="012">012</option>
								<option value="013">013</option>
						</select>
						<input type="text" name="memHP" id="memHP" size="8">
								<input class='but3' id="but3" type="button" value="인증번호 전송" onclick=""></td>
					</tr>
					<tr>
					   <td class="col1">인증번호 확인</td>
					   <td class="col2"><input type="text" name="confirm" id="confirm" maxlength="6" placeholder="인증번호 입력(6자리)" required>
							<input class="but6" id="but6" type="button" value="확인" onclick="">
						</td>
					
					</tr>
					
				</table>
				<div class="create">

				<input class="but4" type="button" id="but4" value="가입취소" onClick="location.href='/'"> 
				<input class="but5" type="submit" id="but5" value="회원가입" onClick="">

			</div>
		
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

		</div>
	</form>
</body>
</html>


