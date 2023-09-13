<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<%--<c:set var="path" value="${pageContext.request.contextPath }" />--%>
<c:set var="path" value="/pro3_war" />
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../include/head.jsp" />
	<title>공지사항 목록</title>
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
		<div>
			<div class="row column text-center">
			  <h2 class="h1">공지사항 목록</h2>
			  <hr>
			  <div class="container">
				  <table>
					<thead>
						<tr>
							<th width="80">No</th>
							<th>Title</th>
							<th width="120">RegDate</th>
							<th width="100">Visited</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${boardList }" var="board" varStatus="status">
						<tr>
							<td>${status.count }</td>
							<td><a href="/board/detail.do?seq=${board.seq }">${board.title }</a></td>
							<td>
								<fmt:parseDate value="${board.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
								<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
							</td>
							<td>${board.visited }</td>
						</tr>
					</c:forEach>
					</tbody>
				  </table>
							<%-- <c:if test='${sid eq "admin"}'>  --%>
					<div class="button-group">
					  <a class="button" href="${path }/board/insert.do">글쓰기</a>
					</div>
				<%-- </c:if> --%>
			  </div>

			</div>
		</div>
	</div>
	<jsp:include page="../include/ft.jsp" />
</body>
</html>