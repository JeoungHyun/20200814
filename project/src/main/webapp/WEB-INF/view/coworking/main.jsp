<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
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
	height: 300px;
	overflow: hidden;
	box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
	font-family: 'Roboto Condensed', sans-serif !important;
}

.card .post-image {
	height: 210px;
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

.card .news-content .post-meta a {
	text-decoration: none;
	padding-right: 10px;
	color: black;
	font-weight: bold;
	transition: .5s;
}

.card .news-content .post-meta a:hover {
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

.card .news-content p {
	font-size: 16px;
	margin: 10px 0 0;
	padding: 0;
	color: black;
	transition: .5s;
	opacity: 0;
}

.card:hover .news-content p {
	opacity: 1;
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
}
.container .content .container-fluid {
	padding: 30px 15px;
	margin: 0 22.5px;
	width: auto;
}
.container .searchArea {
	width: 1300px;
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
</style>
</head>
<body>
<div class="container">
	<div class="searchArea">
	<div class="filter">
		<span><a href="#">전체</a>&nbsp;/</span>
		<span><a href="#">스터디</a>&nbsp;/</span>
		<span><a href="#">프로젝트</a>&nbsp;/</span>
		<span><a href="#">공모전</a></span>
	</div>
	<div></div>
	<div></div>
	<div class="plus"><div class="box"><a href="register.dev">등록</a></div></div>
	</div>
	<div class="content">
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
						<div class="post-image">
							<img src="${path}/img/raspberry.jpg" class="img-responsive">
						</div>
						<div class="news-content">
							<span class="category">Study</span>
							<div class="post-meta">
								<span class="author"> <a href="#"> <i
										class="fa fa-user"></i> Someone Famouse
								</a></span> <span class="time"> <a href="#"> <i
										class="fa fa-clock-o"></i> Dec 7, 2017
								</a>
								</span>
								<div class="clearfix"></div>
							</div>
							<h2 class="post-header">속성 "자바" 한달 완성 </h2>
							<p>Build encapsulated components that manage their own state,
								then compose them to make complex UIs</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
						<div class="post-image">
							<img src="${path}/img/raspberry.jpg" class="img-responsive">
						</div>
						<div class="news-content">
							<span class="category">Project</span>
							<div class="post-meta">
								<span class="author"> <a href="#"> <i
										class="fa fa-user"></i> Someone Famouse
								</a></span> <span class="time"> <a href="#"> <i
										class="fa fa-clock-o"></i> Dec 7, 2017
								</a>
								</span>
								<div class="clearfix"></div>
							</div>
							<h2 class="post-header">구디아카데미 팀 프로젝트</h2>
							<p>Build encapsulated components that manage their own state,
								then compose them to make complex UIs</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
						<div class="post-image">
							<img src="${path}/img/raspberry.jpg" class="img-responsive">
						</div>
						<div class="news-content">
							<span class="category">Study</span>
							<div class="post-meta">
								<span class="author"> <a href="#"> <i
										class="fa fa-user"></i> Someone Famouse
								</a></span> <span class="time"> <a href="#"> <i
										class="fa fa-clock-o"></i> Dec 7, 2017
								</a>
								</span>
								<div class="clearfix"></div>
							</div>
							<h2 class="post-header">Spring부터 React까지</h2>
							<p>Build encapsulated components that manage their own state,
								then compose them to make complex UIs</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
						<div class="post-image">
							<img src="${path}/img/raspberry.jpg" class="img-responsive">
						</div>
						<div class="news-content">
							<span class="category">Project</span>
							<div class="post-meta">
								<span class="author"> <a href="#"> <i
										class="fa fa-user"></i> Someone Famouse
								</a></span> <span class="time"> <a href="#"> <i
										class="fa fa-clock-o"></i> Dec 7, 2017
								</a>
								</span>
								<div class="clearfix"></div>
							</div>
							<h2 class="post-header">토이 프로젝트 모여라</h2>
							<p>Build encapsulated components that manage their own state,
								then compose them to make complex UIs</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
						<div class="post-image">
							<img src="${path}/img/raspberry.jpg" class="img-responsive">
						</div>
						<div class="news-content">
							<span class="category">Study</span>
							<div class="post-meta">
								<span class="author"> <a href="#"> <i
										class="fa fa-user"></i> Someone Famouse
								</a></span> <span class="time"> <a href="#"> <i
										class="fa fa-clock-o"></i> Dec 7, 2017
								</a>
								</span>
								<div class="clearfix"></div>
							</div>
							<h2 class="post-header">배운김에 취업까지</h2>
							<p>Build encapsulated components that manage their own state,
								then compose them to make complex UIs</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
						<div class="post-image">
							<img src="${path}/img/raspberry.jpg" class="img-responsive">
						</div>
						<div class="news-content">
							<span class="category">Project</span>
							<div class="post-meta">
								<span class="author"> <a href="#"> <i
										class="fa fa-user"></i> Someone Famouse
								</a></span> <span class="time"> <a href="#"> <i
										class="fa fa-clock-o"></i> Dec 7, 2017
								</a>
								</span>
								<div class="clearfix"></div>
							</div>
							<h2 class="post-header">취업용 프로젝트 할 분 모집</h2>
							<p>Build encapsulated components that manage their own state,
								then compose them to make complex UIs</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	</div>
</div>
</body>
</html>