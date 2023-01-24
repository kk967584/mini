/**
 *  slideShow.js
 */
 
  $(document).ready(function(){
	var movedIndex = 0;
	
	function moveSlide(index){
		movedIndex = index;
		
		// 슬라이드 이동
		var moveLeft = -(index * 400); // 왼쪽으로 이동 거리
		$('#slidePanel').animate({'left': moveLeft}, 'slow');
	}
	
	$('#prevButton').on('click', function(){
		if(movedIndex !=0)  
			movedIndex = movedIndex - 1; 
		
		moveSlide(movedIndex); 
	});	
	
	$('#nextButton').on('click', function(){
		if(movedIndex != 14)  
			movedIndex = movedIndex + 1; 
		
		moveSlide(movedIndex); 
	});
	
	var randomNum = Math.floor(Math.random() * 15); // 15개 포스터중 랜덤으로 나옴
	moveSlide(randomNum); 
	
	$('.controlButton').each(function(index) {
		$(this).hover(
			function() {
				$(this).attr('src', 'image/controlButton2.png');
			},
			function() {
				$(this).attr('src', 'image/controlButton1.png');				
			}
		);
		
		$(this).on('click', function() {
			moveSlide(index);
		})
	});
	
	//moveToTop 이미지 클릭 시 top으로 이동
	$('#moveToTop').on('click', function() {
		$('html, body').animate({scrollTop:0}, 500); //0.5초 동안 top:0 위치로 스크롤 이동
	});
	
	$('#burger-check').on('click', function() {
		  if ($('#header').css('visibility') == 'hidden') {
			  $('#header').css('visibility', 'visible');
		  } else {
			  $('#header').css('visibility', 'hidden');
		  }
	  });
 });
