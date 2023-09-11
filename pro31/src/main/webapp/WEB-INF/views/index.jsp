<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="/pro3_war" />
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="./include/head.jsp" />
    <title>티스푼 메인 페이지</title>
</head>
<body>
    <jsp:include page="./include/hd.jsp" />
    <section class="hero is-large is-info">
        <div class="container is-fullhd">
            <div class="hero-body">
                <p class="title">
                    Large hero
                </p>
                <p class="subtitle">
                    Large subtitle
                </p>
            </div>
        </div>
    </section>
    <div class="container is-fullhd">
        <h2>티스푼 메인 페이지</h2>
        <div class="contents">
            이름 : ${name }
            <hr>
            현재 : ${today }
        </div>
    </div>
    <jsp:include page="./include/ft.jsp" />
</body>
</html>