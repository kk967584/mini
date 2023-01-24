/**
 * reservation.js
 */
 
 /****************** 영화관 선택 *********************/

 $(document).ready(function() {
	
	$('')
	
	$('#seoulTheater').on('click', function(){
		if($(this).text() == '서울 ▼') {
			$('#seoulTheaterBox').css('visibility', 'visible');
			$(this).text('서울 ▲');
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$('#gyeonggiTheater').text('경기 ▼');
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$('#incheonTheater').text('인천 ▼');
		} else {
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$(this).text('서울 ▼');
		}
	});
	$('#gyeonggiTheater').on('click', function(){
		if($(this).text() == '경기 ▼') {
			$('#gyeonggiTheaterBox').css('visibility', 'visible');
			$(this).text('경기 ▲');
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$('#seoulTheater').text('서울 ▼');
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$('#incheonTheater').text('인천 ▼');
		} else {
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$(this).text('경기 ▼');
		}
	});
	$('#incheonTheater').on('click', function(){
		if($(this).text() == '인천 ▼') {
			$('#incheonTheaterBox').css('visibility', 'visible');
			$(this).text('인천 ▲');
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$('#seoulTheater').text('서울 ▼');
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$('#gyeonggiTheater').text('경기 ▼');
		} else {
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$(this).text('인천 ▼');
		}
	});
	
	$('.theaterChoice').on('change', function() {
		$('#영화관다음박스').css('display', 'block');
	});
	
	$('#영화관다음').on('click', function() {
		var printTheater = $('input[class="theaterChoice"]:checked').val();
		$('#checkList').append('<li id="checkTheater">영화관 : '+printTheater+' 영화관</li>');
		$('#dateChoice').css('display', 'block');
		$('#choiceTheaterSection').css('display', 'none');
		$('#seoulTheaterBox').css('visibility', 'hidden');
		$('#seoulTheater').text('서울 ▼');
		$('#incheonTheaterBox').css('visibility', 'hidden');
		$('#incheonTheater').text('인천 ▼');
		$('#gyeonggiTheaterBox').css('visibility', 'hidden');
		$('#gyeonggiTheater').text('경기 ▼');
	});
/********************** 예매 날짜 선택 *********************/
	
	$('#theaterButton').on('click', function() {
		$('#상영관').css('display', 'block');
		$('input:radio').prop('checked', false);
	});
	
	$('#backTheaterButton').on('click', function() {
		$('#dateChoice').css('display', 'none');
		$('#choiceTheaterSection').css('display', 'block');
		$('input:radio').prop('checked', false);
		$('#checkTheater').remove();
		$('#영화관다음박스').css('display', 'none');
		$('#상영관').css('display', 'none');
		$('#날짜버튼').css('display', 'none');
	});
	
	$('.상영관클래스').on('click', function() {
		$('#상영시간선택박스').css('display', 'block');
	});
	
	$('.상영시간클래스').on('click', function() {
		$('#날짜버튼').css('display', 'block');
	});
	
	$('#날짜다음').on('click', function() {
		printTheater = $('input[class="상영관클래스"]:checked').val();
		$('#checkList').append('<li id="checkTh">상영관 : '+printTheater+'</li>');
		printTheater = $('input[class="상영시간클래스"]:checked').val();
		$('#checkList').append('<li id="checkTime">상영시간 : '+printTheater+'</li>');
		// $('input:radio').prop('checked', false);
		$('#dateChoice').css('display', 'none');
		$('#peopleScreen').css('display', 'block');
	});
	
	$('#인원좌석이전').on('click', function() {
		$('#dateChoice').css('display', 'block');
		$('#peopleScreen').css('display', 'none');
		$('#checkTh').remove();
		$('#checkTime').remove();
		$('#adult').val(0).prop("selected", true);
		$('#child').val(0).prop("selected", true);
		$('input:checkbox').prop('checked', false);
		$('#charge').html("<h3>합계 금액</h3>"+0+"원")
	});
	
	$('#인원좌석다음').on('click', function() {
		if(Number($('#adult option:selected').val()) === 0 && Number($('#child option:selected').val()) === 0) {
			alert("인원을 선택하지 않았습니다.");
		} else if($("input:checkbox[name='screen']:checked").length === (Number($('#adult option:selected').val())+Number( $('#child option:selected').val() ) ) ) {
			printTheater = Number($('#adult option:selected').val())+Number($('#child option:selected').val());
			$('#checkList').append('<li id="checkPeople">총 인원 : '+printTheater+'명</li>');
			if (Number($('#adult option:selected').val()) >0) {
				printTheater = $('#adult option:selected').val();
				$('#checkList').append('<li id="checkAdult">성인 : '+printTheater+'명</li>');
			}
			if (Number($('#child option:selected').val()) >0) {
				printTheater = $('#child option:selected').val();
				$('#checkList').append('<li id="checkChild">청소년 : '+printTheater+'명</li>');
			}
			printTheater = $('#adult option:selected').val() *10000 + $('#child option:selected').val() *5000;
			$('#checkList').append('<li id="checkCharge">합계 금액 : '+printTheater+'원</li>');
			$('#checkList').append('<li id="checkSeat">선택된 좌석 : </li>');
			$("input:checkbox[name='screen']:checked").each(function() {
				$('#checkSeat').append($(this).val()+' ');
			});
			
			$('#peopleScreen').css('display', 'none');
			$('#check').css('display', 'block');
		} else if ($("input:checkbox[name='screen']:checked").length > (Number($('#adult option:selected').val())+Number( $('#child option:selected').val() ) ) ){
			alert("선택된 인원 수 보다 더 많은 좌석을 선택하셨습니다.");
		} else if ($("input:checkbox[name='screen']:checked").length < (Number($('#adult option:selected').val())+Number( $('#child option:selected').val() ) ) ){
			alert("선택된 인원 수 보다 더 적은 좌석을 선택하셨습니다.");
		}
	});
	
	$('#결제확인이전').on('click', function() {
		$('#checkCharge').remove();
		$('#checkSeat').remove();
		$('#checkPeople').remove();
		$('#checkAdult').remove();
		$('#checkChild').remove();
		$('#peopleScreen').css('display', 'block');
		$('#check').css('display', 'none');
	});
	
	$('#결제확인다음').on('click', function() {
		$('#chargeBox').css('display', 'block');
		$('#check').css('display', 'none');
		$('#총금액계산').append(($('#adult option:selected').val() *10000 + $('#child option:selected').val() *5000)+"원");
	});
	
	$('#결제버튼').on('click', function() {
		$('#chargeBox').css('display', 'none');
		$('#예매마지막').css('display', 'block');
	});
	
	
	
});