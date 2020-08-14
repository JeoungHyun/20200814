<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
</head>
<body>
<table>
	<tr><td>${cwk.title}</td></tr>
	<tr><td>${cwk.name}</td></tr>
	<tr><td>${cwk.deadline}</td></tr>
	<tr><td>${cwk.grade}</td></tr>
	<tr><td>${cwk.maxnum}</td></tr>
	<tr><td>${cwk.category}</td></tr>
	<tr><td>${cwk.content}</td></tr>
</table>
</body>
</html>