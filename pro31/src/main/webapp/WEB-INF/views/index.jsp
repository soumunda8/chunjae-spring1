<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="/pro3_war" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>티스푼 메인 페이지</title>
</head>
<body>
    <h2>티스푼 메인 페이지</h2>
    <div class="container">
        이름 : ${name }
        <hr>
        현재 : ${today }
    </div>
    <ul class="list">
        <li><a href="${path }/sample/main.do">RequestMapping 방식 : Get</a></li>
        <li><a href="${path }/sample/get1.do?id=monstaX&pw=1234">GetMapping 방식 : request + model</a></li>
        <li><a href="${path }/sample/get2.do?id=손현우&pw=1111">RequestMapping.GET 방식 : request + model</a></li>
        <li><a href="${path }/sample/get3.do?id=이민혁&pw=2222">RequestMapping.GET 방식 : RequestParam + model</a></li>
        <li><a href="${path }/sample/get4.do?id=유기현&pw=3333">RequestMapping.GET 방식 : dto + model</a></li>
        <li><a href="${path }/sample/get5.do?id=채형원&pw=4444">RequestMapping.GET 방식 : ModelAttribute + model</a></li>
        <li><a href="${path }/sample/get6.do/이주헌/5555">RequestMapping.GET 방식 : PathVariable + model</a></li>
        <li><a href="${path }/sample/get7.do?id=임창균&pw=6666">RequestMapping.GET 방식 : RequestParam + ModelAndView</a></li>
    </ul>
</body>
</html>