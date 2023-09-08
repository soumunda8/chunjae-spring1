<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="/pro3_war" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>샘플 목록</title>
</head>
<body>
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
</body>
</html>