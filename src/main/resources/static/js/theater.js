/**
 * 
 */
 
 $(document).ready(function() {
	$('#fdx-list').on('click', function() {
		$('#fdx-image').css('display', 'block');
		$('#screenx-image').css('display', 'none');
		$('#suite-image').css('display', 'none');
		$('#cine-image').css('display', 'none');
	});

	$('#screenx-list').on('click', function() {
		$('#fdx-image').css('display', 'none');
		$('#screenx-image').css('display', 'block');
		$('#suite-image').css('display', 'none');
		$('#cine-image').css('display', 'none');
	});

	$('#suite-list').on('click', function() {
		$('#fdx-image').css('display', 'none');
		$('#screenx-image').css('display', 'none');
		$('#suite-image').css('display', 'block');
		$('#cine-image').css('display', 'none');
	});

	$('#cine-list').on('click', function() {
		$('#fdx-image').css('display', 'none');
		$('#screenx-image').css('display', 'none');
		$('#suite-image').css('display', 'none');
		$('#cine-image').css('display', 'block');
	});
})