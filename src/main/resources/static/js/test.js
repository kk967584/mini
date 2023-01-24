/**
 * test.js
 */
 
 $(document).ready(function() {
 
	$('#locationCheck').on('submit', function() {
		alert("1");
		event.preventDefault();
		alert("1");
		var formData = $(this).serialize();
		
		$.ajax({
  		 	type:"post",
 			url:"/reservation/test",
 			data:formData,
 			success:function(result){
 				// 컨트롤러가 ArrayList를 반환한 것을 result로 받음
 				// <div id="searchResultBox">에
 				// 받은 개수만큼 반복문으로 출력
 				//alert("넘어오긴하냐?");
 				$('#seoulTheaterBox1').append('<table id="resultTable" border="1" width="600">');
				
				if(result==""){
					$('#resultTable').append('<tr><td>찾는 상품이 없습니다</td></td>');
				}
				else {
					for(var i=0; i < result.length; i++) {
						$('#resultTable').append('<tr><td>' + result[i].theaterName + '</td></tr>');
					}
				}
				$('#searchResultBox').append('</table>');
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				alert("작업 완료");
 			}
	});
 
 });