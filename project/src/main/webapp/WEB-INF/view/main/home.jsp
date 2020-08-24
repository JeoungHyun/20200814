<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	scroll-behavior: smooth;
}
section {
	padding: 100px;
	min-height: 100vh;
}
section:first-child{
	background: url("${path}/img/gb.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}
section .textBx {
	color: #fff;
	text-align: center;
	margin-top: 50px;
}
section .h2 {
	color: #fff;
	text-align: center;
	font-style: italic;
	opacity: 0.3;
	font-size: 50px;
	position: relative;
	top: 90px;
}
section .textBx h3 {
	font-size: 18px;
}
section .textBx h2 {
	color: #aa85d4;
	font-size: 100px;
	text-shadow: 3px 2px 2px #000;
}
section .service-content {
	display: flex;
	justify-content: space-between;
	align-content: center;
	flex-wrap: wrap;
	padding: 170px 25vw 40px;
	background: transparent;
}
section .service-content .serviceBx {
	padding: 20px;
	background: #c0bdc33b;
	color: #fff;
	text-align: center;
	transition: 0.5s;
	box-shadow: 3px 3px 3px rgba(0,0,0,0.5);
	border-radius: 20px;
	opacity: 0.8;
	margin-top: 50px;
}
section .service-content .serviceBx:hover {
	background: #2196f3;
}
section .service-content .serviceBx img{
	max-height: 50px;
	filter: invert(1);
}
section .service-content .serviceBx p {
	margin-top: 20px;
	font-weight: bold;
}
section .slider-box {
	height: 300px;
	border: 3px solid #000;
}
section .slider-box .slider {
	background: url(${path}/img/s1.png);
	background-size: cover;
	height: 300px;
	width: 300px;
	margin: 0 auto;
	transition: 3s;
}
section .titleBx {
	text-align: left;
	margin-top: 50px;
}
section .titleBx h2 {
	font-size: 30px;
}
section .titleBx h2 span{
	font-size: 50px;
}
</style>
</head>
<body>
<section>
			<div class="textBx">
				<h3>개발자를 위한 자기계발 사이트</h3>
				<h2>Build-Dev</h2>
			</div>
			<h2 class="h2">Our Services</h2>
			<div class="service-content">
				<div class="serviceBx">
					<img src="${path}/img/icon5.png">
					<h3>Today I Learned</h3>
				</div>
				<div class="serviceBx">
					<img src="${path}/img/talk.png">
					<h3>Community</h3>
				</div>
				<div class="serviceBx">
					<img src="${path}/img/coworking.png">
					<h3>Co-Working</h3>
					<!-- <p>혼자하지 말고 같이 해보세요.</p> -->
				</div>
			</div>
		</section>
		<section>
			<div class="titleBx">
				<h2><span>T</span>oday <span>I</span> <span>L</span>earned : 본인의 지식을 정리해 보세요.</h2>
			</div>
		</section>
		<section>
			<div class="titleBx">
				<h2><span>C</span>omunity : 이곳에서 오류, 에러, 고민을 풀어보세요.</h2>
			</div>
		</section>
		<section>
			<div class="titleBx">
				<h2><span>C</span>o-<span>W</span>orking : 혼자하지 말고 같이 해보세요.</h2>
			</div>
		</section>
		<section>
		
		</section>

</body>
</html>