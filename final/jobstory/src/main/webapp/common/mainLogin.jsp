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
      <li><a href="#">JOB STORY</a></li>
  </ul>

  <!--왼쪽배너-->
  <div ng-app='app' ng-controller='leftbanner1' class='leftbanner1'></div>
  <div ng-app='app' ng-controller='leftbanner2' class='leftbanner2'></div>

  <!--오른쪽 로그인 화면-->
  <div ng-app='app' ng-controller='login_park' class='login_park'>
    <p id="logintext">LOG IN</p>
    <form id="logindetail">
        <div class="form-group">
          <input type="id" class="form-control" id="id" placeholder="아이디를 입력하세요">
        </div>
        <div class="form-group">
          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="암호를 입력하세요">
        </div>
        <button id="loginbtn" type="submit" class="btn btn-primary">LOG IN</button>
      </form>
    <hr id="login-hr">    
    <button id="signupbtn" type="submit" class="btn btn-success">SIGN UP</button>
    <section class='account-info'>
        <div class='kakao'>                
          <span class='kakao'><img src="../img/kakao/카카오.png" width="80%" style="border-radius: 10%;"></span>            
        </div>
        <div class='naver'>                
          <span class='naver'><img src="../img/kakao/네이버 아이디로 로그인_아이콘형_White.PNG" width="80%"></span>
        </div>               
    </section>
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
        <a href="#">
          <span class='eachpic'><img src="../img/side/calcul.jpg" width="80%" style="border-radius: 10%;"></span>            
        </a>
        <p id="menutext">연봉 / 퇴직금</p> 
        <p id="menutext">계산기</p> 
      </div>               
    </section>
    <br>       
    <section class='account-info2'>
      <div>                
        <a href="#">
          <span class='eachpic'><img src="../img/side/리뷰.jpg" width="80%" style="border-radius: 10%;"></span>            
        </a>
        <p id="menutext">합격 후기</p>             
      </div>
      <div>                
        <a href="#">
          <span class='eachpic'><img src="../img/side/자소서.png" width="80%" style="border-radius: 10%;"></span>            
        </a>
        <p id="menutext">자소서 첨삭</p> 
      </div>                               
    </section>        
  </div>
  <div class="goTopBottom">
    <div>
        <a href="#">
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
</script>   	
</body>
</html>