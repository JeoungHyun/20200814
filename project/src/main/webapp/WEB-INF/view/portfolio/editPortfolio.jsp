<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포트폴리오 작성/수정</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.container {
		margin: 30px auto;
    	max-width: 1000px;
	}
	.content > hr {
		width : 100%;
		border : thin solid #8572EE;
	}
	.container .content .content-header {
		padding-top : 100px;
		padding-bottom : 40px;
	}
	.container .content .content-body {
		margin : 30px 50px 30px 50px;
		padding : 30px 50px 30px 50px;
		border : 1px solid black;
	}
	.pagetitle {
		font-weight : bold;
		font-size : 50px;
		color : #5A3FEE;
	}
	.content-name {
		width : 200px;
		margin-right : 0;
		font-weight : bold;
		font-size : 25px;
	}
	.content-body-position {
		margin-bottom : 20px;
	}
	.content-body-skills {
		margin-bottom : 20px;
	}
	.content-body-giturl {
		margin-bottom : 20px;
	}
	.content-body-container {
	  margin: 0;
	  position : relative;
	}
	
	
	.pTag input {
	  padding: 5px;
	  font-size: 16px;
	  outline: none;
	  font-family: 'Rubik';
	  color: #333;
	  flex: 1;
	  background: transparent;
	}
	.added-pTags {
	  display: flex;
	  flex-wrap: wrap;
	  align-content: flex-start;
	  padding: 5px;
	  width: calc(100% - 30px);
	  height : 50px;
	}
	.added-pTags .pTag {
	  height: 40px;
	  margin: 0;
	  padding: 0 5px;
	  border: 1px solid #8a8a8a;
	  border-radius: 3px;
	  background: #8a8a8a;
	  display: flex;
	  align-items: center;
	  color: #333;
	  box-shadow: 0 0 4px rgba(0, 0, 0, 0.2), inset 0 1px 1px #8a8a8a;
	  cursor: pointer;
	  font-size : 20px;
	  color : #fff;
	  margin-right: 5px;
	}
	.pTag i {
	  font-size: 16px;
	  color: #666;
	  margin-left: 5px;
	}
	
	
	
	
	
	.sTag input {
	  padding: 5px;
	  font-size: 16px;
	  outline: none;
	  font-family: 'Rubik';
	  color: #333;
	  flex: 1;
	  background: transparent;
	}
	.added-sTags {
	  display: flex;
	  flex-wrap: wrap;
	  align-content: flex-start;
	  padding: 5px;
	  width: calc(100% - 30px);
	  height : 50px;
	}
	.added-sTags .sTag {
	  height: 40px;
	  margin: 0;
	  padding: 0 5px;
	  border: 1px solid #3877ff;
	  border-radius: 3px;
	  background: #3877ff;
	  display: flex;
	  align-items: center;
	  color: #333;
	  box-shadow: 0 0 4px rgba(0, 0, 0, 0.2), inset 0 1px 1px #3877ff;
	  cursor: pointer;
	  font-size : 20px;
	  color : #fff;
	  margin-right: 5px;;
	}
	.sTag i {
	  font-size: 16px;
	  color: #666;
	  margin-left: 5px;
	}
	
	#gitrulinput {
		width : 300px;
	}
	
	
	
	
	// 프로젝트 리스팅 임시
	table {
		border : 1px solid #000;
	}
	th {
		border : 1px solid #000;
	}
	td {
		border : 1px solid #000;
	}
	
	
</style>
<script>
	$(function() {
		const addedPTags = document.querySelector('.added-pTags');
		const pInput = document.querySelector('.pTag-input-span input');
		const addedSTags = document.querySelector('.added-sTags');
		const sInput = document.querySelector('.sTag-input-span input');
		let pTags = [];
		let sTags = [];
	
		var ptmp = $(".pTag").find('span').text().split(" ");
		var stmp = $(".sTag").find('span').text().split(" ");
		for(var i=0; i<ptmp.length-1; i++) {
			pTags.push(ptmp[i])
		}
		for(var i=0; i<stmp.length-1; i++) {
			sTags.push(stmp[i])
		}
		
		
		pInput.addEventListener('keyup', (e) => {
		    if (e.key === 'Enter') {
				if (pTags.length < 5) {
			      	e.target.value.split(',').forEach(tag => {
			        pTags.push(tag);
			      });
			      
			      addPTags();
			      pInput.value = '';
				}else {
					alert("5개까지 입력이 가능합니다.")
				}
		    }
		});
		
		sInput.addEventListener('keyup', (e) => {
		    if (e.key === 'Enter') {
				if (sTags.length < 5) {
			      	e.target.value.split(',').forEach(tag => {
			        sTags.push(tag);
			      });
			      
			      addSTags();
			      sInput.value = '';
				}else {
					alert("5개까지 입력이 가능합니다.")
				}
		    }
		});
		
		function addPTags() {
		  clearPTags();
		  pTags.slice().reverse().forEach(tag => {
			  addedPTags.prepend(createPTag(tag));
		  });
		}
		
		function addSTags() {
		  clearSTags();
		  sTags.slice().reverse().forEach(tag => {
			  addedSTags.prepend(createSTag(tag));
		  });
		}
		
		function clearPTags() {
		  	document.querySelectorAll('.pTag').forEach(tag => {
		    tag.parentElement.removeChild(tag);
		  });
		}
		
		function clearSTags() {
		  	document.querySelectorAll('.sTag').forEach(tag => {
		  	tag.parentElement.removeChild(tag);
		  });
		}
		
		function createPTag(label) {
			  const pdiv = document.createElement('div');
			  pdiv.setAttribute('class', 'pTag');
			  const pspan = document.createElement('span');
			  pspan.innerHTML = label;
			  const pcloseIcon = document.createElement('i');
			  pcloseIcon.innerHTML = '';
			  pcloseIcon.setAttribute('class', 'fa fa-times');
			  pcloseIcon.setAttribute('data-item', label);
			  pcloseIcon.setAttribute('id', 'positionI');
			  pdiv.appendChild(pspan);
			  pdiv.appendChild(pcloseIcon);
			  console.log(pdiv)
			  return pdiv;
		}
		
		function createSTag(label) {
			  const sdiv = document.createElement('div');
			  sdiv.setAttribute('class', 'sTag');
			  const sspan = document.createElement('span');
			  sspan.innerHTML = label;
			  const scloseIcon = document.createElement('i');
			  scloseIcon.innerHTML = '';
			  scloseIcon.setAttribute('class', 'fa fa-times');
			  scloseIcon.setAttribute('data-item', label);
			  scloseIcon.setAttribute('id', 'skillsI');
			  sdiv.appendChild(sspan);
			  sdiv.appendChild(scloseIcon);
			  console.log(sdiv)
			  return sdiv;
			}
	
		document.addEventListener('click', (e) => {
		  if (e.target.id === 'positionI') {
		    	const ptagLabel = e.target.getAttribute('data-item');
		    	const pindex = pTags.indexOf(ptagLabel);
		    	pTags = [...pTags.slice(0, pindex), ...pTags.slice(pindex+1)];
		    	addPTags();    
		  } else if (e.target.id ==='skillsI') {
			  	const stagLabel = e.target.getAttribute('data-item');
			 	const sindex = sTags.indexOf(stagLabel);
			  	sTags = [...sTags.slice(0, sindex), ...sTags.slice(sindex+1)];
			  	addSTags(); 
		  }
		})
		$("#save").on("click", function () {
			var projectable  = [];
			$('.projectable').each(function(i){
				if($(this).is(":checked")){
					projectable.push($(this).data('prono'));
				}
		    });
			console.log(typeof(projectable[1]))
			$.ajax({
				url: '${path}/ajax/portfolioSave.dev',
				type: "post",
				data: {
					pTags : pTags,
					sTags : sTags,
					giturl : $('#gitrulinput').val(),
					giturlable : $('#giturlable').prop('checked'),
					projectablepronos : projectable
				},
				traditional: true,
				success: function(s) {
					alert(s);
				},
				error : function(e) {
					alert("오류 발생")
				}
			})
			return true;
		})
	})
</script>
</head>
<body>
	<div class="container">
		<div class="content">
			<div class="content-header">
				<div class="pagetitle">My Portfolio 작성 / 수정</div>
				<button type="button" class="btn btn-primary" id="save">저장하기</button>
			</div>
				<hr>
			<div class="content-body">
				<div class="content-body-position">
					<div class="content-name">Position</div>
					<span class="content-body-container">
						<span class="pTag-input-span">
							<input/>  
  						</span>
	  					<span class="added-pTags">
	  						<c:forEach var="pTag" items="${tags}">
	  							<c:if test='${pTag.no==7}'>
	  								<div class="pTag">
	  									<span>${pTag.tag} </span>
	  									<i class="fa fa-times" data-item="${pTag.tag}" id="positionI"></i>
	  								</div>
	  							</c:if>
	  						</c:forEach>
	  					</span>
  					</span>
				</div>
				
				<div class="content-body-skills">
					<div class="content-name">Skills</div>
					<span class="content-body-container">
						<span class="sTag-input-span">
							<input/>  
  						</span>
	  					<span class="added-sTags">
	  						<c:forEach var="sTag" items="${tags}">
	  							<c:if test='${sTag.no==8}'>
	  								<div class="sTag">
	  									<span>${sTag.tag} </span>
	  									<i class="fa fa-times" data-item="${sTag.tag}" id="skillsI"></i>
	  								</div>
	  							</c:if>
	  						</c:forEach>
	  					</span>
					</span>
				</div>
				
				<div class="content-body-giturl">
					<div class="content-name">Github</div>
					<span class="custom-control custom-switch">
						<c:if test='${sessionScope.loginUser.giturlable==false}'>
						    <input type="checkbox" class="custom-control-input" id="giturlable">
						</c:if>
						<c:if test='${sessionScope.loginUser.giturlable==true}'>
						    <input type="checkbox" class="custom-control-input" id="giturlable" checked>
						</c:if>
					    <label class="custom-control-label" for="giturlable"></label>
					</span>
							
					<span class="content-body-container">
						<span class="giturl-input-span">
							<input id="gitrulinput"/>
						</span>
					</span>
				</div>
				
				<div class="content-body-project">
					<div class="content-name">프로젝트 관리</div>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addProject">프로젝트 추가</button>
					<table class="projectlist">
						<tr>
							<th>프로젝트명</th>
							<th>프로젝트 기간</th>
							<th>프로젝트 인원</th>
							<th>공개여부</th>
							<th>삭제</th>
						</tr>
						<c:forEach var="projects" items="${projects}">
							<tr>
								<td>${projects.subject}</td>
								
								<td>
									<fmt:formatDate value="${projects.start}" pattern="yyyy-MM-dd"/> 
									- 
									<fmt:formatDate value="${projects.end}" pattern="yyyy-MM-dd"/>
								</td>
								<td>${projects.num}</td>
								<td><input type='checkbox' class="projectable" name="projectable" data-prono="${projects.prono}"></td>
								<td><input type='checkbox'></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="modal fade" id="addProject" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLongTitle">프로젝트 추가하기</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      		<div class="form-group">
					<label for="subject" class="col-form-label">프로젝트명 :</label>
					<input type="text" class="form-control" id="subject">
				</div>
				<div class="form-group">
					<label for="numbers" class="col-form-label">프로젝트 인원 :</label>
					<input type="text" class="form-control" id="numbers">
				</div>
				<div class="form-group">
					<label for="start" class="col-form-label">시작일 :</label>
					<input type="text" class="form-control" id="start">
				</div>
				<div class="form-group">
					<label for="end" class="col-form-label">종료일 :</label>
					<input type="text" class="form-control" id="end">
				</div>
				<div class="form-group">
					<label for="description" class="col-form-label">상세 업무 :</label>
					<textarea class="form-control" id="description"></textarea>
				</div>
				<div class="form-group">
					<label for="repository" class="col-form-label">Github link:</label>
					<input type="text" class="form-control" id="repository">
				</div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
	        <button type="button" class="btn btn-primary" id="saveNewProject">저장하기</button>
	      </div>
	    </div>
	  </div>
	</div>
	<script>
		$(function(){
			$("#saveNewProject").on("click",function(){
				$.ajax({
					url : "${path}/ajax/addProject.dev",
					type : "post",
					data : {
						name : "${sessionScope.loginUser.name}",
						subject : $("#subject").val(),
						numbers : $("#numbers").val(),
						start : $("#start").val(),
						end : $("#end").val(),
						description : $('#description').val(),
						repository : $('#repository').val()
					},
					success : function(s) {
						var result = JSON.parse(s);
						var html = '';
						html += '<tr><td>' + result.subject + '</td>'
						html += '<td>' + result.term + '</td>'
						html += '<td>' + result.numbers + '</td>'
						html += '<td><input type="checkbox" class="projectable" name="projectable" data-prono="' + result.prono + '"></td>'
						html += '<td><input type="checkbox"></td></tr>'
						alert("새로운 프로젝트가 추가되었습니다.")
						$(".projectlist").append(html);
						$(".form-control").val('');
						$("#addProject").modal('hide');
						
					},
					error : function(e) {
						alert("에러 발생")
					}
				})
			})
		})
	</script>
	
</body>
</html>