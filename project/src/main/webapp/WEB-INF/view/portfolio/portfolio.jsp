<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test='${name.equals(sessionScope.loginUser.name)}'>
		<a href="editPortfolio.dev">작성 및 수정</a>	<%-- url <get>parameter name과 session의 name이 같은 경우에만  나옴.--%>
	</c:if>
</body>
</html>