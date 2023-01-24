/**
 * 
 */
$(document).ready(function() {
	$('#name').focus();

	// focus / blur 이벤트 처리
	// input 텍스트 입력란과 비밀번호 입력란에 포커스 있을 때 색상 변경 : rgb(232, 232, 232))
	//이벤트 유형 : focus
	$('input[type="text"], input[type="password"]').on('focus', function() {
		$(this).css('background', 'rgb(232, 232, 232)');
	});

	//비밀번호/비밀번호확인 불일치 시 "비밀번호가 다릅니다 출력"
	$(function(){
    $('#memPwd').keyup(function(){
      $('#chkNotice').html('');
    });

    $('#pwdCheck').keyup(function(){

        if($('#memPwd').val() != $('#pwdCheck').val()){
          $('#chkNotice').html('비밀번호 일치하지 않음<br><br>');
          $('#chkNotice').attr('color', '#f82a2aa3');
        } else{
          $('#chkNotice').html('비밀번호 일치함<br><br>');
          $('#chkNotice').attr('color', '#199894b3');
        }

    });
});


	$(':text, :password').on('blur', function() {
		$(this).css('background', 'white');
	});


	$('#hp2').on('keyup', function() {
		if ($(this).val().length == 4)
			$('#hp3').focus();   // $(this).next().focus();
	});
	$('#but3').click(function(){
		alert("인증번호를 전송하였습니다");
	});
	
	$(function(){
    $('#confirm').keyup(function(){
      $('#chkConfirm').html('');
    });
    $('#but6').click(function(){

        if($('#confirm').val() != "123123"){
         alert("인증번호가 일치하지 않습니다");
        } else{
          alert("인증되었습니다");
        }
});
});
	
	$('#but5').click(function() {
		// ID 입력하지 않은 경우 
		if ($('#id').val() == "") {
			// "아이디를 입력하세요" 출력
			alert("아이디를 입력하세요");
			// ID 입력란에 포커스
			$('#id').focus();
			// 서버로 전송되지 않도록 기능 막음
			return false;
		}

		// 비밀번호 입력하지 않은 경우 
		else if ($('#pwd').val() == "") {
			// "비밀번호를 입력하세요" 출력
			alert("비밀번호를 입력하세요");
			// 비밀번호 입력란에 포커스
			$('#pwd').focus();
			// 서버로 전송되지 않도록 기능 막음
			return false;
		}
		
		else if ($('#email').val() == "") {
			alert("이메일을 입력하세요");
			$('#email').focus();
			return false;
		}
		
		else if ($('#birth').val() == "") {
			alert("생년월일을 입력하세요");
			$('#birth').focus();
			return false;
		}
		else if ($('#dt_address').val() == "") {
			alert("상세주소를 입력하세요");
			$('#dt_address').focus();
			return false;
		}
		
		else if ($('#hp2').val() == "" && $('#hp3').val()=="") {
			alert("휴대폰 번호를 입력하세요");
			$('#hp2').focus();
			return false;
		}
		else if ($('#confirm').val() == "") {
			alert("인증번호를 입력하세요");
			$('#confirm').focus();
			return false;
		}
		
		else{
			alert("회원가입 성공!");
			location.href='/';
			
		}
	
}); // 폼 submit 끝	
	

});
