/**
 * reservationMenuSetting.js
 */
 
function today() {
		date = new Date();
		year = date.getFullYear();
		month = date.getMonth()+1;
		day = date.getDate();
		return year+"-"+month+"-"+day;
};
 
$(document).ready(function() {
	var cityTheator = ["서울 ▼", "경기 ▼", "인천 ▼"];
	var cityId = ["seoulTheater", "gyeonggiTheater", "incheonTheater"];
	
	for(var i=0; i<cityTheator.length; i++) {
		$('#theaterItem').append('<li><a href="#" id=' + cityId[i] + '>' + cityTheator[i] + "</a></li>");
	};
	
	var seoulTheater = ["강남", "강변", "건대입구"];
	
	for(var i=0; i<seoulTheater.length; i++) {
		$('#seoulTheaterItem').append('<li><input type="radio" id=' + seoulTheater[i] + ' value=' + seoulTheater[i] + ' name="서울영화관" class="theaterChoice"><label for=' + seoulTheater[i] + '>' + seoulTheater[i] + '</label></li>');
	};
	
	// <li><input type="radio" id="강남" value="강남" name="서울영화관" class="theaterChoice"><label for="강남">강남</label></li>
	
	$('#날짜선택').attr("value", today());
	
	var str = "";
	var apb = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N'];
	
	for(var i=1; i<=8; i++) {
		str += '<tr>';
		for(var j=1; j<=8; j++) {
			str += '<td><input type="checkbox" name="screen" id=' + apb[i-1] + j + ' value=' + apb[i-1] + j
				 + '><label for=' + apb[i-1] + j + '>' + apb[i-1] + j + '</label></td>';
		}
		str += '</tr>';
		$('.screenBody').append(str);
		str ="";
	}
	
	$('#adult').on('change', function() {
		var charge = $('#adult option:selected').val() *10000 + $('#child option:selected').val() *5000;
		$('#charge').html("<h3 class='screenH3'>합계 금액</h3>"+charge+"원");
	});
	
	$('#child').on('change', function() {
		var charge = $('#adult option:selected').val() *10000 + $('#child option:selected').val() *5000;
		$('#charge').html("<h3 class='screenH3'>합계 금액</h3>"+charge+"원");
	});
	
	$('#checkList').append('<li>영화 제목 : '+'블랙 팬서 - 와칸다 포에버'+'</li>');
	
	
});