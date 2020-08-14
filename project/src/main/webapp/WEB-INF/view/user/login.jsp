<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
	/* background: url(${path}/img/1.jpg); */
	background-size: cover;
	transition: 2s;
}
.box{
	position: absolute;
	top: 400px;
	left: 50%;
	transform:  translate(-50%, -50%);
	width: 400px;
	padding: 40px;
	box-sizing: border-box;
	border-radius: 10px;
	background: transparent;
	border : 1px solid #8572EE;
}
.box h1{
	margin: 0 0 30px;
	padding: 0;
	color: #000000;
	text-align: center;
}
.box .inputBox{
	position: relative;
}
.box .inputBox input{
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: #000000;
	letter-spacing: 1px;
	margin-bottom: 30px;
	border: none;
	outline: none;
	background: transparent;
	border-bottom: 1px solid #000000;
}
.box .inputBox label {
	position: absolute;
	top: 0;
	left: 0;
	padding: 10px 0;
	font-size: 16px;
	letter-spacing: 1px;
	color: grey;
	pointer-events: none;
	transition: .5s;
}
.box .inputBox input:focus ~ label,
.box .inputBox input:valid ~ label{
	top: -18px;
	left: 0;
	color: #03a9f4;
	font-size: 12px;
}
.box input[type="submit"] {
	background: transparent;
	border: none;
	outline: none;
	color: #fff;
	background: #8572EE;
	padding: 10px 20px;
	margin : 0 0 30px 0;
	cursor: pointer;
	border-radius: 5px;
}
a {
	text-decoration : none;
	color : #8572EE;
}
</style>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<form:form modelAttribute="user" method="post" action="login.dev">
		<div class="box">
			<h1>로그인</h1>
			
			<div class="inputBox">
				<form:input path="id" required="required"/>			
				<label>아이디를 입력하세요</label>
			</div>
			
			<div class="inputBox">
				<form:password path="pw" required="required"/>
				<label>비밀번호를 입력하세요</label>
			</div>
			<spring:hasBindErrors name="user">
				<font color="white" style="background-color: black;">
					<c:forEach items="${errors.globalErrors}" var="error">
						<spring:message code="${error.code}"/>
					</c:forEach>
				</font>
			</spring:hasBindErrors>
			<input type="submit" value="로그인" style="width:100%;"><br>
			<div align="center">
				<a href="${path}/user/join.dev">회원가입</a>&nbsp;|&nbsp;
				<a href="${path}/user/findId.dev">아이디 찾기</a>&nbsp;|&nbsp;
				<a href="${path}/user/findPw.dev">비밀번호 찾기</a>
			</div>
		</div>
	</form:form>
	<%--
		<script type="text/javascript">
		$(function() {
			var imgList = ["2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","1.jpg"];
			var idx = 0;
			setInterval(function() {
				if(idx == imgList.length) idx = 0;
				$("body").css("background", "url(${path}/img/"+imgList[idx]+")");
				$("body").css("background-size", "cover");
				idx++;
			}, 5000)
		})
		</script>
	 --%>
</body>
</html>