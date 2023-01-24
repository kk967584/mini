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
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/reservation2.css' />">
	</head>
	<body>
		<div id="warp">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/resTop.jsp"/>
			
			<header>
				<h3>총 주문 내역</h3>
				<hr>
			</header>
			<div>
				<table border="1">
					<tr>
						<th>영화 제목</th>
						<th>영화관</th>
						<th>상영일</th>
						<th>상영관</th>
						<th>상영시간</th>
						<th>총 인원</th>
						<th>성인</th>
						<th>청소년</th>
						<th>합계 금액</th>
						<th>좌석</th>
					</tr>
					<c:forEach var="chk" items="${resVoList}">
						<tr>
							<td>${chk.movieTitle}</td>
							<td>${chk.theaterName}</td>
							<td>${chk.scDate}</td>
							<td>${chk.screenName}</td>
							<td>${chk.scTime}</td>
							<td>${chk.peopleAll}</td>
							<td>${chk.peopleAdult}</td>
							<td>${chk.peopleChild}</td>
							<td>${chk.price}</td>
							<td>${chk.seat}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			
			
			
		</div>
	</body>
</html>