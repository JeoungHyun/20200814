<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
<style type="text/css">
.container {
	margin: 0;
	padding: 30px 20%;
}

.container .content {
	margin: 0;
	padding: 50px;
	border: 1px solid #8572EE;
	border-radius: 10px;
	background: #D2D2FF;
}

.container .content table {
	width: 100%;
}

.container .content table tr td {
	text-align: left;
	padding-bottom: 40px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="content">
			<table>
				<tr>
					<th>카테고리</th>
					<td>${cwk.category}</td>
				</tr>
				<tr>
					<th>프로젝트명</th>
					<td>${cwk.title}</td>
				</tr>
				<tr>
					<th>닉네임</th>
					<td>${cwk.name}</td>
				</tr>
				<tr>
					<th>모집마감일</th>
					<td>${cwk.deadline}</td>
				</tr>
				<tr>
					<th>개발수준</th>
					<td>${cwk.grade}</td>
				</tr>
				<tr>
					<th>모집인원</th>
					<td>${cwk.maxnum}</td>
				</tr>
				<tr>
					<th>content</th>
					<td>${cwk.content}</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>