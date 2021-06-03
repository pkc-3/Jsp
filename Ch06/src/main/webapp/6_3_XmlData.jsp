<%@ page contentType="text/xml;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	/*
	: 2021/06/03
	: 고현석
	: XML 실습하기
	
	XML(Extensible Markup Language)
		- Json과 더불어 이기종간의 데이터 전송을 위한 문서 포맷
		- 사용자가 직접 태그를 정의
		- Json 보다 파싱 속도가 느리다는 단점
	*/
	
	String xml = "<members>";
		   xml += "<members>";
		   xml += "<uid>a101</uid>";
		   xml += "<name>김유신</name>";
		   xml += "<hp>010-1212-1011</hp>";
		   xml += "<pos>사원</pos>";
		   xml += "<dep>101</dep>";
		   xml += "<rdate>2021-06-03 10:40:12</rdate>";
		   xml += "</members>";
		   xml += "<members>";
		   xml += "<uid>a102</uid>";
		   xml += "<name>김춘추</name>";
		   xml += "<hp>010-1212-2222</hp>";
		   xml += "<pos>대리</pos>";
		   xml += "<dep>102</dep>";
		   xml += "<rdate>2021-06-03 10:40:12</rdate>";
		   xml += "</members>";
		   xml += "</members>";

	   out.print(xml);
%>

