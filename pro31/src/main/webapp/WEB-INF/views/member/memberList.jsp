<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="/pro3_war" />
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../include/head.jsp" />
    <title>${title }</title>
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
        <h2>${title }</h2>
        <table class="table is-fullwidth">
            <thead>
            <tr>
                <th>NO</th>
                <th>ID</th>
                <th>NAME</th>
                <th>REGDATE</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${memberList }" var="member" varStatus="status">
                <tr>
                    <td>${status.count}</td>
                    <td><a href="${path }/member/detail.do?id=${member.id }" title="${member.email }">${member.id }</a></td>
                    <td><a href="${path }/member/detail.do?id=${member.id }" title="${member.tel }">${member.name }</a></td></td>
                    <td>
                        <fmt:parseDate value="${member.regdate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
                        <fmt:formatDate value="${regdate }" var="regdate" pattern="yyyy-MM-dd" />
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="buttons">
            <a class="button is-primary" href="${path }/member/insert.do">회원추가</a>
        </div>
    </div>
    <jsp:include page="../include/ft.jsp" />
</body>
</html>