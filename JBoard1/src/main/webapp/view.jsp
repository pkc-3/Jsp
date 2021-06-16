<%@page import="java.util.List"%>
<%@page import="kr.co.jboard1.bean.MemberBean"%>
<%@page import="kr.co.jboard1.bean.ArticleBean"%>
<%@page import="kr.co.jboard1.dao.ArticleDao"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//세션 사용정보 가져오기(로그인한 정보가 필요할때)
	MemberBean mb = (MemberBean) session.getAttribute("sessMember");
	
	//로그인을 하지 않고 List 페이지를 요청할 경우
	if(mb == null){
		response.sendRedirect("/JBoard1/user/login.jsp?success=101");
		return;
	}
	
	// 전송 데이터 수신
	request.setCharacterEncoding("utf-8");
	String seq = request.getParameter("seq");

	// Dao 객체 가져오기
	ArticleDao dao = ArticleDao.getInstance();
	
	// 글 가져오기
	ArticleBean article = dao.selectArticle(seq);
	
	// 해당 글 조회수 업데이트
	dao.updateArticleHit(seq);
	
	// 댓글 가져오기
	List<ArticleBean> comments = dao.selectComments(seq);
	
	//
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>글보기</title>
    <link rel="stylesheet" href="/JBoard1/css/style.css"/>
</head>
<body>
    <div id="wrapper">
        <section id="board" class="view">
            <h3>글보기</h3>
            <table>
                <tr>
                    <td>제목</td>
                    <td><input type="text" name="title" value="<%= article.getTitle() %>" readonly/></td>
                </tr>
                <% if(article.getFile() == 1){ %>
                <tr>
                    <td>첨부파일</td>
                    <td>
                        <a href="/JBoard1/proc/download.jsp?seq=<%= article.getFb().getSeq() %>"><%= article.getFb().getOriName() %></a>
                        <span><%= article.getFb().getDownload() %>회 다운로드</span>
                    </td>
                </tr>
                <% } %>
                <tr>
                    <td>내용</td>
                    <td>
                        <textarea name="content" readonly><%= article.getContent() %></textarea>
                    </td>
                </tr>
            </table>
            <div>
                <a href="#" class="btnDelete">삭제</a>
                <a href="/JBoard1/modify.jsp" class="btnModify">수정</a>
                <a href="/JBoard1/list.jsp" class="btnList">목록</a>
            </div>  
            
            <!-- 댓글리스트 -->
            <section class="commentList">
                <h3>댓글목록</h3>
                
                <% for (ArticleBean comment : comments){ %>
                <article class="comment">
                    <span>
                        <span><%= comment.getNick() %></span>
                        <span><%= comment.getRdate().substring(2, 16) %></span>
                    </span>
                    <textarea name="comment" readonly><%= comment.getContent() %></textarea>
                    <% if(comment.getUid().equals(mb.getUid())){ %>
                    <div>
                        <a href="/JBoard1/proc/commentDelete.jsp?seq=<%= comment.getSeq() %>&parent=<%= comment.getParent() %>">삭제</a>
                        <a href="#">수정</a>
                    </div>
                    <% } %>
                </article>
                <% } %>
                
                <% if(comments.size()== 0){ %>
                <p class="empty">
                    등록된 댓글이 없습니다.
                </p>
                <% } %>
            </section>

            <!-- 댓글입력폼 -->
            <section class="commentForm">
                <h3>댓글쓰기</h3>
                <form action="/JBoard1/proc/comment.jsp" method="post">
                	<input type="hidden" name="parent" value="<%= article.getSeq() %>">
                	<input type="hidden" name="uid" value="<%= mb.getUid() %>">
                    <textarea name="comment" required></textarea>
                    <div>
                        <a href="#" class="btnCancel">취소</a>
                        <input type="submit" class="btnWrite" value="작성완료"/>
                    </div>
                </form>
            </section>

        </section>
    </div>    
</body>
</html>