<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>test</title>
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />" ></script>
		<script src="<c:url value='/js/test.js' />" ></script>
	</head>
	<body>
		<div id="warp">
			<form method="post" id="locationCheck">
				<div id="theaterChoiceBox">
	           		<ul id="theaterItem">
	           			<li>
	           				<input type="hidden" name="theaterLocation" value="서울">
	           				<input type="hidden" name="movieNo" value="M1001">
	           				<input type="submit" id="서울" class="theaterChoiceBtn" value="서울 ▶" >
	           			</li>
	           		</ul>
	           		<input type="submit" value="제출">
          		</div>
          		
       		</form>
       		
           	<div class="subTheater" id="seoulTheaterBox1">
           		여기에 있어요
           	</div>
		</div>
	</body>
</html>