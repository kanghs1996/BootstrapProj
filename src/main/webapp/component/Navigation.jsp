<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>Navigation.jsp</title>

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
				Navigation Example<small>네비게이션 메뉴 예제 입니다</small>
			</h1>			
		</div>
		<h2>네비게이션 : 탭형</h2>
		<ul class="nav nav-tabs">
		  <li><a href="#">메뉴1</a></li>
		  <li class="active"><a href="#">메뉴2</a></li>
		  <li ><a href="#">메뉴3</a></li>
		</ul>
		<h2>네비게이션 : 알약형</h2>
		<ul class="nav nav-pills">
		  <li class="active"><a href="#">메뉴1</a></li>
		  <li><a href="#">메뉴2</a></li>
		  <li><a href="#">메뉴3</a></li>
		</ul>
		<h2>네비게이션 : 알약형(양쪽 정렬된)</h2>
		<ul class="nav nav-pills nav-justified">
		  <li class="active"><a href="#">메뉴1</a></li>
		  <li><a href="#">메뉴2</a></li>
		  <li><a href="#">메뉴3</a></li>
		</ul>
		<h2>네비게이션 : 알약형(세로로 쌓인)</h2>
		<ul class="nav nav-pills nav-stacked">
		  <li class="active"><a href="#">메뉴1</a></li>
		  <li><a href="#">메뉴2</a></li>
		  <li><a href="#">메뉴3</a></li>
		</ul>
		<h2>네비게이션 : 알약형에서 드랍다운</h2>
		<ul class="nav nav-pills">
		  <li class="active"><a href="#">메뉴1</a></li>
		  <li><a href="#">메뉴2</a></li>
		  <!-- 1)li에  dropdown클래스 부여--> 
		  <li class="dropup">
		  	<!--  a태그를 드롭다운 메뉴로:2)a태그에 dropdown-toggle클래스 부여 및 data-toggle="dropdown" 필수 -->
		  	<a href="#" class="dropdown-toggle"	data-toggle="dropdown">메뉴3<span class="glyphicon glyphicon-triangle-bottom"></span></a>
		  	<ul class="dropdown-menu">
				<li><a href="#">메뉴1</a></li>
				<li><a href="#">메뉴2</a></li>
				<li class="divider"></li>
				<li><a href="#">메뉴3</a></li>
			</ul>
		  </li>
		</ul>
	</div>

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->   
    <script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
    <script>
    	
    	//모든 NodeList의 요소의 class속성 제거하는 함수
    	function allClear(nodes){
    		nodes.forEach(function(node){
    			if(node.getAttribute('class')==='active')//dropup 및 divider적용키 위함(다른 class는 지우면 안됨)
    				node.removeAttribute('class');
    		});
    	}
    	console.log('%O',document.querySelectorAll(".nav.nav-tabs li"));//NodeList   	   	
    	var tabs = document.querySelectorAll(".nav.nav-tabs li");
    	//각 NodeList의 요소에 click이벤트 설정
    	tabs.forEach(function(tab){  		    		
    		tab.onclick=function(){ //특정 li(요소) 클릭시   			
    			allClear(tabs);//모든 class속성 제거
    			if(!this.getAttribute('class'))//클릭한 해당 li에만 class속성 추가
    				this.setAttribute('class','active');	
    				
    		};    		
    	});
    	
    	var pills = document.querySelectorAll(".nav.nav-pills li");
    	//각 NodeList의 요소에 click이벤트 설정
    	pills.forEach(function(pill,index){  		    		
    		pill.onclick=function(){ //특정 li(요소) 클릭시   			
    			allClear(pills);//모든 class속성 제거
    			console.log(pills.length-1,index);
    			if(!this.getAttribute('class'))//클릭한 해당 li에만 class속성 추가
    				this.setAttribute('class','active');
    				
    		};    		
    	});    	
    </script>
  </body>
</html>
