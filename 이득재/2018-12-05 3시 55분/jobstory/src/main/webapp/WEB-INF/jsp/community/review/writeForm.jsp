<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <meta name="description" content=""> -->
<!-- <meta name="author" content=""> -->
<!-- <link rel="icon" href="../../favicon.ico"> -->
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.js"
		integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
		crossorigin="anonymous"></script>
		
<!--부트스트랩-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!--기업평가-->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css"></script>
<!-- <!--폰트 --> -->
<!-- <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300" rel="stylesheet"> -->

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- <script src="../../assets/js/ie-emulation-modes-warning.js"></script> -->

<!-- 스마트 에디터 -->
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
<title>네이버 :: Smart Editor 2 &#8482;</title>
<script type="text/javascript" src="/jobstory/resources/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>



<style>
	   .all-container, .main-title {
            font-family: 'Noto Sans KR', sans-serif;
            margin-top: 100px;
        }
        .topbar {
        position: absolute;
        top: 0px;
        left: 0px;
        background: rgb(17, 47, 65);
        margin: 0; padding: 0;
        list-style: none;
        position: fixed;
        width: 100%;
        z-index: 3;
        }
        .topbar>li {
          display: inline-block;
        }
        .topbar>li>a {
          display: block;
          text-decoration: none;
          padding: 8px 65px;
          color: white;
          font-size: 26px;
        }
        .topbar>li>a:hover {
          color: rgb(79, 185, 159);
        }

        /*프로필*/  
        .profile {
          position:absolute;
          left:1411px;
          background: white;
          padding: 20px;
          border-radius: 10px 10px 10px 10px;
          box-shadow: 
            0px 2px 10px rgba(0,0,0,0.1), 
            0px 10px 20px rgba(0,0,0,0.2), 
            0px 30px 60px 1px rgba(0,0,0,0.4);
          animation: fadein 1s ease-in-out;
          width: 174px;
          height: 265px;
          text-align: right;
          display: inline-block;
          /* float: right; */
          /* margin-top: -339px; */
          top: 68px;
          position: fixed;
        }
        .profile .head {
          display: block;
          text-align: center;
          line-height: 0.1px;
        }
        .profile .head .userpic {
          border-radius: 100%;
          width: 60%;
          border: 3px solid #ccffdd;
          transition: 0.5s ease-out;
        }
        .profile .head .userpic:hover {
          filter: brightness(60%);
        }
        .profile .head .username {
          color: gray;
        }
        .profile .head .options {
          float: right;
          color: gray;
        }
        .hr {
          border: none;
          height: 5px;
          background: #ccffdd;
        }
        .profile .account-info {
          display: flex;
          justify-content: space-between;
          text-align: center;
          line-height: 0.1px;
        }
        .heart1 {
          color: #B22222;
          font-size: 1.2em
        }
        .heart2 {
          color: blue;
          font-size: 1.2em
        }
        #logout {
          color: rgb(0, 0, 0);
          font-size: 1.2em
        }
        @keyframes fadein {
          from {
            margin-top: -50px;
            opacity: 0;
          }
          to {
            opacity: 1;
          }
        }
        .head  h3{
          margin-top: 3px;
          margin-bottom: -15px;
        }
        .account-info  h4 {
          margin-top: -3px;
          margin-bottom: 8px;
          font-size: 10px;
          font-weight: bold;
        }
        .btn {
          display: inline-block;
          padding: 6px 37px;
          margin-bottom: 0;
          font-size: 12px;
          font-weight: 400;
          line-height: 1.428571;
          text-align: center;
          white-space: nowrap;
          vertical-align: middle;
          -ms-touch-action: manipulation;
          touch-action: manipulation;
          cursor: pointer;
          -webkit-user-select: none;
          -moz-user-select: none;
          -ms-user-select: none;
          user-select: none;
          background-image: none;
          border: 1px solid transparent;
          border-radius: 4px;
      }
      .btn-info{
        background-color: rgb(79, 185, 159);
      }

      .btn-info:hover {
        background-color: rgb(6, 133, 135);
      }

      /*sidebar*/
      .sidebar_park {
          position:absolute;
          left:1411px;
          background: white;
          padding: 20px;
          border-radius: 10px 10px 10px 10px;
          box-shadow: 
            0px 2px 10px rgba(0,0,0,0.1), 
            0px 10px 20px rgba(0,0,0,0.2), 
            0px 30px 60px 1px rgba(0,0,0,0.4);
          animation: fadein 1s ease-out;
          width: 174px;
          height: 188px;
          text-align: right;
          display: inline-block;
          /* float: right; */
          /* margin-top: -55px; */
          top: 365px;
          position: fixed;
        }
        .sidebar_park .account-info2 {
          display: flex;
          justify-content: space-between;
          text-align: center;
          line-height: 0.1px;
        }
        .sidebar_park .account-info2 .eachpic {
          filter: grayscale(100);
        }
        .sidebar_park .account-info2 .eachpic:hover {
          filter: grayscale(0);
        }
      
        #menutext {
          text-align: center;
          font-size: 4px;
          margin-top: 10px;
          font-weight: bold;
        }
        .account-info2 a{
          display: block;
          height:40px;
        }
        .account-info2 a img{
          height: auto;
          max-height: 100%;
          width: auto;
        }
        

        

        
        /*사이드 정보 배너 바*/
        .sidebanner2 {
            left: 14px;
            background: white;
            padding: 20px;
            width: 192px;
            height: 275px;
            text-align: right;
            display: inline-block;
            top: 68px;
            position: fixed;
            background-repeat: no-repeat;
            background-size: 100%;
            animation-name: myani1;
            animation-duration: 5s;
            animation-timing-function: step-end;
            animation-iteration-count: infinite;
            background-image: url(./sidebanner/side1.png);
        }



	#content{
		font-size: 15px;
    position: relative;
    top: -150px;
  	padding-left: 400px;


	}
	#title,#company,#choice, #interview,#interviewcnt{
		border-radius: 20px;
		width: 250px;
	}



/* 기업 평가 */


.rating{
  text-align: center;
  margin-top: -5px;
  position: relative;
  width: 400px;
  height: 42px;
  float: left;
  top: -95px;
}

.choice1 {
  position: relative;
  top: 40px;
}

.hidden {
  opacity: 0;
}

.star {
  display: inline-block;
  margin: 5px;
  font-size: 30px;
  color: rgba(179, 176, 176, 0.829);
  position: relative;
}
.star.animate {
  -webkit-animation: stretch-bounce .5s ease-in-out;
}
.star.hidden {
  opacity: 0;
}

.full:before {
  font-family: fontAwesome;
  display: inline-block;
  content: "\f005";
  position: relative;
  float: right;
  z-index: 2;
}

.half:before {
  font-family: fontAwesome;
  content: "\f089";
  position: absolute;
  float: left;
  z-index: 3;
}

.star-colour {
  color: #ffd700;
}

/* 클릭시 star 크게 보이는 효과 */
@-webkit-keyframes stretch-bounce {
  0% {
    -webkit-transform: scale(1);
  }
  25% {
    -webkit-transform: scale(1.5);
  }
  50% {
    -webkit-transform: scale(0.9);
  }
  75% {
    -webkit-transform: scale(1.2);
  }
  100% {
    -webkit-transform: scale(1);
  }
}
.selected:before {
  font-family: fontAwesome;
  display: inline-block;
  content: "\f005";
  position: absolute;
  top: 0;
  left: 0;
  -webkit-transform: scale(1);
  opacity: 1;
  z-index: 1;
}
.selected.pulse:before {
  -webkit-transform: scale(3);
  opacity: 0;
}
.selected.is-animated:before {
  transition: 1s ease-out;
}

 .score {
  display: none; 
  font-family: arial;
  font-size: 15px;
  color: rgb(237, 85, 59);
  margin-top: 330px;
  margin-left: 20px;
} 

.score-rating {
  vertical-align: sup;
  top: -5px;
  position: relative;
  font-size: 150%;
}

.total {
  vertical-align: sub; 
  top: 0px;
  position: relative;
  font-size: 150%;
}

.average {
  /* border: 1px solid black; */
  font-family: arial;
  font-size: 20px;
  color: rgb(237, 85, 59);
  position: absolute;
  top: -155px;
  left: 195px;
  transform: translate(-50%, -50%);
  text-align: center;
}
.average .score-average {
  font-weight: bold;
  padding-top: 5px;
}

 #ir1 {
  position: relative;
  left: 900px;
  border: 3px solid black;
} 

.starcontainer {
  /* border: 1px solid black; */
  position: absolute;
  width: 400px;
  top : 300px;
  left: 315px;
}

/* 승진 기회, 복지 및 급여, 워라벨, 사내문화, 경영진 */
#promotion{
  position: relative;
  top: -100px;
  left: 130px;
}

#welfare{
  position: relative;
  top: -90px;
  left: 150px;
}

#workAndLife{
  position: relative;
  top: -90px;
  left: 130px;
}

#compCulture{
  position: relative;
  top: -90px;
  left: 165px;
}

#management{
  position: relative;
  top: -90px;
  left: 170px;
}


/* 커뮤니티 사이드 메뉴*/

#vert-nav .topmenu li:last-child a {
    border-bottom: 0.2em solid #398e68;
}
#vert-nav .topmenu li a {
    margin-left: 20px;
    padding: 1em;
    display: block;
    width: 220px;
    
    background: rgb(6, 133, 135);
    color: #fff;
    border-bottom: 0.1em solid #398e68;
}

a {
    color: rgb(173, 173, 173);
    text-decoration: none;
    margin-bottom: 0em;
}
a {
    text-decoration: inherit;
}
a {
    background-color: transparent;
}
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
#vert-nav ul {
    list-style: none;
    padding: 0;
}
ul {
    margin: 0;
    padding: 0;
    list-style: none;
}

ul, menu, dir {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
body {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-color: #fff;
}
body {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 1.4rem;
    line-height: 1.42857143;
    color: #555;
}

/* #vert-nav {
  border: 1px solid black;
  width: 300px;
  top: 600px;
} */

.wrap{
  position: relative;
  width: 280px;
  top: 150px;
}

/* 스마트 에디터 */
 #smarteditor{
 	position: relative;
 	top: 0px;
 	left: 300px;
 }

	</style>
</head>
<body>
<!--사이드 정보 배너-->
<!-- <div ng-app='app' ng-controller='profile' class='sidebanner2'></div> -->

<ul class="topbar">
	<li><a href="#">JOB STORY</a></li>
	<!-- <li id="marketing" style="float: right;"><a href="#"><marquee>광고문의 : 010-8669-8797</marquee></a></li> -->
</ul>
  <div>    
  <!-- <div ng-app='app' ng-controller='profile' class='sidebanner'></div> -->
  <!-- <div ng-app='app' ng-controller='profile' class='topbanner'></div> -->
  <!-- banner -->
  <div ng-app='app' ng-controller='profile' class='profile'>
	  <section class='head'>                  
		<img src="/jobstory/img/ironman.jpg" class='userpic' alt="">
		<h3>Park Taehwan</h3>
	  </section>
	  <hr class='hr'>
	  <section class='account-info'>
		<div class='posts'>
		  <h4>120</h4>
		  <span class='heart1'><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
		</span>              
		</div>
		<div class='followers'>
		  <h4>1357</h4>
		  <span class='heart2'><span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>
		</div>
		<a id="logout"  href="javascript:logout()" style="width: 30px;">
			<h4>LOGOUT</h4>
			<span class="glyphicon glyphicon-log-in" aria-hidden="true">
		</a>          
	  </section>
	  <div class='following' style="margin-top: 10px;">
		<button type="button" class="btn btn-info">마이 페이지</button>
	  </div>        
  </div>

  <!--사이드바-->      
  <div ng-app='app' ng-controller='sidebar_park' class='sidebar_park'>
	  <section class='account-info2'>
		  <div>
			<a href="#">
			  <span class='eachpic'><img src="/jobstory/img/side/cal.png" width="80%" style="border-radius: 10%;"></span>            
			</a>                
			<p id="menutext">내 공채달력</p>
		  </div>
		  <div>                
			<a href="#">
			  <span class='eachpic'><img src="/jobstory/img/side/cal.png" width="80%" style="border-radius: 10%;"></span>            
			</a>
			<p id="menutext">연봉 계산기</p> 
			<p id="menutext">퇴직금 계산기</p> 
		  </div>               
		</section>
		<br>       
		<section class='account-info2'>
		  <div>                
			<a href="#">
			  <span class='eachpic'><img src="/jobstory/img/side/리뷰.jpg" width="80%" style="border-radius: 10%;"></span>            
			</a>
			<p id="menutext">합격 후기</p>             
		  </div>
		  <div>                
			<a href="#">
			  <span class='eachpic'><img src="/jobstory/img/side/자소서.png" width="80%" style="border-radius: 10%;"></span>            
			</a>
			<p id="menutext">자소서 첨삭</p> 
		  </div>                               
	  </section>        
  </div>
</div>


<!-- 게시판 사이드바 -->
<div class="wrap">
		<section id="vert-nav">
		<h3>커뮤니티</h3>
		<nav role='navigation'>
		<ul class="topmenu">
			<li><a href="<c:url value="/jobstory/WEB-INF/jsp/communityReview/list.do"/>"><i class="entypo-brush"></i>자소서 첨삭</a></li>
			<li><a href="<c:url value="/jobstory/WEB-INF/jsp/communityReview/list.do"/>"><i class="entypo-user"></i>면접 후기</a></li>
			<li><a href="<c:url value="/jobstory/WEB-INF/jsp/communityReview/list.do"/>"><i class="entypo-vcard"></i>기업 후기</a></li>
		</ul>
		</nav>
		</section>
</div>


	<form action="write.do" method="post" id="frm"> 
	    <!--  앞에 나오는 점수 score-rating js-score 를 히든으로 저장시켜서 넘겨보기 -->
	    <div class="score">
	     <span class="score-rating js-score" name="score1">0</span> 
	     <input type="hidden" name="score1" id="score1" value="0" />
 
	    </div>
	    
   	    <div class="score">
	     <span class="score-rating js-score" name="score2">0</span> 
	     <input type="hidden" name="score2" id="score2" value="0" />

	    </div> 
	    
   	    <div class="score">
	     <span class="score-rating js-score" name="score3">0</span> 
	     <input type="hidden" name="score3" id="score3" value="0" />

	    </div>  
	    
   	    <div class="score">
	     <span class="score-rating js-score" name="score4">0</span> 
	     <input type="hidden" name="score4" id="score4" value="0" />

	    </div> 
	    
   	    <div class="score">
	     <span class="score-rating js-score" name="score5">0</span> 
	     <input type="hidden" name="score5" id="score5" value="0" />

	    </div> 	          
       
		<div id="content">
			<h1>기업후기</h1>
			<div id="board-write">
				<input type="hidden" value="${user.memberId}" name="writer">
			</div>
			<span id="search-img"> 
			</span>
			<div>
				<span>제목:</span> <input type="text" id="title" name="title" /><br>
				<span>회사명:</span> <input type="text" id="company" name="company"/>
			</div>
			



		<textarea name="content" id="smarteditor" rows="10" cols="100" style="width:500px; height:412px;"> 
	</textarea> 
	
	<input type="button" id="savebutton" value="등록" />
  
<!--   	<p> -->
<!--     <input type="button" onclick="pasteHTML();" value="본문에 내용 넣기" /> -->
<!-- 		<input type="button" onclick="showHTML();" value="본문 내용 가져오기" /> -->
<!-- 		<input type="button" onclick="submitContents(this);" value="서버로 내용 전송" /> -->
<!-- 		<input type="button" onclick="setDefaultFont();" value="기본 폰트 지정하기 (궁서_24)" /> -->
<!-- 	</p> -->



<!-- 기업 점수 넣기 -->
<div class="starcontainer">
    <div class="average">
      <span class="text">평균 점수는</span><div class="score-average js-average"></div>
    </div>
    <div style='display:inline;min-width:400px;'>
    
      <!-- <div style='display:inline;float:left;width:150px' class="choice1">승진기회 및 가능성</div> -->
      <div id="promotion">승진기회 및 가능성</div>
      <div class="rating" data-index="score1" data-vote="0">
    
      <div class="star hidden">
        <span class="full"data-value="0"></span>
        <span class="half"data-value="0"></span>
      </div>
    
      <div class="star">
    
        <span class="full" data-value="1"></span>
        <span class="half" data-value="0.5"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="2"></span>
        <span class="half" data-value="1.5"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="3"></span>
        <span class="half" data-value="2.5"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="4"></span>
        <span class="half" data-value="3.5"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="5"></span>
        <span class="half" data-value="4.5"></span>
    
      </div>
    </div>

      <div style='display:inline;min-width:400px;'>
    
        <div id="welfare">복지 및 급여</div>
        <div class="rating" data-index="score2" data-vote="0">
    
      <div class="star hidden">
        <span class="full"data-value="0"></span>
        <span class="half"data-value="0"></span>
      </div>
    
      <div class="star">
    
        <span class="full" data-value="1"></span>
        <span class="half" data-value="0.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="2"></span>
        <span class="half" data-value="1.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="3"></span>
        <span class="half" data-value="2.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="4"></span>
        <span class="half" data-value="3.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="5"></span>
        <span class="half" data-value="4.5"></span>
        <span class="selected"></span>
    
      </div>
    
<!--       <div class="score"> -->
<!--         <span class="score-rating js-score" name="score2" value="">0</span> -->
<!--         <span>/</span> -->
<!--         <span class="total">5</span> -->
<!--       </div> -->
<!--     </div> -->
   </div>
    
      <div style='display:inline;min-width:400px;'>
    
      <div id="workAndLife">업무와 삶의 균형</div>
      <div class="rating" data-index="score3" data-vote="0">
    
      <div class="star hidden">
        <span class="full"data-value="0"></span>
        <span class="half"data-value="0"></span>
      </div>
    
      <div class="star">
    
        <span class="full" data-value="1"></span>
        <span class="half" data-value="0.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="2"></span>
        <span class="half" data-value="1.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="3"></span>
        <span class="half" data-value="2.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="4"></span>
        <span class="half" data-value="3.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
        <span class="full" data-value="5"></span>
        <span class="half" data-value="4.5"></span>
        <span class="selected"></span>
      </div>
    
      <!-- <div class="score">
        <span class="score-rating js-score">0</span>
        <span>/</span>
        <span class="total">5</span>
      </div> -->
    </div>
  </div>
        
      <div style='display:inline;min-width:400px;'>
    
      <div id="compCulture">사내문화</div>
      <div class="rating" data-index="score4"  data-vote="0">
    
      <div class="star hidden">
        <span class="full"data-value="0"></span>
        <span class="half"data-value="0"></span>
      </div>
    
      <div class="star">
    
        <span class="full" data-value="1"></span>
        <span class="half" data-value="0.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="2"></span>
        <span class="half" data-value="1.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="3"></span>
        <span class="half" data-value="2.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="4"></span>
        <span class="half" data-value="3.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="5"></span>
        <span class="half" data-value="4.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <!-- <div class="score">
        <span class="score-rating js-score">0</span>
        <span>/</span>
        <span class="total">5</span>
      </div> -->
    </div>
  </div>
        
  <div style='display:inline;min-width:400px;'>
    
      <div id="management">경영진</div>
      <div class="rating" data-index="score5" data-vote="0">
    
      <div class="star hidden">
        <span class="full"data-value="0"></span>
        <span class="half"data-value="0"></span>
      </div>
    
      <div class="star">
    
        <span class="full" data-value="1"></span>
        <span class="half" data-value="0.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="2"></span>
        <span class="half" data-value="1.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="3"></span>
        <span class="half" data-value="2.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="4"></span>
        <span class="half" data-value="3.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="5"></span>
        <span class="half" data-value="4.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <!-- <div class="score">
        <span class="score-rating js-score">0</span>
        <span>/</span>
        <span class="total">5</span>
      </div> -->
    </div>
  </div>
  
  
    </div>
  </div>
  
  </form>

<script type="text/javascript">
	 var oEditors = []; // 개발되어 있는 소스에 맞추느라, 전역변수로 사용하였지만, 지역변수로 사용해도 전혀 무관 함. 
		$(document).ready(function() {
	 
	 // Editor Setting 
	 nhn.husky.EZCreator.createInIFrame({ 
		oAppRef : oEditors, // 전역변수 명과 동일해야 함. 
	 	elPlaceHolder : "smarteditor", // 에디터가 그려질 textarea ID 값과 동일 해야 함. 
	 	sSkinURI : "/jobstory/resources/SE2/SmartEditor2Skin.html", // Editor HTML 
	 	fCreator : "createSEditor2", // SE2BasicCreator.js 메소드명이니 변경 금지 X 
	 	htParams : { 
		 		// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
	 			bUseToolbar : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
		 		bUseVerticalResizer : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
	 			bUseModeChanger : true, 
	 		} 
	 }); 
	 
	 // 전송버튼 클릭이벤트 
	 $("#savebutton").click(function(){ 
		 //if(confirm("저장하시겠습니까?")) { 
			 // id가 smarteditor인 textarea에 에디터에서 대입 
			 oEditors.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []); 
			 
			 // 이부분에 에디터 validation 검증 
			 if(validation()) {
				 $("#frm").submit(); 
				 } 
			 //}
		 })
	}); 
	// 필수값 Check
	function validation(){ 
		oEditors.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []); 
		
		var contents = $.trim(oEditors[0].getContents()); 
		if(contents === '<p>&bnsp;</p>' || contents === ''){ // 기본적으로 아무것도 입력하지 않아도 값이 입력되어 있음. 
			
			alert("내용을 입력하세요."); 
			oEditors.getById['smarteditor'].exec('FOCUS');
			return false;
		} 
		
		return true; 
}


// function pasteHTML() {
// 	var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
// 	oEditors.getById["ir1"].exec("PASTE_HTML", [sHTML]);
// }

// function showHTML() {
// 	var sHTML = oEditors.getById["ir1"].getIR();
// 	alert(sHTML);
// }
	
// function submitContents(elClickedObj) {
// 	oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
	
// 	// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
	
// 	try {
// 		elClickedObj.form.submit();
// 	} catch(e) {}
// }

// function setDefaultFont() {
// 	var sDefaultFont = '궁서';
// 	var nFontSize = 24;
// 	oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
// }
</script>

<!--기업 평가-->

<script>
var starClicked = false;

$(function() {
	
  $('.star').click(function() {

    // addClss는 ''사이의 클래스 값을 추가할수있음
    $(this).children('.selected').addClass('is-animated');
    $(this).children('.selected').addClass('pulse');

    var target = this;
	
    // 특정한 시간뒤에 함수를 딱 한번 실행시키기 
    // var id = setTimeout(콜백함수 ,밀리세컨드)
    setTimeout(function() {
      // removeClass
      $(target).children('.selected').removeClass('is-animated');
      $(target).children('.selected').removeClass('pulse');
    }, 1000);
	
    starClicked = true;
  })
  
  // 반개 별 클릭시 
  $('.half').click(function() {
    if (starClicked == true) {
      setHalfStarState(this)
    }
    // $(this)로 잡히는 상위 요소중 가장 근접한 하나를 반환한다 $(this).closest('.rating')
    // .text 값을 변경한다
    $(this).closest('.rating').find('.js-score').text($(this).data('value'));

    var test= $(this).closest('.rating').data('vote', $(this).data('value'));
   console.log(test)
    calculateAverage()
    console.log($(this).parent().parent().data('index'));
    console.log(parseInt($(this).data('value'))+0.5);
//     document.forms['frm']['id'].value = "$(this).parent().parent().data('index')";
	$("#score1").attr("value", parseInt($(this).data('value'))+0.5);

	$("#score2").attr("value", parseInt($(this).data('value'))+0.5);
	$("#score3").attr("value", parseInt($(this).data('value'))+0.5);
	$("#score4").attr("value", parseInt($(this).data('value'))+0.5);
	$("#score5").attr("value", parseInt($(this).data('value'))+0.5);
	
	var inputScore1 = $("#score1").val();
	var inputScore2 = $("#score2").val();
	var inputScore3 = $("#score3").val();
	var inputScore4 = $("#score4").val();
	var inputScore5 = $("#score5").val();
	
	
	console.log("score1의 input val : ", inputScore1);
	console.log("score2의 input val : ", inputScore2);
	console.log("score3의 input val : ", inputScore3);
	console.log("score4의 input val : ", inputScore4);
	console.log("score5의 input val : ", inputScore5);
  })
  // 별 한개 클릭시
  $('.full').click(function() {
    if (starClicked == true) {
      setFullStarState(this)
    }
    $(this).closest('.rating').find('.js-score').text($(this).data('value'));

    $(this).find('js-average').text(parseInt($(this).data('value')));

    $(this).closest('.rating').data('vote', $(this).data('value'));
    calculateAverage()
	console.log($(this).parent().parent().data('index'));
    console.log(parseInt($(this).data('value')));
    
    $("#score1").attr("value", parseInt($(this).data('value')));
    $("#score2").attr("value", parseInt($(this).data('value')));
    $("#score3").attr("value", parseInt($(this).data('value')));
    $("#score4").attr("value", parseInt($(this).data('value')));
    $("#score5").attr("value", parseInt($(this).data('value')));
    
	var inputScore1 = $("#score1").val();
	var inputScore2 = $("#score2").val();
	var inputScore3 = $("#score3").val();
	var inputScore4 = $("#score4").val();
	var inputScore5 = $("#score5").val();
	
	console.log("score1의 input val : ", inputScore1);
	console.log("score2의 input val : ", inputScore2);
	console.log("score3의 input val : ", inputScore3);
	console.log("score4의 input val : ", inputScore4);
	console.log("score5의 input val : ", inputScore5);
  })
	
  // 별에 마우스 올렸을때 변경
  $('.half').hover(function() {
    if (starClicked == false) {
      setHalfStarState(this)
    }

  })

  $('.full').hover(function() {
    if (starClicked == false) {
      setFullStarState(this)
    }
  })

})

// .prevAll 이전의 모든 요소에 addClass ('animate') 
// 색 변경 function
function updateStarState(target) {
  $(target).parent().prevAll().addClass('animate');
  $(target).parent().prevAll().children().addClass('star-colour');

  $(target).parent().nextAll().removeClass('animate');
  $(target).parent().nextAll().children().removeClass('star-colour');
}

function setHalfStarState(target) {
  $(target).addClass('star-colour');
  $(target).siblings('.full').removeClass('star-colour');
  updateStarState(target)
}

function setFullStarState(target) {
  $(target).addClass('star-colour');
  $(target).parent().addClass('animate');
  $(target).siblings('.half').addClass('star-colour');

  updateStarState(target)
}

// .rating Class 값을 가져와서 평균값 계산 뒤 1의자리 반올림 toFixed(1)
function calculateAverage() {
  var average = 0

  $('.rating').each(function() {
    average += $(this).data('vote')
  })

  $('.js-average').text((average/ $('.rating').length).toFixed(1))
}
</script>

<!-- 커뮤니티 게시판 사이드 메뉴 -->
<script>
    /* 사이드 메뉴 */
    $(".submenu").parent().prepend('<i class="entypo-down-open-big sf"></i>');

    $("#vert-nav .topmenu a").click( function() {
        var $menu = $(this).next(".submenu");
        $menu.slideToggle('slow');
        $menu.parent().toggleClass('openmenu');
    });

    $("input,textarea").focus( function() {
        $(this).prev("label").addClass('focused');
    }); 

    $("input,textarea").blur( function() {
        $(this).prev("label").removeClass('focused');
    });
</script>

</body>
</html>