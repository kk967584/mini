<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>지역 선택</title>
	</head>
	<body>
		<ul id="seoulTheaterItem">
   			<c:forEach var="loList" items="${locationChkList }">
   				<li><input type="radio" id="${loList.theaterName }" value="${loList.theaterName }" name="서울영화관" class="theaterChoice"><label for="${loList.theaterName }">${loList.theaterName }</label></li>
   			</c:forEach>
   		</ul>
	</body>
</html>