<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
			<link rel="stylesheet" type="text/css" href="css/thearter.css">
			<script src="js/jquery-3.6.1.min.js">
			
			</script>
			<script src="js/theater.js"></script>
	</head>
	<body>
	<div class="special-theater-wrap" id="t3">
		<div class="special-theater">				<!--  content-->
			<div class="special-header">
				<h1 style="color:white;">특별관</h1>
				<a class="btn-all-theater">전체보기 &nbsp; ></a>
			</div>
			<!--  특별관 헤드바 끝 -->

			<div class="special-theater-content">
				<div class="theater-image-box"id="t4">
					<div>
						<img src="image/4dxScreen.jpg"class="theater-image"id="fdx-image">
					</div>	
					<div>
						<img src="image/screenX.JPG"class="theater-image"id="screenx-image">
					</div>
					<div>
						<img src="image/suiteCinema.JPG"class="theater-image"id="suite-image">
					</div>
					<div>
						<img src="image/cineDechef.JPG"class="theater-image"id="cine-image">
					</div>

				</div>
				<div>
				<ul class="special-theater-list">				
					<li class="list">
						<a href="#t3" id="fdx-list">
							<strong>4DX</strong>
							<span>#오감체험</span>				
						</a>
					</li>
					<li class="list">
						<a href="#t3" id="screenx-list">
							<strong>SCREEN X</strong>
							<span>#가득찬화면#몰입감 UP</span>				
						</a>
					</li>
					<li class="list">
						<a href="#t3" id="suite-list">
							<strong>SUITE CINEMA</strong>
							<span>#영화관에#호텔을!?</span>				
						</a>
					</li>
					<li class="list">
						<a href="#t3" id="cine-list">
							<strong>Rest CINE</strong>
							<span>#먹으면서#즐겨요</span>				
						</a>
					</li>
				</ul>
				</div>
			</div>
	</div>
</div>
	</body>
</html>