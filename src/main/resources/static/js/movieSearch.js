/**
 * 
 */
 
  $(document).ready(function(){
 	$('#movieSearchFrm').on('submit', function(){ 	
 		
 		event.preventDefault(); 		
 	
 		//폼에 입력한 값들을 쿼리 스트링 방식의 데이터로 변환 : serialize() 사용
 		//type=prdName&keyword=노트북 형식으로 만들어서 전송
 		var formData = $(this).serialize();
 		// 이렇게 보내고 컨트롤러에서 HashMap으로 받음 				
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"movieSearch1",
 			data: {"movieTitle":$("#movieTitle").val()},
 			datatype:"text",
 			success:function(result){
 					
 					$('#kakaka').empty();
					$('#kakaka2').empty();
		
			if(result!=''){
				$('#kakaka').append(
				'<ol class="li-container" id="kakaka">');
				for(var i=0; i<result.length; i++){
					$('#kakaka').append						(					
			'\<li><div class="box-image"><a class="rank">No.'+result[i].movieRank+'</a>'+
			'<a href="/movie/detailViewMovie/'+result[i].movieNo+'">'+
			'<img src="/image/'+result[i].movieNo+'.jpg">'+
			'\<div class="box-info"><p class="tit-text">'+result[i].movieTitle+'</p></div>'+
			'\<div class="box-reserve"><div class="rv_percent"><p>예매율'+result[i].movieRcvp+'</p><br>'+
			'\<p>'+result[i].movieDate+'개봉</p></div>'+
			'\<span class="movieReserve"><a class="movie-resrvation" href="reservation.html">'+
			'\예매하기</a></span></div></li>'					);
													}
			   $('#kakaka').append(
				'</ol>');									
		   }else{
		   alert("잘못된 입력입니다. 검색어를 다시 입력 해주세요.");
			$('#kakaka2').append('<br><br><h3>검색어를 다시 입력해주세요.</h3>');
			}
			},
			
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});