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
    <script type="text/javascript" src="${path }/resources/ckeditor/ckeditor.js"></script>
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
    <form action="${path }/free/insert.do" method="post">
        <table id="table1">
            <tbody>
            <tr>
                <th style="background-color:#dcdcdc">글 제목</th>
                <td>
                    <input type="text" name="title" id="title" placeholder="제목 입력" maxlength="98" required>
                </td>
            </tr>
            <tr>
                <th>글 내용</th>
                <td>
                    <textarea name="content" id="content" class="textarea" placeholder="내용 입력" rows="8"></textarea>
                    <script>
                        CKEDITOR.replace('content', {filebrowserUploadUrl : '${path }/free/imageUpload.do'});
                    </script>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" class="submit success button" value="글 등록" >
                    <a class="button" href="${path }/free/list.do">글 목록</a>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>
<jsp:include page="../include/ft.jsp" />
</body>
</html>