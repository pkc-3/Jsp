<%@page import="kr.co.jboard1.bean.ArticleBean"%>
<%@page import="kr.co.jboard1.dao.ArticleDao"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	request.setCharacterEncoding("utf-8");
	String comment	= request.getParameter("comment");
	String parent 	= request.getParameter("parent");
	String uid 		= request.getParameter("uid");
	String regip	= request.getRemoteAddr();
	
	ArticleBean ab = new ArticleBean();
	ab.setParent(parent); // 8번줄에선 문자열인데 ctrl로 setParent 가보면 int 변수 => 가서 set 함수 하나더 추가
	ab.setContent(comment);
	ab.setUid(uid);
	ab.setRegip(regip);
	
	ArticleDao dao = ArticleDao.getInstance(); 
	dao.insertComment(ab);
	
	// 댓글 등록
	dao.insertComment(ab);
	
	// 댓글 카운트 +1
	dao.updateCommentCount(parent, +1);
	
	// 리다이렉트
	response.sendRedirect("/JBoard1/view.jsp?seq="+parent);


%>