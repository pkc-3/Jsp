<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>4_1_IncludeTag</title>
	<!--
		 : 2021/06/02
		 : 고현석
		 : JSP 액션태그 실습하기
		 
		 include 지시자
		- 공통의 전역파일을 삽입하는 지시자
		- 일반적으로 UI 모듈, 공통전역 파일 변수를 삽입할 때 사용
		- 정적타입 삽입, 참고) include 태그는 동적타임에 삽입
		
		include 태그
		- 공통의 전역파일을 삽입하는 태그
		- 일반적으로 UI 모듈을 삽입할 때 사용
		- 동적타입에 삽입
	-->
</head>
<body>
	<h1>1.include 태그 실습하기</h1>
	<h4>include 지시자료 삽입</h4>
	<%@ include file="./inc/_header.jsp" %>
	<%@ include file="./inc/_footer.jsp" %>
	<h4>include 태그로 삽입</h4>
	<jsp:include page="./inc/_header.jsp"/>
	<jsp:include page="./inc/_footer.jsp"></jsp:include>
</body>
</html>