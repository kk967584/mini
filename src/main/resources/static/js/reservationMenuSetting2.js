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
	$('#날짜선택').attr("value", today());
	$('#날짜선택').attr("min", today());
	
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
	
	
	
});