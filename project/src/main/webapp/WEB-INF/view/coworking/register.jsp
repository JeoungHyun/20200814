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
.container .content table tr:last-child div {
	margin: 0 20px;
	width: 5em;
	padding: 5px;
	background: #CCE1FF;
	border: 1px solid #fff;
	font-size: 15px;
	font-weight: bold;
	border-radius: 5px;
	display: inline;
}
.container .content table tr:last-child div a {
	text-decoration: none;
	color: #000;
}
.hashtag-container {
  margin: 0;
}
.hashtag {
  display: flex;
  flex-wrap: wrap;
  align-content: flex-start;
  padding: 5px;
  border-bottom: 1px solid #000;
  width: calc(100% - 30px);
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
</style>
</head>
<body>
<div class="container">
<div class="content">
	<form:form modelAttribute="coworking" method="post" action="register.dev" name="f">
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
		<tr><td>관련 기술</td><td><div class="hashtag-container"><div class="hashtag"><input/>  
  			</div></div></td></tr>
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
		<div><a href="javascript:document.f.submit()" id="submit">신청</a></div>
		<div><a href="#">초기화</a></div>
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
<script type="text/javascript">
$(function() {
const tagContainer = document.querySelector('.hashtag');
const input = document.querySelector('.hashtag input');

let tags = [];

function createTag(label) {
  const div = document.createElement('div');
  div.setAttribute('class', 'tag');
  const span = document.createElement('span');
  span.innerHTML = label;
  const closeIcon = document.createElement('i');
  closeIcon.innerHTML = '';
  closeIcon.setAttribute('class', 'fa fa-times');
  closeIcon.setAttribute('data-item', label);
  div.appendChild(span);
  div.appendChild(closeIcon);
  return div;
}

function clearTags() {
  document.querySelectorAll('.tag').forEach(tag => {
    tag.parentElement.removeChild(tag);
  });
}

function addTags() {
  clearTags();
  tags.slice().reverse().forEach(tag => {
    tagContainer.prepend(createTag(tag));
  });
}

input.addEventListener('keyup', (e) => {
    if (e.key === 'Enter') {
	if (tags.length < 5) {
      e.target.value.split(',').forEach(tag => {
        tags.push(tag);  
      });
      
      addTags();
      input.value = '';
      console.log(tags);
	}else {
		alert("기술을 5개까지만 입력이 가능합니다.")
	}
    }
});
document.addEventListener('click', (e) => {
  console.log(e.target.tagName);
  if (e.target.tagName === 'I') {
    const tagLabel = e.target.getAttribute('data-item');
    const index = tags.indexOf(tagLabel);
    tags = [...tags.slice(0, index), ...tags.slice(index+1)];
    addTags();    
  }
})

input.focus();

$("#submit").on("click", function () {
	var hash = {hash : tags};
	console.log(hash);
	
	$.ajax({
		url: '${path}/ajax/hashtag.dev',
		type: "post",
		data: hash,
		traditional: true,
		success: function(response){
		}
	})
	return true;
})
	
})

</script>
</body>
</html>