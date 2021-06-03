<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>6_5_Ajax</title>
	<!--
		 : 2021/06/03
		 : 고현석
		 : AJAX 실습하기
		 
		 AJAX(Asynchronous JavaScript and XML)
		 - 비동기적인 웹 애플리케이션의 제작을 위해 아래와 같은 조합을 이용하는 웹 개발 기법
		 - 
	-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			
			var tdUid = $('table tr:nth-child(1) > td:nth-child(2)');
			var tdName = $('table tr:nth-child(2) > td:nth-child(2)');
			var tdHp = $('table tr:nth-child(3) > td:nth-child(2)');
			var tdAge = $('table tr:nth-child(4) > td:nth-child(2)');
			
			$('button').click(function(){
				$.ajax({
					url:'./6_1_JsonData.jsp',
					type:'get',
					dataType:'json',
					success: function(data){
						
						tdUid.text(data.uid);
						tdName.text(data.name);
						tdHp.text(data.hp);
						tdAge.text(data.age);
					}
				});

			});
		});
	</script>
</head>
<body>
	<h3>5.Ajax 통신 실습하기</h3>
	<button>데이터 가져오기</button>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>-</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>-</td>
		</tr>
		<tr>
			<td>휴대폰</td>
			<td>-</td>
		</tr>
		<tr>
			<td>나이</td>
			<td>-</td>
		</tr>
	</table>
	
</body>
</html>