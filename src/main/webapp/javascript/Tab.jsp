<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>Tab.jsp</title>

    <!-- 부트스트랩 -->
    
    <link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

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
				토글가능한 탭 <small>tab.js</small>
			</h1>
		</div>
		
		<!-- 
		<h2>네비게이션 탭 메뉴를 data-toggle속성을 사용해서 구현</h2>
		-->
		<!-- 페이지 로드시 메뉴1 및 메뉴1의 내용 보이게 하려면
			<li class="active">
			<div class="tab-pane fade in active"
		 -->
		<!--  
		<ul class="nav nav-tabs">
		  <li class="active"><a href="#menu1" data-toggle="tab">메뉴1</a></li>
		  <li ><a href="#menu2" data-toggle="tab">메뉴2</a></li>
		  <li ><a href="#menu3" data-toggle="tab">메뉴3</a></li>
		</ul>
		-->
		
		<h2>네비게이션 탭 메뉴를 자바스크립트를 사용해서 구현</h2>		
		<ul class="nav nav-tabs" id="tabmenu">
		  <li ><a href="#menu1" data-toggle="tab">메뉴1</a></li>
		  <li ><a href="#menu2" data-toggle="tab">메뉴2</a></li>
		  <li ><a href="#menu3" data-toggle="tab">메뉴3</a></li>
		</ul>		
		<!-- 탭메뉴에 따른 내용 -->
		<div class="tab-content">
			<div class="tab-pane" id="menu1">
				<p>
					Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.
				</p>
			</div>
			<div class="tab-pane fade" id="menu2">
				<p>
					Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.
				</p>
			</div>
			<div class="tab-pane fade" id="menu3">
				<p>
					Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.
				</p>
			</div>
		</div>
		
		<h2><span data-toggle="tooltip" data-placement="top" title="속성을 이용한 툴팁">속성을 이용한 툴팁</span></h2><!-- 단,자스로 tooltip()함수는 호출해야함 -->	
		<h2><span class="mytooltip">자스를 이용한 툴팁</span></h2>
		<h2>버튼 로딩 상태</h2>
		<!-- 반드시 아래 자스 추가해야 구현됨 -->
		<button  id="btndownload" data-loading-text="다운로드 중..." 
		class="btn btn-primary" autocomplete="off">
  		다운로드
		</button>
	</div>

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
   
    <script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
    <script>
  		//페이지 로드시 메뉴1이 보이도록 설정
    	$('#tabmenu a:first').tab('show'); 
    	//각 탭 메뉴 클릭시 해당 내용이 보이도록 이벤트 처리
    	$('#tabmenu a').click(function(){
    		$(this).tab('show'); 
    	});
    	//태그의 속성 이용해서 툴팁 띄우기
    	$("[data-toggle='tooltip']").tooltip();
    	//순수 자스로만 툴팁 띄우기 구현
    	$('.mytooltip').tooltip({animation:true,placement:'right',title:'수신한 풍선 도움말입니다'});
    	
    	//버튼 로딩 상태 구현
    	$('#btndownload').on('click', function () {
    		
    	    var $btn = $(this).button('loading');
    	    //업무처리 로직
    	    setTimeout(function(){$btn.button('reset')},3000)
    	  })
    </script>
  </body>
</html>
