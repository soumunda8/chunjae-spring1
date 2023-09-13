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
    <title>로그인</title>
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
    <div class="content" id="content">
        <div class="row column text-center">
            <h2 class="h1">로그인</h2>
            <hr>
            <div class="container">
                <c:if test="${!empty msg }">
                    <script>
                        alert("로그인 실패");
                        document.loginForm.userid.focus();
                    </script>
                </c:if>
                <%--<form action="${path }/member/signin.do" method="post" name="loginForm">--%>
                <form action="${path }/member/loginpro.do" method="post" name="loginForm">
                    <div class="table_form_wrap">
                        <table class="table_form">
                            <tbody>
                            <tr>
                                <th><label for="id">아이디</label></th>
                                <td><input type="text" name="id" id="id" size="100" class="input" placeholder="아이디 입력" required>
                                    <!--  pattern="^[a-z0-9]+$"  -->
                                </td>
                            </tr>
                            <tr>
                                <th><label for="pw">비밀번호</label></th>
                                <td><input type="password" name="pw" id="pw"  class="input" placeholder="비밀번호 입력" required>
                                    <!--  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="submit" class="button is-primary" value="로그인">
                                    <input type="reset" class="button" value="취소">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
                <script>
                    function loginFaiure() {
                        alert("로그인 실패");
                    }
                </script>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../include/ft.jsp" />
</body>
</html>