<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>
<style type="text/css">
.boardinfo {
	border: 1px solid #86A5FF;
	border-radius: 10px;
	box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
	overflow: hidden;
	width: 1000px;
	box-sizing: border-box;
	margin: 0 auto;
	margin-bottom: 50px;
	font-weight: 700;
}
.boardinfo .header {
	background: mediumslateblue;
	color: #fff;
	font-size: 1.5em;
	padding: 1rem;
	text-transform: uppercase;
}
.boardinfo table {
	width: 100%;
	border-collapse: collapse;
}
.boardinfo table tr:nth-child(2n+1) {
	background: #fff;
}
.boardinfo table tr:nth-child(2n) {
	background: #fff;
}
.boardinfo table th,
.boardinfo table td {
	color: #8572EE;
	padding: 10px;
}
.boardinfo table th {
	background: #CCE1FF;
	font-weight: 300;
}
.boardinfo table td {
	text-align: center;
	vertical-align: middle;
	border-top: 1px solid #86A5FF;
}
</style>
</head>
<body>
<h2>강남 스터디</h2>
<div class="boardinfo">
	<div class="header">신청관리</div>
	<table>
		<tr>
			<th>No</th>
			<th>Name</th>
			<th>Language</th>
			<th>Phone number</th>
			<th>Email</th>
			<th>Comment</th>
			<th colspan="2"></th>
		</tr>
		<tr>
			<td>2</td>
			<td>김승찬</td>
			<td>Java</td>
			<td>010-5555-9999</td>
			<td>rnel@naver.com</td>
			<td>잘부탁드립니다.</td>
			<td>수락</td>
			<td>거절</td>
		</tr>
		<tr>
			<td>1</td>
			<td>원숭이</td>
			<td>Java</td>
			<td>010-4555-8899</td>
			<td>rn123el@naver.com</td>
			<td>잘부탁드립니다.</td>
			<td>수락</td>
			<td>거절</td>
		</tr>
	</table>
</div>
<div class="boardinfo">
	<div class="header">팀원관리</div>
	<table>
		<tr>
			<th>No</th>
			<th>Name</th>
			<th>Language</th>
			<th>Phone number</th>
			<th>Email</th>
			<th></th>
		</tr>
		<tr>
			<td>2</td>
			<td>이헌성</td>
			<td>Java</td>
			<td>010-3333-9249</td>
			<td>ghregr1@naver.com</td>
			<td>추방</td>
		</tr>
		<tr>
			<td>1</td>
			<td>김독자</td>
			<td>Java</td>
			<td>010-5555-1234</td>
			<td>asdsdf@naver.com</td>
			<td>추방</td>
		</tr>
	</table>
</div>
</body>
</html>