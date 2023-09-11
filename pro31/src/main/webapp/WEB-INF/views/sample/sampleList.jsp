<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="/pro3_war" />
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../include/head.jsp" />
    <title>샘플 목록</title>
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
        <h2>샘플 목록</h2>
        <ul>
            <c:forEach items="${sampleList }" var="sample" varStatus="status">
                <li>
                    <p>번호 : ${sample.no }</p>
                    <p>이름 : ${sample.name }</p>
                </li>
                <hr>
            </c:forEach>
        </ul>
    </div>
    <jsp:include page="../include/ft.jsp" />
</body>
</html>