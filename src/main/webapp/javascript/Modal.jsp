<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>Modal.jsp</title>

<!-- 부트스트랩 -->

<link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container">
		<div class="page-header">
			<h1>
				모달(Modals) <small>modal.js</small>
			</h1>
		</div>
		<h2>모달창 띄우기 기본</h2>
		<button class="btn btn-success" data-toggle="modal"	data-target="#basic-modal">모달 띄우기</button>
		<!-- 모달창 시작 -->
		<div class="modal fade" id="basic-modal">
			<div class="modal-dialog">
			
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">
							<span>&times;</span>
						</button>
						<h4 class="modal-title">기본 모달창</h4>
					</div>
					<div class="modal-body">
						<h2>모달 바디 영역입니다</h2>
						<p>안녕하세요<br/>기본 모달창 입니다<br/>재미 있네요</p>
						
					</div>
					<div class="modal-footer">
						<button class="btn btn-default" data-dismiss="modal">닫기</button>						
					</div>
				</div>
				
			</div>
		</div>
		<!-- 모달창 끝 -->
		<h2>크기 옵션 : modal-lg,modal-sm</h2>
		<button class="btn btn-success" data-toggle="modal"	data-target="#large-modal">큰 모달 띄우기</button>
		<button class="btn btn-success" data-toggle="modal"	data-target="#small-modal">작은 모달 띄우기</button>
		<!--큰 모달창 시작 -->
		<div class="modal fade" id="large-modal">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-body">
		      	<button class="close" data-dismiss="modal">
					<span>&times;</span>
				</button>
		      	<h2>큰 모달 바디 영역입니다</h2>
				<p>안녕하세요<br/>기본 모달창 입니다<br/>재미 있네요</p>
		      </div>
		    </div>
		  </div>
		</div>
		<!--큰 모달창 끝 -->
		<!--작은 모달창 시작 -->
		<!-- 배경 클릭해도 안닫히기:data-backdrop="static" -->
		<div class="modal fade" id="small-modal" data-backdrop="static">
		  <div class="modal-dialog modal-sm">
		    <div class="modal-content">
		      <div class="modal-body">
		      	<button class="close" data-dismiss="modal">
					<span>&times;</span>
				</button>
		      	<h4>작은 모달 바디 영역입니다</h4>
				<p>안녕하세요<br/>기본 모달창 입니다<br/>재미 있네요</p>
		      </div>
		    </div>
		  </div>
		</div>
		<!--작은 모달창 끝 -->
		<!-- 자스로 모달 제어 -->
		<!-- data-backdrop="static"제거 : 자스로 제어 -->
		<div class="modal fade" id="js-modal">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-body">
		      	<!-- data-dismiss속성(닫기 기능) 제거:자스로 제어하기위함 -->
		      	<button class="close" id="close">
					<span>&times;</span>
				</button>
		      	<h4>작은 모달 바디 영역입니다</h4>
				<p>안녕하세요<br/>기본 모달창 입니다<br/>재미 있네요</p>
		      </div>
		    </div>
		  </div>
		</div>
		<h2>자바스크립트로 모달창 띄우기</h2>
		<button class="btn btn-success" id="btn-modal">자바스크립트</button>
		
	</div>

	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

	<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
	<script>
		$('#js-modal').modal({backdrop:'static',show:false});
		$('#btn-modal').click(function(){
			$('#js-modal').modal('show');	
			//3초후에 자동으로 닫히기
			setTimeout(function(){$('#js-modal').modal('hide');},3000);
		});
		$('#close').click(function(){
			$('#js-modal').modal('hide');			
		});
	
	</script>
</body>
</html>
