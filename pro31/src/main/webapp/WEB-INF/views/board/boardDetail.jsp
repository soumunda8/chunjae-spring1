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
	<title>공지사항 글 보기</title>
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
	      <h2 class="h1">공지사항 상세 보기</h2>
	      <hr>
	      <div class="container">
		      <table id="table1">
		      	<tbody>
		
		      		<tr>
		      			<th style="background-color:#dcdcdc">글 번호</th>
		      			<td>${dto.seq }</td>
		      		</tr>	
		      		<tr>
		      			<th style="background-color:#dcdcdc">글 제목</th>
		      			<td>${dto.title }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">글 내용</th>
		      			<td><p>${dto.content }</p></td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">작성자</th>
		      			<td>${dto.nickname }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">작성일시</th>
		      			<td>${dto.regdate }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">읽은 횟수</th>
		      			<td>${dto.visited }</td>
		      		</tr>
		      	</tbody>
		      </table>
				<div class="button-group">
				  <a class="button" href="${path }/board/list.do">글 목록</a>
				  <a class="button" href="${path }/board/delete.do?seq=${dto.seq}">글 삭제</a>
				  <a class="button" href="${path }/board/edit.do?seq=${dto.seq}">글 수정</a>
				</div>
	      </div>
	    </div>
	</div>
	<jsp:include page="../include/ft.jsp" />
</body>
</html>