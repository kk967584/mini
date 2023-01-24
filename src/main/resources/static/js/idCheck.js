/**
 *  idCHeck.js
 	아이디 중복확인
 */
 
 $(document).ready(function(){
$('#idCheck').on('click', function(){ 	
 		event.preventDefault(); 
    $.ajax({
      url : "/member/idCheck",
      type : "post",
      dataType : "json",
      data : {"memId" : $("#memId").val()},
      success : function(result){
        if(result == 1)
          alert("중복된 아이디입니다.");
        else if(result == 0)
          alert("사용가능한 아이디입니다.");

      },
      error:function(){
      alert("실패")
      },
      complete:function(){
      	//alert("작업 완료");
      }
    });
			
 });
  });