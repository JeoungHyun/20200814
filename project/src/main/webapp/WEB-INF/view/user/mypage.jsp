<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/*
	.list-group-item[]
	{
		backgroud-color : #8572EE !important;
		border-color : #8572EE;
	}
	.box {
		 position: absolute;
		  top: 100px;
		  left : 300px;
		  right: 0;
		  width: 200px;
	}
*/
	.img-change-box {
		width : 100%;
		height: 200px;
		border-bottom : 2px solid grey;
		margin : 50px;
	}
	img {
		position : absolute;
		left: 100px;
	}
	.userid {
		position : absolute;
		left : 300px;
		font-size : 40px;
	}
	.img-change-button {
		text-decoration : none;
		position : absolute;
		left : 300px;
		margin-top : 130px;
		font-size : 18px;
	}
	.update-form {
		position : absolute;
		left : 150px;
		font-size: 20px;
	}
</style>
</head>
<body>
	<div class="container-fluid text-center" style="margin-top:50px">    
		<div class="row content">
			<div class="col-sm-4 sidenav">
			<%--
				<div class="box">
					<div class="list-group">
					  <a href="#" class="list-group-item active"><strong>회원 정보 수정</strong></a>
					  <a href="#" class="list-group-item">My Portfolio</a>
					  <a href="#" class="list-group-item">My TIL</a>
					</div>
				</div>
			 --%>
			</div>
			
			<div class="col-sm-4 text-left" style="text-align:center">
			 
				<h1><strong>회원 정보 수정</strong></h1>
				<div class="img-change-box">
					<img src="${path}/img/defaultprofile.jpg" width="150" height="160">
					<div class="userid">
						<strong>${user.id}</strong>
					</div>
					<div class="img-change-button">
						<a href="#">프로필 이미지 변경하기</a>
					</div>
				</div>
				
				<form:form modelAttribute="user" method="post" action="update.dev" class="update-form" onsubmit="return inputcheck(this)">
					<form:input type="hidden" path="id" value="${user.id}"/>
					<spring:hasBindErrors name="user">
						<font color="red">
							<c:forEach items="${errors.globalErrors}" var="error">
								<spring:message code="${error.code}"/>
							</c:forEach>
						</font>
					</spring:hasBindErrors>
					<table>
						<tr>
							<td>이름</td>
							<td>
								<form:input path="name"/>
								<font color="red">
									<form:errors path="name"/>
								</font>
							</td>
						</tr>
						<tr>
							<td>이메일</td>
							<td>
								<form:input path="email"/>
								<font color="red">
									<form:errors path="email"/>
								</font>
							</td>
						</tr>
						<tr>
							<td>연락처</td>
							<td>
								<form:input path="phone"/>
								<font color="red">
									<form:errors path="phone"/>
								</font>
							</td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td>
								<form:password path="pw"/>
								<font color="red">
									<form:errors path="pw"/>
								</font>
							</td>
							<td>
								<input type="button" value="비밀번호 변경하기" onclick="pwchg()">
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="submit" value="수정">
								<input type="button" value="탈퇴하기" onclick="location.href='delete.dev?id=${loginUser.id}'">
							</td>
						</tr>
					</table>
				</form:form>
				
			</div>
			
			<div class="col-sm-4 sidenav">
			</div>
		</div>
	</div>
	<script>
		function inputcheck(form) {
			if(form.pw.value != ${user.pw}) {
				alert("비밀번호를 확인하세요");
				form.pw.focus();
				return false;
			}
		}
		
		function pwchg() {
			var op ="width=500, height=250, left=50, top=150";
			open("pwchgForm.dev","",op);
		}
	</script>
</body>
</html>