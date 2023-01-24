<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>예매</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/resHead.jsp"/>
	</head>
	<body>
		<div id="warp">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/resTop.jsp"/>
			
			<header>
				<h3>영화 예매</h3>
				<hr>
			</header>
			
			<!-- <form method="post" id="firstCheck" action="/reservation/selectTime"> -->
			<div id="choiceTheaterSection">
				<h3>영화관 선택</h3>
				<hr>
				
				<div id="theaterChoiceBox">
            		<ul id="theaterItem">
            			<c:forEach var="lList" items="${locationList}">
            				<li><input type="button" id="${lList.theaterLocation}"
            				 name="${lList.theaterLocation}"
            				  class="theaterChoiceBtn"
            				   value="${lList.theaterLocation } ▶"
            				    data-theaterLocation="${lList.theaterLocation }"
            				     data-mvtitle="${titleSetter}"
            				     data-mvNo="${lList.movieNo }"></li>
            			</c:forEach>
            		</ul>
           		</div>
            		
           		<div id="subTheaterBox">
	            	<div class="subTheater" id="seoulTheaterBox">
	            		<ul id="seoulTheaterItem">
	            			<c:forEach var="lList" items="${theaterList }">
	            				<c:if test="${lList.theaterLocation eq '서울' }">
	            					<li><input type="radio" id="${lList.theaterName }" value="${lList.theaterName }" data-chk="서울영화관" name="theaterName" class="theaterChoice"><label for="${lList.theaterName }">${lList.theaterName }</label></li>
	            				</c:if>
	            			</c:forEach>
	            		</ul>
	            	</div>
	            	<div class="subTheater" id="gyeonggiTheaterBox">
	            		<ul>
	            			<c:forEach var="lList" items="${theaterList }">
	            				<c:if test="${lList.theaterLocation eq '경기' }">
	            					<li><input type="radio" id="${lList.theaterName }" value="${lList.theaterName }" data-chk="경기영화관" name="theaterName" class="theaterChoice"><label for="${lList.theaterName }">${lList.theaterName }</label></li>
	            				</c:if>
	            			</c:forEach>
	            		</ul>
	            	</div>
	            	<div class="subTheater" id="incheonTheaterBox">
	            		<ul>
	            			<c:forEach var="lList" items="${theaterList }">
	            				<c:if test="${lList.theaterLocation eq '인천' }">
	            					<li><input type="radio" id="${lList.theaterName }" value="${lList.theaterName }" data-chk="인천영화관" name="theaterName" class="theaterChoice"><label for="${lList.theaterName }">${lList.theaterName }</label></li>
	            				</c:if>
	            			</c:forEach>
	            		</ul>
	            	</div>
	            	<div class="subTheater" id="gangwonTheaterBox">
	            		<ul>
	            			<c:forEach var="lList" items="${theaterList }">
	            				<c:if test="${lList.theaterLocation eq '강원' }">
	            					<li><input type="radio" id="${lList.theaterName }" value="${lList.theaterName }" data-chk="강원영화관" name="theaterName" class="theaterChoice"><label for="${lList.theaterName }">${lList.theaterName }</label></li>
	            				</c:if>
	            			</c:forEach>
	            		</ul>
	            	</div>
	            	<div class="subTheater" id="daejeonChungcheongTheaterBox">
	            		<ul>
	            			<c:forEach var="lList" items="${theaterList }">
	            				<c:if test="${lList.theaterLocation eq '대전충청' }">
	            					<li><input type="radio" id="${lList.theaterName }" value="${lList.theaterName }" data-chk="대전충청영화관" name="theaterName" class="theaterChoice"><label for="${lList.theaterName }">${lList.theaterName }</label></li>
	            				</c:if>
	            			</c:forEach>
	            		</ul>
	            	</div>
	            	<div class="subTheater" id="daeguTheaterBox">
	            		<ul>
	            			<c:forEach var="lList" items="${theaterList }">
	            				<c:if test="${lList.theaterLocation eq '대구' }">
	            					<li><input type="radio" id="${lList.theaterName }" value="${lList.theaterName }" data-chk="대구영화관" name="theaterName" class="theaterChoice"><label for="${lList.theaterName }">${lList.theaterName }</label></li>
	            				</c:if>
	            			</c:forEach>
	            		</ul>
	            	</div>
	            	<div class="subTheater" id="busanUlsanTheaterBox">
	            		<ul>
	            			<c:forEach var="lList" items="${theaterList }">
	            				<c:if test="${lList.theaterLocation eq '부산울산' }">
	            					<li><input type="radio" id="${lList.theaterName }" value="${lList.theaterName }" data-chk="부산울산영화관" name="theaterName" class="theaterChoice"><label for="${lList.theaterName }">${lList.theaterName }</label></li>
	            				</c:if>
	            			</c:forEach>
	            		</ul>
	            	</div>
	            	<div class="subTheater" id="gyeongsangTheaterBox">
	            		<ul>
	            			<c:forEach var="lList" items="${theaterList }">
	            				<c:if test="${lList.theaterLocation eq '경상' }">
	            					<li><input type="radio" id="${lList.theaterName }" value="${lList.theaterName }" data-chk="경상영화관" name="theaterName" class="theaterChoice"><label for="${lList.theaterName }">${lList.theaterName }</label></li>
	            				</c:if>
	            			</c:forEach>
	            		</ul>
	            	</div>
	            	<div class="subTheater" id="gwangjuJeollaJejuTheaterBox">
	            		<ul>
	            			<c:forEach var="lList" items="${theaterList }">
	            				<c:if test="${lList.theaterLocation eq '광주전라제주' }">
	            					<li><input type="radio" id="${lList.theaterName }" value="${lList.theaterName }" data-chk="광주전라제주영화관" name="theaterName" class="theaterChoice"><label for="${lList.theaterName }">${lList.theaterName }</label></li>
	            				</c:if>
	            			</c:forEach>
	            		</ul>
	            	</div>
            	</div>
            	
            	<div id="영화관다음박스">
					<button id="영화관다음">다음</button>
					<!-- <input type="submit" id="영화관다음" value="다음"> -->
				</div>
	            	
			</div>
			
			<div id="dateChoice">
				<h3>예매 날짜</h3>
				<input type="date" id="날짜선택" name="scDate"><br>
				<button id="theaterButton">조회</button>
				<button id="backTheaterButton">뒤로가기</button>
				<!-- <input type="submit" id="theaterButton" value="조회"> -->
				
				<div id="상영관">
					<b id="영화제목">${titleSetter}</b> <br>
					<div id="상영관선택박스">
						<h4>상영관</h4><hr>
						<ul>
							<li><input type="radio" id="2D 2관 2층" value="2D 2관 2층" name="screenName" class="상영관클래스"><label for="2D 2관 2층">2D 2관 2층</label></li>
							<li><input type="radio" id="3D 3관 3층" value="3D 3관 3층" name="screenName" class="상영관클래스"><label for="3D 3관 3층">3D 3관 3층</label></li>
							<li><input type="radio" id="3D 4관 3층" value="3D 4관 3층" name="screenName" class="상영관클래스"><label for="3D 4관 3층">3D 4관 3층</label></li>
						</ul>
					</div>
					<br>
					<div id="상영시간선택박스">
						<h4>상영시간</h4><hr>
						<ul>
							<li><input type="radio" id="10:40" value="10:40" name="scTime" class="상영시간클래스"><label for="10:40">10:40</label></li>
							<li><input type="radio" id="13:10" value="13:10" name="scTime" class="상영시간클래스"><label for="13:10">13:10</label></li>
							<li><input type="radio" id="16:30" value="16:30" name="scTime" class="상영시간클래스"><label for="16:30">16:30</label></li>
						</ul>
					</div>
				</div>
				<div id="날짜버튼">
					<button id="날짜다음">다음</button>
				</div>
			</div>
			<!-- </form> -->
			<div id="peopleScreen">
				<h3 class="screenH3">인원선택</h3>
				<div id="성인인원선택박스" class="인원선택클래스">
					성인
					<select id="adult">
						<option value=0>0명</option>
						<option value=1>1명</option>
						<option value=2>2명</option>
						<option value=3>3명</option>
						<option value=4>4명</option>
						<option value=5>5명</option>
					</select>
				</div>
				<div id="청소년인원선택박스" class="인원선택클래스">
					청소년
					<select id="child">
						<option value=0>0명</option>
						<option value=1>1명</option>
						<option value=2>2명</option>
						<option value=3>3명</option>
						<option value=4>4명</option>
						<option value=5>5명</option>
					</select>
				</div>
				<div id="screen">
					<table border='1'>
						<thead><tr><td colspan='8' align='center'><h3 id="screenH3">SCREEN</h3></td></tr></thead>
						<tbody class="screenBody">
						</tbody>
					</table>
				</div>
				
				<div id="charge">
					<h3 class="screenH3">합계 금액</h3>
					0원
				</div>
				
				<div id="인원좌석버튼">
					<button id="인원좌석이전">이전</button>
					<button id="인원좌석다음">다음</button>
				</div>
			</div>
			<form method="post" id="lastCheck" action="/reservation/insertRes">
				<div id="check">
					<h3>주문 확인</h3>
					<table id="checkList">
						
					</table>
					
					<div id="결제확인버튼박스">
						<button id="결제확인이전"><p>이전</p></button>
						<input type="submit" id="결제확인다음" value="결제">
					</div>
				</div>
			</form>
			<!-- <div id="chargeBox">
				<h3>결제</h3>
				<hr>
				<h4>구매자정보</h4>
				<table id="결제개인정보" border='1'>
					<tr><th>이름</th><td><input type="text"></td></tr>
					<tr><th>이메일</th><td><input type="text"></td></tr>
					<tr><th>휴대폰 번호</th><td><input type="text"></td></tr>
				</table>
				<hr>
				<h4>결제정보</h4>
				<table id="결제내역및수단" border='1'>
					<tr id="총금액계산"><th>총 금액</th></tr>
					<tr>
						<th id="결제방법">결제방법</th>
						<td><input type="radio" id="계좌이체" name="결제수단" class="결제수단클래스"><label for="계좌이체">계좌이체</label></td>
						<td><input type="radio" id="신용/체크카드" name="결제수단" class="결제수단클래스"><label for="신용/체크카드">신용/체크카드</label></td>
						<td><input type="radio" id="법인카드" name="결제수단" class="결제수단클래스"><label for="법인카드">법인카드</label></td>
						<td><input type="radio" id="휴대폰" name="결제수단" class="결제수단클래스"><label for="휴대폰">휴대폰</label></td>
						<td><input type="radio" id="무통장입금(가상계좌)" name="결제수단" class="결제수단클래스"><label for="무통장입금(가상계좌)">무통장입금(가상계좌)</label></td>
					</tr>
				</table>
				<div id="결제버튼박스">
					<button id="결제버튼">결제하기</button>
				</div>
			</div> chargeBox
			
			<div id="예매마지막">
				결제가 완료되었습니다.
			</div> -->
		</div> <!-- warp -->
	</body>
</html>
