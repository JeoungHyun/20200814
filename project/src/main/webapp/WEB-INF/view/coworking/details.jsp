<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
.container {
}
.container .content {
}
.page-wrap {
   max-width: 100%;
   min-height: 100vh;
   position: relative;
   z-index: 1
}

.pagewrap-overlay {
   position: absolute;
   z-index: -1;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   opacity: 0.8;
}

.contents {
   width: 40%;
   margin: 5vh auto;
   padding: 0;
   border: 2px solid #222;
   border-radius: 15px;
   overflow: hidden;
}
.head {
   background: #fff;
   width: 100%;
   height: 150px;
   text-align: center;
   position: relative;
}

.head:after {
   content: '';
   position: absolute;
   bottom: -17px;
   left: 0;
   width: 100%;
   height: 40px;
   background: #fff;
   z-index: 1;
   transform: skewY(3deg);
}

.head h1 {
   text-transform: uppercase;
   font-size: 30px;
   letter-spacing: 2px;
}

.head-content {
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
}
.title {
   font-weight: 600;
}
.pagewrap .contents section {
   position: relative;
   height: 100%;
}
.pagewrap .contents section form {
   margin: 0 auto;
   max-width: 100%;
   background: #222;
   height: 100%;
   opacity: 0.8;
   /* box-shadow: 0 19px 39px rgba(0, 0, 0, 0.3), 0 15px 12px
      rgba(0, 0, 0, 0.22); */
   padding-top: 60px;
   padding-bottom: 7px;
}
::-webkit-input-placeholder {
   color: #fff;
}

.pagewrap .contents section form select {
   -moz-apperance: none;
   -webkit-apperance: none;
}

.pagewrap .contents section form select::-ms-expand {
   display: none;
}
.pagewrap .contents .btn-area {
   background: #222;
   opacity: 0.8;
   padding: 20px 0;
}
.pagewrap .contents .btn-area button {
   background: linear-gradient(to right, #fa1, #fc1);
   width: 30%;
   height: 65px;
   border: none;
   border-radius: 5px;
   margin: 0 auto;
   font-size: 15px;
   color: #fff;
   letter-spacing: 3px;
   display: block;
   text-transform: uppercase;
   font-weight: 900;
   position: relative;
   box-shadow: 0 19px 39px rgba(0, 0, 0, 0.3), 0 15px 12px
      rgba(0, 0, 0, 0.22);
   cursor: pointer;
}
.hashtag-container {
  margin: 0;
  width: 80%;
}
.hashtag {
  display: flex;
  flex-wrap: wrap;
  align-content: flex-start;
  padding: 5px;
  width: 100%;
  align-items: center;
}
.hashtag .tag {
  height: 30px;
  margin: 0;
  padding: 0 5px;
  border: 1px solid #fff;
  border-radius: 3px;
  background: #fff;
  display: flex;
  align-items: center;
  color: #333;
  box-shadow: 0 0 4px rgba(0, 0, 0, 0.2), inset 0 1px 1px #fff;
  cursor: pointer;
  font-weight: bold;
  margin-right: 5px;
}
.tag i {
  font-size: 16px;
  color: #666;
  margin-left: 5px;
}
.hashtag input {
  padding: 5px;
  font-size: 16px;
  border: 0;
  outline: none;
  font-family: 'Rubik';
  color: #333;
  flex: 1;
  background: transparent;
}
.pagewrap .contents section .input-layout {
   margin: 0 auto;
   width: 80%;
}
.pagewrap .contents section form .form-radio {
   display: flex;
   justify-content: space-between;
   align-items: center;
   margin-top: 20px;
}
.pagewrap .contents section form .form-radio:first-child {
   margin-top: 0;
}
.pagewrap .contents section form .form-radio input[type="radio"] {
   display: none;
}
.pagewrap .contents section form .form-radio input[type="radio"]:checked + label {
   border: 1px solid #fff;
}
.pagewrap .contents section form .form-radio input[type="radio"]:checked + label:before {
   content: "✓";
   line-height: 40px;
   background: #222;
   z-index: 999;
   position: absolute;
   top: -25px;
   font-size: 40px;
   border: 1px solid #fff;
   border-radius: 50%;
   width: 40px;
   left: -15%;
}
.pagewrap .contents section form .form-radio label {
   position: relative;
   color: #fff;
   background-color: transparent;
   font-size: 18px;
   text-align: center;
   display: block;
   cursor: pointer;
   border: 1px solid #555;
   box-sizing: border-box;
   border-radius: 5px;
   padding: 10px 20px;
   margin: 0;   
}
.pagewrap .contents section form .form-input {
   display: flex;
   width: calc(100% - 23px);
   height: 60px;
   background: transparent;
   border: 1px solid #555;
   border-radius: 5px;
   margin: 0;
   font-size: 16px;
   color: #fff;
   letter-spacing: 2px;
   margin-top: 20px;
   justify-content: flex-start;
   align-items: center;
   padding-left: 20px;
}
.pagewrap .contents section form .form-input input {
   margin-left: 20px;
   border: none;
   color: #fff;
   background: transparent;
   width: 60%;
   height: 40px;
   font-size: 20px;
}
.pagewrap .contents section form .form-input textarea {
   width: 100%;
   padding: 0;
   height: 100%;
   resize: none;
   background: transparent;
   border: none;
}
.pagewrap .contents section form .form-input input:focus,
.pagewrap .contents section form .form-input textarea:focus {
   outline: none;
   border-bottom: 1px solid #fff;
}
.pagewrap .contents section form .row {
   display: flex;
   justify-content: space-between;
   font-size: 16px;
}
.pagewrap .contents section form .row div  {
   width: 40%;
   font-size: 16px;
}
</style>
</head>
<body>
<div class="container">
<div class="content">
   <div class="pagewrap">
      <div class="pagewrap-overlay"></div>
      <div class="contents">
         <section>
               <div class="input-layout">
	               <div class="w3-display-container" style="height:100px;">
				    <div class="w3-display-left">${cwk.title}</div>
				    <div class="w3-display-topright">${cwk.name}</div>
				    <div class="w3-display-bottomright"><fmt:formatDate value="${cwk.deadline}" pattern="yyyy-MM-dd" /></div>
				   </div><hr>
				   <div class="row">
			            <span>개발수준: </span><span>${cwk.grade}</span>
		           </div>
			       <div class="row">
			            <span>시작날짜: </span><span><fmt:formatDate value="${cwk.startdate}" pattern="yyyy-MM-dd" /></span>
		           </div>
			       <div class="row">
			            <span>종료날짜: </span><span><fmt:formatDate value="${cwk.enddate}" pattern="yyyy-MM-dd" /></span>
		           </div>
			       <div class="row">
			            <span>지역: </span><span>${cwk.loc}</span>
		           </div>
			       <div class="row">
			            <span>모집인원: </span><span>${recruitment}명</span>
		           </div><hr>
		           <span>프로젝트 필수 스킬</span>
		           <!-- 해쉬태그 값 -->
		           <span></span><hr>
		           <span>${cwk.category}내용</span><br>
		           <span>${cwk.content}</span>
               </div>
         </section>
         <div class="btn-area">
         	<input type="button" value="신청" onclick="document.getElementById('join').style.display='block'" style="text-align: center; margin-bottom: 3px;"><br>
         </div>
      </div>
   </div>
</div>
</div>
<!-- Modal -->
<div id="join" class="w3-modal">
   <div class="w3-modal-content w3-card-4 w3-animate-zoom w3-round-large" style="max-width:600px">	
   <div class="w3-container w3-border-top w3-padding-16 w3-light-grey w3-center w3-round-large">
    	<h2>프로젝트 지원</h2>
	</div>
    <div class="w3-container w3-border-top w3-padding-16 w3-white w3-center">
    	<form action="details.dev" method="post" >
    	<input type="hidden" value="${loginUser.name}" name="name">
    	<input type="hidden" value="${param.gno}" name="gno">
	<table>
		<caption>${cwk.title}</caption>
		<tr><td>회원정보</td><td colspan="3" class="w3-left">${loginUser.name}</td></tr>
		<tr><td>이메일</td><td><input type="text" value="${loginUser.email}"></td>
			<td>전화번호</td><td><input type="text" value="${loginUser.phone}"></td></tr>
		<tr><td>주언어</td><td><input type="text" name="lang"></td></tr>
		<tr><td>남기는 말</td><td><textarea name="comment" style="width:300px; height:200px;"></textarea></td></tr>
	</table>
	<div class="w3-container w3-border-top w3-padding-16 w3-white w3-center">
		<input type="submit" value="신청" class="w3-btn w3-black w3-round-xxlarge">
		<span onclick="document.getElementById('join').style.display='none'" class="w3-button">취소</span>
	</div>
	</form>
	</div>
  </div>
</div>
<script>
var modal = document.getElementById('join');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</body>
</html>