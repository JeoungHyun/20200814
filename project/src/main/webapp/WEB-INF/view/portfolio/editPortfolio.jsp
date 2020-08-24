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
		width : 150px;
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
			$.ajax({
				url: '${path}/ajax/portfolioSave.dev',
				type: "post",
				data: {
					pTags : pTags,
					sTags : sTags,
					giturl : $('#gitrulinput').val(),
					giturlable : $('#giturlable').prop('checked')
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
							    <input type="checkbox" class="custom-control-input" id="giturlable">
							    <label class="custom-control-label" for="giturlable"></label>
							</span>
					<span class="content-body-container">
						<span class="giturl-input-span">
							<input id="gitrulinput"/>
						</span>
					</span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>