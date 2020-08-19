<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Co-Working</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap')
	;

.card {
	position: relative;
	width: 250px;
	height: 250px;
	overflow: hidden;
	box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
	font-family: 'Roboto Condensed', sans-serif !important;
}

.card .post-image {
	height: 155px;
	overflow: hidden;
}

.card .post-image img {
	transition: .5s;
	height: 100%;
	width: 100%;
}

.card:hover .post-image img {
	transform: scale(1.1) translateY(-50px);
}

.card .news-content {
	position: absolute;
	bottom: -150px;
	padding: 10px 20px 60px;
	background: #fff;
	transition: .5s;
	border-top: 2px solid #000;
	width: 250px;
}

.card:hover .news-content {
	bottom: -50px;
}

.card .category {
	position: absolute;
	top: -30px;
	left: 0;
	height: 30px;
	line-height: 20px;
	background: #00B8F4;
	text-align: center;
	color: #fff;
	text-transform: uppercase;
	padding: 5px 20px;
	font-size: 16px;
	font-weight: bold;
	transition: .5s;
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

.card .news-content .post-meta .author a:hover {
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
	opacity: 0;
	height: 70px;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

.card:hover .news-content .hashlist {
	opacity: 1;
}

.card:hover .news-content .hashlist a:hover {
	color: #DF084A;
	cursor: pointer;
}

.container {
	margin: 0;
	padding: 0;
	max-width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.container .content {
	display: flex;
	justify-content: flex-start;
	align-items: center;
	max-width: 1300px;
	flex-flow: row wrap;
	width: 100%;
}

.container .content .container-fluid {
	padding: 30px 15px;
	margin: 0 22.5px;
	width: auto;
}

.container .searchArea {
	width: 1300px;
	display: flex;
}

.container .searchArea .filter {
	float: left;
	padding: 40px 50px 0 50px;
	font-size: 20px;
	font-weight: bold;
}

.container .searchArea .filter a {
	text-decoration: none;
	color: #000;
}

.container .searchArea .plus {
	float: right;
	padding: 40px 50px 0;
}

.container .searchArea .plus .box {
	box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
	border: 2px solid lightblue;
	background: #CCE1FF;
	border-radius: 5px;
	padding: 3px 5px;
}
.container .searchbox {
	padding: 40px 50px 0;
}
.container .searchbox input {
	position: relative;
	display: inline-block;
	font-size: 20px;
	box-sizing: border-box;
}
.container .searchbox input[type="text"] {
	background: #fff;
	width: 220px;
	height: 31px;
	border: 1px solid #000;
	outline: none;
	padding: 0 0 0 20px;
	border-radius: 20px 0 0 20px;
	font-family: Poppins;
}
.container .searchbox select {
	position: relative;
	left: -7px;
	border: 1px solid #000;
	top: -1px;
	outline: none;
	background: #fff;
	font-size: 18px;
	padding: 0 10px;
	height: 31px;
}
.container .searchbox button {
	position: relative;
	left: -5px;
	width: 90px;
	height: 31px;
	border: none;
	outline: none;
	cursor: pointer;
	background: #ff4282;
	color: #fff;
	top: 0;
	font-size: 20px;
}
.container .searchbox button:hover {
	background: #ef296c;
}
</style>
</head>
<body>
	<div class="container">
		<div class="searchArea">
			<div class="filter">
				<span><a href="#">전체</a>&nbsp;/</span> <span><a href="#">스터디</a>&nbsp;/</span>
				<span><a href="#">프로젝트</a>&nbsp;/</span> <span><a href="#">공모전</a></span>
			</div>
			<div></div>
			
			<div class="searchbox">
						<input type="text" placeholder="Type...." id="searchinput"> <select id="searchtype">
							<option value="title">제목</option>
							<option value="hash">해시태그</option>
						</select> <button type="button" id="search">Search</button>
			</div>
			<div class="plus">
				<div class="box">
					<a href="register.dev">등록</a>
				</div>
			</div>
		</div>
		<div class="content">
			<c:forEach var="data" items="${list }">
				<div class="container-fluid">
					<div class="container">
						<div class="row">
							<div class="col-sm-4">
								<div class="card">
									<div class="post-image">
										<img src="${path}/img/raspberry.jpg" class="img-responsive">
									</div>
									<div class="news-content">
										<span class="category">${data.category == "스터디"? "Study": data.category == "프로젝트"? "Project" : "Contest" }</span>
										<div class="post-meta">
											<span class="author"> <a href="#"> <i
													class="fa fa-user"></i> ${data.name }
											</a></span> <span class="time"> <i class="fa fa-clock-o"></i> <fmt:formatDate
													value="${data.deadline}" pattern="yyyy-MM-dd" />

											</span>
											<div class="clearfix"></div>
										</div>
										<h2 class="post-header">
											<a href="${path}/coworking/details.dev?gno=${data.gno}">${data.title }
											</a>
										</h2>
										<div class="hashlist">
											<c:forEach var="hash" items="${data.hashlist }">
												<a><span>#${hash }</span></a>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<script type="text/javascript">
		$(function() {
			var content = $(".content");
			$("#search").on("click", function() {
				console.log($("#searchinput").val());
				console.log($("#searchtype").val());
				var data = {
						searchinput : $("#searchinput").val(),
						searchtype : $("#searchtype").val()
				}
				$.ajax({
					url: '${path}/ajax/searchworking.dev',
					type: "post",
					data: data,
					success: function(response){
						var res = JSON.parse(response);
						viewContent(res);
					}
				})
			})
			
			function viewContent(data) {
				content.html("");
				var data_card = "";
				$.each(data, function (i, v) {
					console.log(v);
					 data_card += '<div class="container-fluid"><div class="container"><div class="row"><div class="col-sm-4">'
					data_card += '<div class="card"><div class="post-image"><img src="${path}/img/raspberry.jpg" class="img-responsive">'
					data_card += '</div><div class="news-content"><span class="category">'
					data_card += v.category == "스터디"? "Study": v.category == "프로젝트"? "Project" : "Contest"
					data_card += '</span><div class="post-meta"><span class="author"> <a href="#"> <iclass="fa fa-user"></i>'
					data_card += v.name
					data_card += '</a></span> <span class="time"> <i class="fa fa-clock-o"></i> '
					data_card += v.deadline
					data_card += '</span><div class="clearfix"></div></div><h2 class="post-header"><a href="${path}/coworking/details.dev?gno='
					data_card += v.gno
					data_card += '">'+v.title
					data_card += '</a></h2><div class="hashlist">'
					for (var i = 0; i < v.hashlist.length; i++) {
						data_card += '<a><span>#'+ v.hashlist[i]+'&nbsp;</span></a>'
					}
					data_card += '</div></div></div></div></div></div></div>'
					console.log(data_card);
					content.append(data_card); 
					data_card = ""
				})
			}
		})
	</script>
</body>
</html>