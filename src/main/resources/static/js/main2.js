/**
 *  slideShow.js
 */
 
  $(document).ready(function(){
	var movedIndex = 0;
	
	function moveSlide(index){
		movedIndex = index;
		
		// 슬라이드 이동
		var moveLeft = -(index * 430); // 왼쪽으로 이동 거리
		$('#event123').animate({'left': moveLeft}, 'slow');
	}
	
	$('#prevButton2').on('click', function(){
		if(movedIndex !=0)  
			movedIndex = movedIndex - 1; 
		
		moveSlide(movedIndex); 
	});	
	
	$('#nextButton2').on('click', function(){
		if(movedIndex != 4)  
			movedIndex = movedIndex + 1; 
		
		moveSlide(movedIndex); 
	});
	
	
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
	
 });
