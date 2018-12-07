<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <!--부트스트랩-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!--탑메뉴 css-->
    <link rel="stylesheet" href='<c:url value="/css/homepageDesign_topBar.css" />'/>
    <!--양 사이드 관련 css-->
    <link rel="stylesheet" href='<c:url value="/css/homepageDesign_allSideMenu.css" />'/>
    <script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
    
</head>
<body>
  <!--탑메뉴-->
  <ul class="topbar_park">
      <li><a href='<c:url value="/main/main.do" />'>JOB STORY</a></li>
  </ul>

  <!--왼쪽배너-->
  <div ng-app='app' ng-controller='leftbanner1' class='leftbanner1'></div>
  <div ng-app='app' ng-controller='leftbanner2' class='leftbanner2'></div>

  <!--오른쪽 로그인 화면-->
  <div ng-app='app' ng-controller='logout_park' class='logout_park'>
    <section class='headname'>    
    	   
    	<c:if test="${empty user.imgSerPath}">
    		<img src="${user.imgSerName}" class='userpic' alt="">
    	</c:if>
    	<c:if test="${not empty user.imgSerPath}">
    		<img src="${user.imgSerPath}/${user.imgSerName}" class='userpic' alt="">
    	</c:if>           
      <h3 id="profilename">${user.name}</h3>
    </section>
    <hr class='logouthr'>
    <section class='account-info'>
      <div class='like'>
        <h4>120</h4>
        <span class='heart1'>
            <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
        </span>              
      </div>
      <div class='hate'>
        <h4>1357</h4>
        <span class='heart2'>
            <span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>
        </div>
        <a id="logout_park"  href="javascript:logout()" style="width: 30px; text-decoration:none;">
            <h4>LOGOUT</h4>
            <span class="glyphicon glyphicon-log-in" aria-hidden="true">
        </a>          
    </section>
    <div class='following'>
        <button type="button" class="btn btn-info">마이 페이지</button>
    </div>        
  </div>

  <!--오른쪽 하단 메뉴 링크-->
  <div ng-app='app' ng-controller='rightmenu' class='rightmenu'>
    <section class='account-info2'>
      <div>
        <a href="#">
          <span class='eachpic'><img src="../img/side/cal.png" width="80%" style="border-radius: 10%;"></span>            
      </a>                
      <p id="menutext">내 공채달력</p>
      </div>
      <div>                
        <a href='<c:url value="/main/severanceCal.do"/>'>
          <span class='eachpic'><img src="../img/side/calcul.jpg" width="80%" style="border-radius: 10%;"></span>            
        </a>
        <p id="menutext">연봉 퇴직금</p> 
        <p id="menutext">계산기</p> 
      </div>               
    </section>
    <br>       
    <section class='account-info2'>
      <div>                
        <a href='<c:url value="/community/review/list.do"/>'>
          <span class='eachpic'><img src="../img/side/리뷰.jpg" width="80%" style="border-radius: 10%;"></span>            
        </a>
        <p id="menutext">기업 후기</p>             
      </div>
      <div>                
        <a href='<c:url value="/community/boardInterview.do"/>'>
          <span class='eachpic'><img src="../img/side/자소서.png" width="80%" style="border-radius: 10%;"></span>            
        </a>
        <p id="menutext">면접 후기</p> 
      </div>                               
    </section>        
  </div>
  <div class="goTopBottom">
    <div>
        <a href='<c:url value="/websocket/chatting.do"/>'>
            <span class='eachpic'><img src="../img/side/chat.png" width="80%" style="border-radius: 10%;"></span>            
        </a> 
    </div>
    <br>
    <button type="button" id="goTop" class="btn btn-danger">TOP</button>
    <hr id="login-hr">
    <button type="button" id="goBottom" class="btn btn-danger">BOTTOM</button>
  </div>
<script>
  /* 스크롤 이동 */
  $("#goTop").click(function (e) {
      e.preventDefault();
      $("html, body").animate({scrollTop:0}, 400);
  });
  $("#goBottom").click(function (e) {
      e.preventDefault();
      var scrollPosition = $(".pagination").offset().top;
      $("html, body").animate({scrollTop:scrollPosition}, 400);
  });
  
  $(".btn-info").click(function () {
	   if(${user.authority==1}) {
		   location.href='<c:url value="/user/resumeList.do"/>'
	   } else if(${user.authority==2}) {  
		   location.href='<c:url value="/company/mypage.do?memberNo=${user.memberNo}"/>'
	   }
})

	/* 로그아웃 */
	function logout() {
	  location.href='<c:url value="/sign/logout.do"/>'
	}
</script>   	
</body>
</html>