/**
 * 
 */

var regName = /^[가-힣]{2,10}$/
var isNameOk = false;
    	$(function(){
    		
    		$('input[name=name]').focusout(function(){
    			var name = $(this).val();
    			if(regName.test(name)){
    				$('.resultName').css('color','green').text('사용 가능한 이름 입니다.');
    				isNameOk = true;
    			}else{
    				$('.resultName').css('color','red').text('이름은 한글 2~10자 까지 입력가능');
    				isNameOk = false;
    			}
    			
    		});
    	});