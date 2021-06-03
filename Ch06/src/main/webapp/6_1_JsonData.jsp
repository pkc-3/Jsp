<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>

	<%--
		 : 2021/06/03
		 : 고현석
		 : Json 실습하기
	--%>
<% 
	String json = "{\"uid\":\"a101\", \"name\":\"홍길동\", \"hp\":\"010-1010-1111\", \"age\":25}";
	out.print(json);
%>