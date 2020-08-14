<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style type="text/css">
.container {
	margin: 0;
	padding: 30px 30%;
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
.container .content table tr td{
	text-align: left;
	padding-bottom: 40px;
}
.container .content table tr td input[type="text"]{
	width: calc(100% - 30px);
	height: 100%;
	margin: 0;
	padding: 5px;
	border: none;
	border-bottom: 1px solid #000;
	background: transparent;
	font-size: 18px;
}
.container .content table tr td:first-child {
	text-align: center;
	font-weight: bold;
	font-size: 18px;
}
.container .content table #startdate,
.container .content table #enddate {
	width: 30%;
}
.container .content table #content {
	width: calc(100% - 30px);
	resize: none;
}
.container .content table tr:last-child input {
	margin: 0 20px;
	width: 5em;
	padding: 5px;
	background: #CCE1FF;
	border: 1px solid #fff;
	font-size: 15px;
	font-weight: bold;
	border-radius: 5px;
}
</style>
</head>
<body>
<div class="container">
<div class="content">
	<form:form modelAttribute="coworking" method="post" action="register.dev">
		<spring:hasBindErrors name="coworking"> 
			<font color="red">
				<c:forEach items="${errors.globalErrors}" var="error">
					<spring:message code="${error.code}"/>
				</c:forEach>
			</font> 
		</spring:hasBindErrors>
	<table>
		<tr><td>카테고리</td>
		<td>
		<form:checkbox path="category" value="스터디" label="스터디"/>
		<form:checkbox path="category" value="공모전" label="공모전"/>
		<form:checkbox path="category" value="프로젝트" label="프로젝트"/>
		</td></tr>
		<tr><td>프로젝트명</td><td><form:input path="title"/>
			<font color="red"><form:errors path="title"/></font></td></tr>
		<tr><td>닉네임</td><td><form:input path="name"/>
			<font color="red"><form:errors path="name"/></font></td></tr>
		<tr><td>지역</td><td><form:input path="loc"/>
			<font color="red"><form:errors path="loc"/></font></td></tr>
		<tr><td>모집인원</td><td><form:input path="maxnum"/>
			<font color="red"><form:errors path="maxnum"/></font></td></tr>
		<tr><td>모집마감일</td><td><form:input path="deadline" id="datepick"/>
			<font color="red"><form:errors path="deadline"/></font></td></tr>
		<tr><td>프로젝트일자</td><td><form:input path="startdate" />
			<font color="red"><form:errors path="startdate" /></font>
		&nbsp;~&nbsp;<form:input path="enddate"/>
			<font color="red"><form:errors path="enddate"/></font></td></tr>
		<tr><td>진행방식</td><td><form:input path="process"/>
			<font color="red"><form:errors path="process"/></font></td></tr>
		<tr><td>개발수준</td>
		<td>
		<form:checkbox path="grade" value="초급" label="초급"/>
		<form:checkbox path="grade" value="중급" label="중급"/>
		<form:checkbox path="grade" value="고급" label="고급"/>
		
		</td></tr>
		<tr><td>내용</td><td><form:textarea path="content"/>
			<font color="red"><form:errors path="content"/></font></td></tr>
		<tr><td colspan="2" align="center">
			<input type="submit" value="신청">
			<input type="reset" value="초기화">
		</td></tr>	
	</table>
	</form:form>
</div>
</div>
<script type="text/javascript">
$(function() {
	$("input[name='category']").click(function() {
		if($(this).prop('checked')) {
			$("input[name='category']").prop('checked', false);
			$(this).prop('checked', true);
		}
	})
	
	$("input[name='grade']").click(function() {
		if($(this).prop('checked')) {
			$("input[name='grade']").prop('checked', false);
			$(this).prop('checked', true);
		}
	})
})
</script>
</body>
</html>