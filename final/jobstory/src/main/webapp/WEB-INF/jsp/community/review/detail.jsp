<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <!--부트스트랩-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
   
    <!--기업평가-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css"></script>


    <!--폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>

    <title>메인 페이지</title>
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



#comment {
  position: relative;
	border-radius: 20px;
	width: 800px;
	height: 50px;
	left: 50px;
	top: 380px;
}

/* 작성된 댓글 */
#createdCmt {

	border-radius: 20px;
	width: 900px;
	height: 50px;
	top: 180px;
}


.commentList {
	border-radius: 20px;
	top: 700px;
	left: 0px;
	width: 900px;
	text-align: center;
}

#insertCmt {
	border: 0px solid white;
	border-radius: 10px;
	background-color: #e5fff3;
	width: 100px;
	height: 30px;
	font-weight: bold;
}

/*댓글 작성 내용 */
#cmtCon {
	width: 70%;
	border-radius: 20px;
}
/*댓글 작성자 아이디 */
#cmtId {
	width: 10%;
	border-radius: 20px;
}

/*댓글 작성 버튼 */
#commentUpdate, #commentDelete {
	border: 0px solid white;
	border-radius: 10px;
	background-color: #e5fff3;
	font-weight: bold;
	width: 60px;
	height: 25px;
    font-size: 12px;
}

/*작성된 댓글 내용 */
#cmtListCon{
    border-radius: 20px;
    width: 70%;   
}

#content {
	width:910px;
}

html {
	background-color: #fcfcfc;
}

body {
	background-color: #fcfcfc;
}

#content{
	text-align: center; 
}

#newComment{
    border-radius: 20px;
    border: 1px solid #aaa;
    width: 900px;
    height: 50px;
    left: 400px;
}
#commentP{
	font-weight: bold;
	color: blue;
	margin-left: 10px;
	float: left;
}

#commentC{
	margin:14px;
	
}

/* #commentReg{ */
/*   position: relative; */
/*   top: -170px; */
/* } */

#upndel {
	margin:11px;

}






        body{
            background-color: rgb(243, 245, 247);
            text-align: center;
        }
        #toptitle, #contents{
            background-color: white;
            border: 1px solid gray;
            

        }
        #contents{
            position: relative;
            top: -230px;
            font-size: 17px;
            white-space: pre-line;
            height: 350px;
            text-align: center;
            overflow: scroll;
        }

        h1{
            text-align: left;
        }
        #viewicon{
          width:10px;
          height: 10px;
          opacity: 0.5;
        }
        #toptitle{
          position: relative;
          padding-left: 25%;
          top: -220px;
          
        }
        #detailcn{
          padding-left: 70px;
        }

        #container{
          max-width: 1250px;
          padding-top: 110px;
          padding-left: 20%;
          text-align: center;
        }




/* 기업 평가 */


.rating {
  text-align: center;
  margin-top: -15px;
  position: relative;
  width: 400px;
  height: 42px;
  float: left;
 
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
  display : none;
  font-family: arial;
  font-size: 15px;
  color: rgb(237, 85, 59);
  margin-top: 20px;
  margin-left: 20px;
}

.score-rating {
  vertical-align: sup;
  /* top: -5px; */
  position: relative;
  font-size: 150%;
}

.total {
  /* vertical-align: sub; */
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
  top: -45px;
  left: 195px;
  transform: translate(-50%, -50%);
  text-align: center;
}
.average .score-average {
  font-weight: bold;
  padding-top: 5px;
}

/* #ir1 {
  position: relative;
  left: 900px;
  border: 3px solid black;
} */

.starcontainer {
  /* border: 1px solid black; */
  position: absolute;
  width: 400px;
  top : 300px;
  left: 315px;
}




	/* 수정 삭제 버튼 */
	.reviewDelete{
	  text-align: center;
	  position: relative;
	  top: 200px;
	  left :-75px;
	}
	
	.reviewUpdate{
	  text-align: center;
	  position: relative;
	  top: 200px;
	  left : -77px;
	}
	
	.reviewList{
	  text-align: center;
	  position: relative;
	  top: 200px;
	  left : -79px;
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
  /* border: 2px solid black; */
  position: relative;
  width: 280px;
  top: 150px;
}

/*  	#commentAjax{  */
/*  		position: relative; */
/* 		top : 500px; */
/*  	}  */


   </style>
</head>
<body>
    <!--사이드 정보 배너-->
    <div ng-app='app' ng-controller='profile' class='sidebanner2'></div>

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
            <img src="./ironman.jpg" class='userpic' alt="">
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
                  <span class='eachpic'><img src="./side/cal.png" width="80%" style="border-radius: 10%;"></span>            
                </a>                
                <p id="menutext">내 공채달력</p>
              </div>
              <div>                
                <a href="#">
                  <span class='eachpic'><img src="./side/calcul.jpg" width="80%" style="border-radius: 10%;"></span>            
                </a>
                <p id="menutext">연봉 계산기</p> 
                <p id="menutext">퇴직금 계산기</p> 
              </div>               
            </section>
            <br>       
            <section class='account-info2'>
              <div>                
                <a href="#">
                  <span class='eachpic'><img src="./side/리뷰.jpg" width="80%" style="border-radius: 10%;"></span>            
                </a>
                <p id="menutext">합격 후기</p>             
              </div>
              <div>                
                <a href="#">
                  <span class='eachpic'><img src="./side/자소서.png" width="80%" style="border-radius: 10%;"></span>            
                </a>
                <p id="menutext">자소서 첨삭</p> 
              </div>                               
          </section>        
      </div>
    </div>
    <!--팀원들 적용 에어리어-->

    <!-- 게시판 사이드바 -->
    <div class="wrap">
        <section id="vert-nav">
        <h3>커뮤니티</h3>
        <nav role='navigation'>
        <ul class="topmenu">
          <li><a href="<c:url value="/cu/review/list.do"/>"><i class="entypo-brush"></i>자소서 첨삭</a></li>
          <li><a href="<c:url value="/cu/review/list.do"/>"><i class="entypo-user"></i>면접 후기</a></li>
          <li><a href="<c:url value="/cu/review/list.do"/>"><i class="entypo-vcard"></i>기업 평가</a></li>
        </ul>
        </nav>
        </section>
    </div>

    <!-- 기업 점수 넣기 -->
    <div class="starcontainer">
      <div class="average">
        <span class="text">평균 점수는</span><div class="score-average js-average"></div>
      </div>
      <div style='position : relative; display:inline;min-width:400px;'>
      </div>
      
        <!-- <div style='display:inline;float:left;width:150px' class="choice1">승진기회 및 가능성</div> -->
        <p>승진기회 및 가능성</p>
        <div class="rating" data-vote="0">

	<c:set var = "eval" value="${comreview.score1}"/>
      <c:forEach var="i" begin="10" end="50" step="10">
       <div class="star">
       <c:choose>
    <c:when test="${eval >= i}">
        <span class="full star-colour" ></span>
        <span class="half star-colour" ></span>
  
    </c:when>    
    
    <c:otherwise>
        <span class="full" ></span>
        <c:if test="${eval - i == -5}">
        	<span class="half star-colour" ></span>
    	</c:if> 
    	<c:if test="${eval - i != -5}">
        	<span class="half" ></span>
    	</c:if>  
    </c:otherwise>   
    </c:choose>
<!--         <span class="selected"></span> -->
    
      </div>
    </c:forEach>
      


<!--         <div style='display:inline;min-width:400px;'> -->
      
   <p>복지 및 급여</p>
   <div class="rating" data-vote="0">
      
	<c:set var = "eval" value="${comreview.score2}"/>
      <c:forEach var="i" begin="10" end="50" step="10">
       <div class="star">
       <c:choose>
    <c:when test="${eval >= i}">
        <span class="full star-colour" ></span>
        <span class="half star-colour" ></span>
  
    </c:when>    
    
    <c:otherwise>
        <span class="full" ></span>
        <c:if test="${eval - i == -5}">
        	<span class="half star-colour" ></span>
    	</c:if> 
    	<c:if test="${eval - i != -5}">
        	<span class="half" ></span>
    	</c:if>  
    </c:otherwise>   
    </c:choose>
<!--         <span class="selected"></span> -->
    
      </div>
    </c:forEach>

   </div>
      
   <p>업무와 삶의 균형</p>
   <div class="rating" data-vote="0">
      
	<c:set var = "eval" value="${comreview.score3}"/>
      <c:forEach var="i" begin="10" end="50" step="10">
       <div class="star">
       <c:choose>
    <c:when test="${eval >= i}">
        <span class="full star-colour" ></span>
        <span class="half star-colour" ></span>
  
    </c:when>    
    
    <c:otherwise>
        <span class="full" ></span>
        <c:if test="${eval - i == -5}">
        	<span class="half star-colour" ></span>
    	</c:if> 
    	<c:if test="${eval - i != -5}">
        	<span class="half" ></span>
    	</c:if>  
    </c:otherwise>   
    </c:choose>
<!--         <span class="selected"></span> -->
    
      </div>
    </c:forEach>
   </div>
          
      
        <p>사내문화</p>
        <div class="rating" data-vote="0">
      
	<c:set var = "eval" value="${comreview.score4}"/>
      <c:forEach var="i" begin="10" end="50" step="10">
       <div class="star">
       <c:choose>
    <c:when test="${eval >= i}">
        <span class="full star-colour" ></span>
        <span class="half star-colour" ></span>
  
    </c:when>    
    
    <c:otherwise>
        <span class="full" ></span>
        <c:if test="${eval - i == -5}">
        	<span class="half star-colour" ></span>
    	</c:if> 
    	<c:if test="${eval - i != -5}">
        	<span class="half" ></span>
    	</c:if>  
    </c:otherwise>   
    </c:choose>
    
      </div>
    </c:forEach>
   </div>
                
        <p>경영진</pv>
        <div class="rating" data-vote="0">

	<c:set var = "eval" value="${comreview.score5}"/>
      <c:forEach var="i" begin="10" end="50" step="10">
       <div class="star">
       <c:choose>
    <c:when test="${eval >= i}">
        <span class="full star-colour" ></span>
        <span class="half star-colour" ></span>
  
    </c:when>    
    
    <c:otherwise>
        <span class="full" ></span>
        <c:if test="${eval - i == -5}">
        	<span class="half star-colour" ></span>
    	</c:if> 
    	<c:if test="${eval - i != -5}">
        	<span class="half" ></span>
    	</c:if>  
    </c:otherwise>   
    </c:choose>
<!--         <span class="selected"></span> -->
    
      </div>
    </c:forEach>

    </div>
   </div>
            <div style="position:absolute;width:100%;
            height:130%;left: 0px;top: 0px;z-index: 500;">
      </div>
    </div> <!-- 평균점수 div 종료 -->




<div id="container">
  <div id="toptitle">
      <h1>${comreview.title}</h1>
     <div id="detailcn"> 
       
       <table>
         <tr>
           <p>
             <td><img src="../../img/view.png" id="viewicon">${comreview.viewCnt}</td>
             <td> 추천수: 152 </td>
             <td> 작성일: 2018-11-19 </td>
            </p>
          </tr>
        </table>        
      </div>
  </div>
  <hr>
  <div style='display:inline;min-width:1250px;'>
  
  <div id="contents" style='display:inline;float:right;width:520px;height: 425px;'>
	${comreview.content}  
  </div>
  
	<form action="delete.do" method="post" id="del">
 	<input type ="hidden" 
	  		 value=${comreview.no}
	  		 name="no"
	  		 class="reviewDelete">
	<button class="reviewDelete">삭제</button>
	</form>
	  <input type="button" class="reviewUpdate" value="수정">
	  <input type="button" class="reviewList" value="목록">
	  
  </div>
  
</div>
    
<hr>


    <script>
        /* 스크랩 기능 */
        $(".list-container > table > tbody > tr > td:nth-child(1) > img").click(function () {
            var scrapFlag = $(this).attr("flag-data");
            if(scrapFlag == "true"){
                alert("취소");
                $(this).attr("src", "./img/noun_Star_2044877-02.png")
                       .attr("flag-data", "false");
            } else {
                alert("스크랩");
                $(this).attr("src", "./img/noun_Star_2044877-03.png")
                       .attr("flag-data", "true");
            }
        })
        
        /* 스크롤 이동 */
        // $("#goTop").click(function (e) {
        //     e.preventDefault();
        //     $("html, body").animate({scrollTop:0}, 400);
        // });
        // $("#goBottom").click(function (e) {
        //     e.preventDefault();
        //     var scrollPosition = $(".pagination").offset().top;
        //     $("html, body").animate({scrollTop:scrollPosition}, 400);
        // });
    </script>



<!--기업 평가-->

<script>
var starClicked = false;

$(function() {
	$(".rating").find(".star").find("span")text(4);

    //$(this).closest('.rating').data('vote', 4);
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

    $(this).closest('.rating').data('vote', $(this).data('value'));
    calculateAverage()
    console.log(parseInt($(this).data('value')));

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

    console.log(parseInt($(this).data('value')));
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


    
  <!-- Code injected by live-server -->
<script type="text/javascript">
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					head.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					head.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
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