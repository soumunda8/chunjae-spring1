<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%--<c:set var="path" value="${pageContext.request.contextPath }" />--%>
<c:set var="path" value="/pro3_war" />
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../include/head.jsp" />
	<title>글 수정하기</title>
</head>
<body>
	<jsp:include page="../include/hd.jsp" />
	<section class="hero is-info">
		<div class="container is-fullhd">
			<div class="hero-body">
				<p class="title">
					Info hero
				</p>
				<p class="subtitle">
					Info subtitle
				</p>
			</div>
		</div>
	</section>
	<div class="container is-fullhd">
	    <div class="row column text-center">
	      <h2 class="h1">공지사항 글 수정</h2>
	      <hr>
	      <div class="container">
	      	<form action="${path }/board/edit.do" method="post">
			      <table id="table1">
			      	<tbody>
			      		<tr>
			      			<th style="background-color:#dcdcdc">글 제목</th>
			      			<td>
			      				<input type="hidden" name="seq" id="seq" value="${dto.seq }" >
			      				<input type="text" name="title" id="title" placeholder="제목 입력" value="${dto.title }" maxlength="98" required>
			      			</td>
			      		</tr>
			      		<tr>
			      			<th style="background-color:#dcdcdc">글 내용</th>
			      			<td>
			      				<textarea name="content" id="content" placeholder="내용 입력" rows="8" cols="100" maxlength="800" required>${dto.content }</textarea>
			      			</td>
			      		</tr>
			      		<tr>
			      			<td colspan="2">
			      				<input type="submit" class="submit success button" value="글 수정" >
			      				<a class="button" href="${path }/board/list.do">글 목록</a>
			      			</td>
			      		</tr>
			      	</tbody>
			      </table>
			   </form>   
	      </div>
	    </div>
	</div>
	<jsp:include page="../include/ft.jsp" />
</body>
</html>