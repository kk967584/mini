/**
 * reservation.js
 */
 
 /****************** 영화관 선택 *********************/

 $(document).ready(function() {
 	var printTitle;
 	
	
	$('.theaterChoiceBtn').on('click', function() {
		event.preventDefault();
		
		printTitle = $(this).attr("data-mvtitle");
		
		if($(this).val() == '서울 ▶') {
			$('#seoulTheaterBox').css('visibility', 'visible');
			$('#서울').val('서울 ◀');
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$('#경기').val('경기 ▶');
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$('#인천').val('인천 ▶');
			$('#gangwonTheaterBox').css('visibility', 'hidden');
			$('#강원').val('강원 ▶');
			$('#daejeonChungcheongTheaterBox').css('visibility', 'hidden');
			$('#대전충청').val('대전충청 ▶');
			$('#daeguTheaterBox').css('visibility', 'hidden');
			$('#대구').val('대구 ▶');
			$('#busanUlsanTheaterBox').css('visibility', 'hidden');
			$('#부산울산').val('부산울산 ▶');
			$('#gyeongsangTheaterBox').css('visibility', 'hidden');
			$('#경상').val('경상 ▶');
			$('#gwangjuJeollaJejuTheaterBox').css('visibility', 'hidden');
			$('#광주전라제주').val('광주전라제주 ▶');
			
			$('input[data-chk="경기영화관"]').prop("checked", false);
			$('input[data-chk="인천영화관"]').prop("checked", false);
			$('input[data-chk="강원영화관"]').prop("checked", false);
			$('input[data-chk="대전충청영화관"]').prop("checked", false);
			$('input[data-chk="대구영화관"]').prop("checked", false);
			$('input[data-chk="부산울산영화관"]').prop("checked", false);
			$('input[data-chk="경상영화관"]').prop("checked", false);
			$('input[data-chk="광주전라제주영화관"]').prop("checked", false);
		} 
		else if($(this).val() == '경기 ▶') {
			$('#gyeonggiTheaterBox').css('visibility', 'visible');
			$('#경기').val('경기 ◀');
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$('#서울').val('서울 ▶');
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$('#인천').val('인천 ▶');
			$('#gangwonTheaterBox').css('visibility', 'hidden');
			$('#강원').val('강원 ▶');
			$('#daejeonChungcheongTheaterBox').css('visibility', 'hidden');
			$('#대전충청').val('대전충청 ▶');
			$('#daeguTheaterBox').css('visibility', 'hidden');
			$('#대구').val('대구 ▶');
			$('#busanUlsanTheaterBox').css('visibility', 'hidden');
			$('#부산울산').val('부산울산 ▶');
			$('#gyeongsangTheaterBox').css('visibility', 'hidden');
			$('#경상').val('경상 ▶');
			$('#gwangjuJeollaJejuTheaterBox').css('visibility', 'hidden');
			$('#광주전라제주').val('광주전라제주 ▶');
			
			$('input[data-chk="서울영화관"]').prop("checked", false);
			$('input[data-chk="인천영화관"]').prop("checked", false);
			$('input[data-chk="강원영화관"]').prop("checked", false);
			$('input[data-chk="대전충청영화관"]').prop("checked", false);
			$('input[data-chk="대구영화관"]').prop("checked", false);
			$('input[data-chk="부산울산영화관"]').prop("checked", false);
			$('input[data-chk="경상영화관"]').prop("checked", false);
			$('input[data-chk="광주전라제주영화관"]').prop("checked", false);
		} 
		else if($(this).val() == '인천 ▶') {
			$('#incheonTheaterBox').css('visibility', 'visible');
			$('#인천').val('인천 ◀');
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$('#서울').val('서울 ▶');
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$('#경기').val('경기 ▶');
			$('#gangwonTheaterBox').css('visibility', 'hidden');
			$('#강원').val('강원 ▶');
			$('#daejeonChungcheongTheaterBox').css('visibility', 'hidden');
			$('#대전충청').val('대전충청 ▶');
			$('#daeguTheaterBox').css('visibility', 'hidden');
			$('#대구').val('대구 ▶');
			$('#busanUlsanTheaterBox').css('visibility', 'hidden');
			$('#부산울산').val('부산울산 ▶');
			$('#gyeongsangTheaterBox').css('visibility', 'hidden');
			$('#경상').val('경상 ▶');
			$('#gwangjuJeollaJejuTheaterBox').css('visibility', 'hidden');
			$('#광주전라제주').val('광주전라제주 ▶');
			
			$('input[data-chk="서울영화관"]').prop("checked", false);
			$('input[data-chk="경기영화관"]').prop("checked", false);
			$('input[data-chk="강원영화관"]').prop("checked", false);
			$('input[data-chk="대전충청영화관"]').prop("checked", false);
			$('input[data-chk="대구영화관"]').prop("checked", false);
			$('input[data-chk="부산울산영화관"]').prop("checked", false);
			$('input[data-chk="경상영화관"]').prop("checked", false);
			$('input[data-chk="광주전라제주영화관"]').prop("checked", false);
		}
		else if($(this).val() == '강원 ▶') {
			$('#gangwonTheaterBox').css('visibility', 'visible');
			$('#강원').val('강원 ◀');
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$('#경기').val('경기 ▶');
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$('#서울').val('서울 ▶');
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$('#인천').val('인천 ▶');
			$('#daejeonChungcheongTheaterBox').css('visibility', 'hidden');
			$('#대전충청').val('대전충청 ▶');
			$('#daeguTheaterBox').css('visibility', 'hidden');
			$('#대구').val('대구 ▶');
			$('#busanUlsanTheaterBox').css('visibility', 'hidden');
			$('#부산울산').val('부산울산 ▶');
			$('#gyeongsangTheaterBox').css('visibility', 'hidden');
			$('#경상').val('경상 ▶');
			$('#gwangjuJeollaJejuTheaterBox').css('visibility', 'hidden');
			$('#광주전라제주').val('광주전라제주 ▶');
			
			$('input[data-chk="서울영화관"]').prop("checked", false);
			$('input[data-chk="경기영화관"]').prop("checked", false);
			$('input[data-chk="인천영화관"]').prop("checked", false);
			$('input[data-chk="대전충청영화관"]').prop("checked", false);
			$('input[data-chk="대구영화관"]').prop("checked", false);
			$('input[data-chk="부산울산영화관"]').prop("checked", false);
			$('input[data-chk="경상영화관"]').prop("checked", false);
			$('input[data-chk="광주전라제주영화관"]').prop("checked", false);
		} 
		else if($(this).val() == '대전충청 ▶') {
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$('#경기').val('경기 ▶');
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$('#서울').val('서울 ▶');
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$('#인천').val('인천 ▶');
			$('#gangwonTheaterBox').css('visibility', 'hidden');
			$('#강원').val('강원 ▶');
			$('#daejeonChungcheongTheaterBox').css('visibility', 'visible');
			$('#대전충청').val('대전충청 ◀');
			$('#daeguTheaterBox').css('visibility', 'hidden');
			$('#대구').val('대구 ▶');
			$('#busanUlsanTheaterBox').css('visibility', 'hidden');
			$('#부산울산').val('부산울산 ▶');
			$('#gyeongsangTheaterBox').css('visibility', 'hidden');
			$('#경상').val('경상 ▶');
			$('#gwangjuJeollaJejuTheaterBox').css('visibility', 'hidden');
			$('#광주전라제주').val('광주전라제주 ▶');
			
			$('input[data-chk="서울영화관"]').prop("checked", false);
			$('input[data-chk="경기영화관"]').prop("checked", false);
			$('input[data-chk="인천영화관"]').prop("checked", false);
			$('input[data-chk="강원영화관"]').prop("checked", false);
			$('input[data-chk="대구영화관"]').prop("checked", false);
			$('input[data-chk="부산울산영화관"]').prop("checked", false);
			$('input[data-chk="경상영화관"]').prop("checked", false);
			$('input[data-chk="광주전라제주영화관"]').prop("checked", false);
		} 
		else if($(this).val() == '대구 ▶') {
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$('#경기').val('경기 ▶');
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$('#서울').val('서울 ▶');
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$('#인천').val('인천 ▶');
			$('#gangwonTheaterBox').css('visibility', 'hidden');
			$('#강원').val('강원 ▶');
			$('#daejeonChungcheongTheaterBox').css('visibility', 'hidden');
			$('#대전충청').val('대전충청 ▶');
			$('#daeguTheaterBox').css('visibility', 'visible');
			$('#대구').val('대구 ◀');
			$('#busanUlsanTheaterBox').css('visibility', 'hidden');
			$('#부산울산').val('부산울산 ▶');
			$('#gyeongsangTheaterBox').css('visibility', 'hidden');
			$('#경상').val('경상 ▶');
			$('#gwangjuJeollaJejuTheaterBox').css('visibility', 'hidden');
			$('#광주전라제주').val('광주전라제주 ▶');
			
			$('input[data-chk="서울영화관"]').prop("checked", false);
			$('input[data-chk="경기영화관"]').prop("checked", false);
			$('input[data-chk="인천영화관"]').prop("checked", false);
			$('input[data-chk="강원영화관"]').prop("checked", false);
			$('input[data-chk="대전충청영화관"]').prop("checked", false);
			$('input[data-chk="부산울산영화관"]').prop("checked", false);
			$('input[data-chk="경상영화관"]').prop("checked", false);
			$('input[data-chk="광주전라제주영화관"]').prop("checked", false);
		} 
		else if($(this).val() == '부산울산 ▶') {
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$('#경기').val('경기 ▶');
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$('#서울').val('서울 ▶');
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$('#인천').val('인천 ▶');
			$('#gangwonTheaterBox').css('visibility', 'hidden');
			$('#강원').val('강원 ▶');
			$('#daejeonChungcheongTheaterBox').css('visibility', 'hidden');
			$('#대전충청').val('대전충청 ▶');
			$('#daeguTheaterBox').css('visibility', 'hidden');
			$('#대구').val('대구 ▶');
			$('#busanUlsanTheaterBox').css('visibility', 'visible');
			$('#부산울산').val('부산울산 ◀');
			$('#gyeongsangTheaterBox').css('visibility', 'hidden');
			$('#경상').val('경상 ▶');
			$('#gwangjuJeollaJejuTheaterBox').css('visibility', 'hidden');
			$('#광주전라제주').val('광주전라제주 ▶');
			
			$('input[data-chk="서울영화관"]').prop("checked", false);
			$('input[data-chk="경기영화관"]').prop("checked", false);
			$('input[data-chk="인천영화관"]').prop("checked", false);
			$('input[data-chk="강원영화관"]').prop("checked", false);
			$('input[data-chk="대전충청영화관"]').prop("checked", false);
			$('input[data-chk="대구영화관"]').prop("checked", false);
			$('input[data-chk="경상영화관"]').prop("checked", false);
			$('input[data-chk="광주전라제주영화관"]').prop("checked", false);
		} 
		else if($(this).val() == '경상 ▶') {
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$('#경기').val('경기 ▶');
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$('#서울').val('서울 ▶');
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$('#인천').val('인천 ▶');
			$('#gangwonTheaterBox').css('visibility', 'hidden');
			$('#강원').val('강원 ▶');
			$('#daejeonChungcheongTheaterBox').css('visibility', 'hidden');
			$('#대전충청').val('대전충청 ▶');
			$('#daeguTheaterBox').css('visibility', 'hidden');
			$('#대구').val('대구 ▶');
			$('#busanUlsanTheaterBox').css('visibility', 'hidden');
			$('#부산울산').val('부산울산 ▶');
			$('#gyeongsangTheaterBox').css('visibility', 'visible');
			$('#경상').val('경상 ◀');
			$('#gwangjuJeollaJejuTheaterBox').css('visibility', 'hidden');
			$('#광주전라제주').val('광주전라제주 ▶');
			
			$('input[data-chk="서울영화관"]').prop("checked", false);
			$('input[data-chk="경기영화관"]').prop("checked", false);
			$('input[data-chk="인천영화관"]').prop("checked", false);
			$('input[data-chk="강원영화관"]').prop("checked", false);
			$('input[data-chk="대전충청영화관"]').prop("checked", false);
			$('input[data-chk="대구영화관"]').prop("checked", false);
			$('input[data-chk="부산울산영화관"]').prop("checked", false);
			$('input[data-chk="광주전라제주영화관"]').prop("checked", false);
		} 
		else if($(this).val() == '광주전라제주 ▶') {
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$('#경기').val('경기 ▶');
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$('#서울').val('서울 ▶');
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$('#인천').val('인천 ▶');
			$('#gangwonTheaterBox').css('visibility', 'hidden');
			$('#강원').val('강원 ▶');
			$('#daejeonChungcheongTheaterBox').css('visibility', 'hidden');
			$('#대전충청').val('대전충청 ▶');
			$('#daeguTheaterBox').css('visibility', 'hidden');
			$('#대구').val('대구 ▶');
			$('#busanUlsanTheaterBox').css('visibility', 'hidden');
			$('#부산울산').val('부산울산 ▶');
			$('#gyeongsangTheaterBox').css('visibility', 'hidden');
			$('#경상').val('경상 ▶');
			$('#gwangjuJeollaJejuTheaterBox').css('visibility', 'visible');
			$('#광주전라제주').val('광주전라제주 ◀');
			
			$('input[data-chk="서울영화관"]').prop("checked", false);
			$('input[data-chk="경기영화관"]').prop("checked", false);
			$('input[data-chk="인천영화관"]').prop("checked", false);
			$('input[data-chk="강원영화관"]').prop("checked", false);
			$('input[data-chk="대전충청영화관"]').prop("checked", false);
			$('input[data-chk="대구영화관"]').prop("checked", false);
			$('input[data-chk="부산울산영화관"]').prop("checked", false);
			$('input[data-chk="경상영화관"]').prop("checked", false);
		} 
		else {
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$('#경기').val('경기 ▶');
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$('#서울').val('서울 ▶');
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$('#인천').val('인천 ▶');
			$('#gangwonTheaterBox').css('visibility', 'hidden');
			$('#강원').val('강원 ▶');
			$('#daejeonChungcheongTheaterBox').css('visibility', 'hidden');
			$('#대전충청').val('대전충청 ▶');
			$('#daeguTheaterBox').css('visibility', 'hidden');
			$('#대구').val('대구 ▶');
			$('#busanUlsanTheaterBox').css('visibility', 'hidden');
			$('#부산울산').val('부산울산 ▶');
			$('#gyeongsangTheaterBox').css('visibility', 'hidden');
			$('#경상').val('경상 ▶');
			$('#gwangjuJeollaJejuTheaterBox').css('visibility', 'hidden');
			$('#광주전라제주').val('광주전라제주 ▶');
			
			$('input[data-chk="인천영화관"]').prop("checked", false);
			$('input[data-chk="서울영화관"]').prop("checked", false);
			$('input[data-chk="경기영화관"]').prop("checked", false);
			$('input[data-chk="강원영화관"]').prop("checked", false);
			$('input[data-chk="대전충청영화관"]').prop("checked", false);
			$('input[data-chk="대구영화관"]').prop("checked", false);
			$('input[data-chk="부산울산영화관"]').prop("checked", false);
			$('input[data-chk="경상영화관"]').prop("checked", false);
			$('input[data-chk="광주전라제주영화관"]').prop("checked", false);
		}
	});
	
	$('.theaterChoice').on('change', function() {
		$('#영화관다음박스').css('display', 'block');
	});
	
	$('#영화관다음').on('click', function() {
		event.preventDefault();
		if($('.theaterChoice').is(':checked')) {
			var printTheater = $('input[class="theaterChoice"]:checked').val();
			$('#checkList').append('<tr id="removeTitle"><th>영화 제목</th><td><input type="text" id="checkTitle" name="movieTitle" value="'+printTitle+'" readonly></td></tr>');
			$('#checkList').append('<tr id="removeTheater"><th>영화관</th><td><input type="text" id="checkTheater" name="theaterName" value="'+printTheater+'" readonly></td></tr>');
			$('#dateChoice').css('display', 'block');
			$('#choiceTheaterSection').css('display', 'none');
			$('#seoulTheaterBox').css('visibility', 'hidden');
			$('#서울').val('서울 ▶');
			$('#incheonTheaterBox').css('visibility', 'hidden');
			$('#인천').val('인천 ▶');
			$('#gyeonggiTheaterBox').css('visibility', 'hidden');
			$('#경기').val('경기 ▶');
		}
		else {
			alert("선택된 영화관이 없습니다");
		}
	});
/********************** 예매 날짜 선택 *********************/
	
	$('#theaterButton').on('click', function() {
		event.preventDefault();
		$('#상영관').css('display', 'block');
		//$('input:radio').prop('checked', false);
		
		
		printTheater = $('#날짜선택').val();
		$('#checkList').append('<tr id="removeTime2"><th>상영일</th><td><input type="text" id="checkDate" name="scDate" value="'+printTheater+'" readonly></td></tr>');
	});
	
	$('#backTheaterButton').on('click', function() {
		event.preventDefault();
		$('#dateChoice').css('display', 'none');
		$('#choiceTheaterSection').css('display', 'block');
		$('input:radio').prop('checked', false);
		$('#removeTitle').remove();
		$('#removeTheater').remove();
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
		$('#checkList').append('<tr id="removeScreen"><th>상영관</th><td><input type="text" id="checkTh" name="screenName" value="'+printTheater+'" readonly></td></tr>');
		printTheater = $('input[class="상영시간클래스"]:checked').val();
		$('#checkList').append('<tr id="removeTime"><th>상영시간</th><td><input type="text" id="checkTime" name="scTime" value="'+printTheater+'" readonly></td></tr>');
		// $('input:radio').prop('checked', false);
		$('#dateChoice').css('display', 'none');
		$('#peopleScreen').css('display', 'block');
	});
	
	$('#인원좌석이전').on('click', function() {
		$('#dateChoice').css('display', 'block');
		$('#peopleScreen').css('display', 'none');
		$('#removeScreen').remove();
		$('#removeTime').remove();
		$('#removeTime2').remove();
		$('#adult').val(0).prop("selected", true);
		$('#child').val(0).prop("selected", true);
		$('input:checkbox').prop('checked', false);
		$('#charge').html("<h3>합계 금액</h3>"+0+"원");
	});
	//'<tr><th>선택된 좌석</th><td><input type="text" id="checkSeat" name="seat" value="'+printTheater+'" readonly></td></tr>'
	$('#인원좌석다음').on('click', function() {
		if(Number($('#adult option:selected').val()) === 0 && Number($('#child option:selected').val()) === 0) {
			alert("인원을 선택하지 않았습니다.");
		} else if($("input:checkbox[name='screen']:checked").length === (Number($('#adult option:selected').val())+Number( $('#child option:selected').val() ) ) ) {
			printTheater = Number($('#adult option:selected').val())+Number($('#child option:selected').val());

			$('#checkList').append('<tr id="removePeopleAll"><th>총 인원</th><td><input type="text" id="checkPeople" name="peopleAll" value="'+printTheater+'" readonly></td></tr>');
			if (Number($('#adult option:selected').val()) >0) {
				printTheater = $('#adult option:selected').val();
				$('#checkList').append('<tr id="removePeopleAdult"><th>성인</th><td><input type="text" id="checkAdult" name="peopleAdult" value="'+printTheater+'" readonly></td></tr>');
			}
			if (Number($('#child option:selected').val()) >0) {
				printTheater = $('#child option:selected').val();
				$('#checkList').append('<tr id="removePeopleChile"><th>청소년</th><td><input type="text" id="checkChild" name="peopleChild" value="'+printTheater+'" readonly></td></tr>');
			}
			printTheater = $('#adult option:selected').val() *10000 + $('#child option:selected').val() *5000;
			$('#checkList').append('<tr id="removeCharge"><th>합계 금액</th><td><input type="text" id="checkCharge" name="price" value="'+printTheater+'" readonly></td></tr>');
			var seatList="";
			$("input:checkbox[name='screen']:checked").each(function() {
				seatList += $(this).val() + ' ';
			});
			$('#checkList').append('<tr id="removeSeat"><th>선택된 좌석</th><td><input type="text" id="checkSeat" name="seat" value="'+seatList+'" readonly></td></tr>');
			
			$('#peopleScreen').css('display', 'none');
			$('#check').css('display', 'block');
		} else if ($("input:checkbox[name='screen']:checked").length > (Number($('#adult option:selected').val())+Number( $('#child option:selected').val() ) ) ){
			alert("선택된 인원 수 보다 더 많은 좌석을 선택하셨습니다.");
		} else if ($("input:checkbox[name='screen']:checked").length < (Number($('#adult option:selected').val())+Number( $('#child option:selected').val() ) ) ){
			alert("선택된 인원 수 보다 더 적은 좌석을 선택하셨습니다.");
		}
	});
	
	$('#결제확인이전').on('click', function() {
		event.preventDefault();
		$('#removeCharge').remove();
		$('#removeSeat').remove();
		$('#removePeopleAll').remove();
		$('#removePeopleAdult').remove();
		$('#removePeopleChile').remove();
		$('#peopleScreen').css('display', 'block');
		$('#check').css('display', 'none');
	});
	
	$('#결제확인다음').on('click', function() {
		$('#chargeBox').css('display', 'block');
		$('#check').css('display', 'none');
		$('#총금액계산').append(($('#adult option:selected').val() *10000 + $('#child option:selected').val() *5000)+"원");
		alert("예매가 완료되었습니다.\n처음 화면으로 돌아갑니다.");
	});
	
	$('#결제버튼').on('click', function() {
		$('#chargeBox').css('display', 'none');
		$('#예매마지막').css('display', 'block');
	});
	
	
	
});