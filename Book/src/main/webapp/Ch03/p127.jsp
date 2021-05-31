<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<h2>if-else문 예제 - 좋아하는 색 선택</h2>

<%--입력한 값을 얻어내서 처리 --%>
<% 
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	String selectColor = " ";
	
	if(color.equals("blue")){
		selectColor = "파랑색";
	}else if(color.equals("green")){
		selectColor = "초록색";
	}else if(color.equals("red")){
		selectColor = "빨강색";
	}else{
		selectColor = "기타색";
	}
%> 

<p><%=name%>님이 선택한 색은 <%=selectColor%>입니다.</p>
선택한 색:<br>
<img src="<%=color + ".jpg "%>" border="0">