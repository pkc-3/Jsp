<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!--
		 : 2021/06/04
		 : 고현석
		 : 4주차 주간평가
	-->
</head>
<body>
	<h3>직원등록</h3>
	<form method="post" action="./proc/insertProc.jsp">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<input type="radio" name="gender" value="1">남
					<input type="radio" name="gender" value="2">여	
				</td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name="hp"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>직급</td>
				<td>
					<select name="pos">
						<option>대리</option>
						<option>과장</option>
						<option>차장</option>
						<option>부장</option>
						<option>대표</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>부서</td>
				<td>
					<select name= "dep">
						<option value="101">고객지원부</option>
						<option value="102">자재부</option>
						<option value="103">영업부</option>
						<option value="104">재무부</option>
						<option value="105">인사부</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="등록하기">
				</td>
			</tr>	
		</table>
	</form>
</body>
</html>