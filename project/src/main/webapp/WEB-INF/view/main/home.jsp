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
section:nth-child(even) {
	background: #fff;
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
	text-align: center;
}
section .titleBx h2 {
	font-size: 30px;
}
section .titleBx h2 span{
	font-size: 50px;
}

section .coworkingBx {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	align-items: center;
	max-width: 70%;
	margin: 30px auto 0;
}
section .btn {
	left: 45%;
}
@import
	url('https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap')
	;

.card {
	position: relative;
	width: 250px;
	height: 185px;
	overflow: hidden;
	box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
	font-family: 'Roboto Condensed', sans-serif !important;
	margin: 10px 0;
}

.card .news-content {
	position: absolute;
	top: +30px;
	padding: 10px 20px 60px;
	background: #fff;
	transition: .5s;
	height: 155px;
	width: 250px;
}

.card .category {
	position: absolute;
	height: 30px;
	line-height: 20px;
	text-align: center;
	color: #fff;
	text-transform: uppercase;
	padding: 5px 20px;
	font-size: 16px;
	font-weight: bold;
	transition: .5s;
	width: 250px;
}

.card .news-content .post-meta {
	font-size: 12px;
}

.card .news-content .post-meta .author a {
	text-decoration: none;
	padding-right: 10px;
	color: black;
	font-weight: bold;
	transition: .5s;
}

.card .news-content .post-meta .time {
	padding-right: 10px;
	color: black;
	font-weight: bold;
	transition: .5s;
}

.card .news-content .post-meta .grade {
	text-decoration: none;
	padding-right: 10px;
	color: black;
	font-weight: bold;
	transition: .5s;
}

.card .news-content .post-meta .date {
	text-decoration: none;
	padding-right: 10px;
	color: black;
	font-weight: bold;
	transition: .5s;
	float: right;
}

.card .news-content .post-meta .author a:hover {
	color: #DF084A;
}

.card .news-content .post-meta .grade a:hover {
	color: #DF084A;
}

.card .news-content .post-header {
	margin: 0;
	padding: 10px 0;
	color: #007DA6;
	height: 50px;
	font-size: 18px;
	overflow: hidden;
	font-weight: bold;
}

.card .news-content .hashlist {
	font-size: 16px;
	margin: 0 0 10px;
	padding: 0;
	color: black;
	transition: .5s;
	opacity: 1;
	height: 40px;
	display: flex;
	flex-wrap: wrap;
	justify-content: flex-start;
}

.card:hover .news-content .hashlist a:hover {
	color: #DF084A;
	cursor: pointer;
}

.btn {
	position: relative;
	background: #2196f3;
	display: inline-block;
	color: #fff;
	margin-top: 20px;
	padding: 10px 30px;
	font-size: 18px;
	text-transform: uppercase;
	text-decoration: none;
	letter-spacing: 2px;
	font-weight: 500;
}
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 70%;
	margin: auto;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

.qBx #customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4b47a2;
	color: white;
}
.fBx #customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #23865f;
	color: white;
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
				</div>
			</div>
		</section>
		<section id="til">
			<div class="titleBx">
				<h2><span>T</span>oday <span>I</span> <span>L</span>earned &lt; 본인의 지식을 정리해 보세요. &gt;</h2>
			</div>
		</section>
		<section id="community">
			<div class="titleBx">
				<h2><span>C</span>omunity &lt; 이곳에서 오류, 에러, 고민을 풀어보세요. &gt;</h2>
			</div>
			<div class="comunityBx qBx"></div>
			<div class="comunityBx fBx"></div>
		</section>
		<section id="coworking">
			<div class="titleBx">
				<h2><span>C</span>o-<span>W</span>orking &lt; 혼자하지 말고 같이 해보세요. &gt;</h2>
			</div>
			<div class="coworkingBx"></div>
			<a href="#" class="btn">View More</a>
		</section>
		<section>
		
		</section>
		<script type="text/javascript">
			$(function() {
				
				$(".service-content .serviceBx").on("click", function() {
					var idx = $(this).index();
					if(idx == 0) location.href = "#til";
					else if (idx == 1) location.href = "#community";
					else location.href = "#coworking";
				})
				
				comunitysearch(4, 0, 10);
				comunitysearch(5, 0, 10);
				var qBx = $(".qBx");
				var fBx = $(".fBx");
				function comunitysearch(a, b, c) {
					var data = {
							no : a,
							num : b,
							limit: c
						}
					$.ajax({
						url : '${path}/ajax/searchcommunity.dev',
						type : "post",
						data : data,
						success : function(response) {
							var res = JSON.parse(response);
							console.log(res);
							viewCommunity(a, res);
						}
					})
					
				}
				
				function viewCommunity(no, data) {
					var data_card = '<table id="customers">';
					if(no == 4) data_card += '<tr><td colspan="6" align="center"><h4>QnA게시판</h4></td></tr>';
					if(no == 5) data_card += '<tr><td colspan="6" align="center"><h4>자유 게시판</h4></td></tr>';
					
					data_card += '<tr><th width="50%;">제목</th><th width="10%">작성자</th><th width="5%">추천</th><th width="8%">날짜</th></tr>'
					$.each(data,function(i, v) {
							console.log(v);
							data_card += '<tr><td style="text-align: left;"><a href="detail.dev?bno='
							data_card += v.bno + '&&no='+v.no
							data_card += '">'+v.title
							data_card += '</a></td><td>' + v.name
							data_card += '</td><td>' + v.point + '</td><td>'
							data_card += v.regdate + '</td></tr>'
							})
						if(no == 4) qBx.append(data_card);
						if(no == 5) fBx.append(data_card);
						data_card = ""
				}
				
				coworkingsearch("","","deadline", 0, 0, 8);
				var coworkingBx = $(".coworkingBx");
				function coworkingsearch(a, b, c, d, e, f) {
					var data = {
						searchinput : a,
						searchtype : b,
						searchsort : c,
						category: d,
						num: e,
						limit: f
					}
					$.ajax({
						url : '${path}/ajax/searchworking.dev',
						type : "post",
						data : data,
						success : function(response) {
							var res = JSON.parse(response);
							viewContent(res);
						}
					})
				}
				
				function viewContent(data) {
					var data_card = "";
					$.each(data,function(i, v) {
										data_card += '<div class="container-fluid"><div class="container"><div class="row"><div class="col-sm-4"><div class="card">'
											data_card += '<span class="category" style="background: '
											data_card += v.category == "스터디" ? "#00B8F4" : v.category == "프로젝트" ? "#00FA9A" : "#EE82EE" 
											data_card += '">'
											data_card += v.category == "스터디" ? "Study" : v.category == "프로젝트" ? "Project" : "Contest"
											data_card += '</span>'
											data_card += '<div class="news-content"><div class="post-meta">' 
											data_card += '<span class="author"><a href="#"> <i class="fa fa-user"></i> ' + v.name + '</a></span>'
											data_card += '<span class="time"> <i class="fa fa-clock-o"></i> ' + v.regdate + '</span>' 
											data_card += '<span class="grade"> <i class="fas fa-user-graduate"></i> ' + v.grade + '</span>'
											data_card += '<div class="clearfix"></div></div><h2 class="post-header"><a href="${path}/coworking/details.dev?gno='
											data_card += v.gno + '">' + v.title + '</a></h2><div class="hashlist">' 
											for (var i = 0; i < v.hashlist.length; i++) {
												data_card += '<a><span>#' + v.hashlist[i] + '</span></a>&nbsp;'
											}	
											data_card += '</div><div class="post-meta"><span class="date">'
											data_card += '마감 '+ v.diff +'일 전</span></div></div></div></div></div></div></div>'
											coworkingBx.append(data_card);
											data_card = ""
									})
				}
			})
		</script>
</body>
</html>