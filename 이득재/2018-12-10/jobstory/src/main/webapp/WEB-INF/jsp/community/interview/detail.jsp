<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
    <!--폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>

    <title>면접 후기 게시판</title>
    <style>
        body{
            font-family: 'Noto Sans KR', sans-serif;

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
	border-radius: 20px;
	width: 900px;
	height: 50px;
	left: 400px;
	top: 380px;
}

/* 작성된 댓글 */
#createdCmt {

	border-radius: 20px;
	width: 900px;
	height: 50px;
	top: 180px;
}

/* 수정, 삭제 버튼*/


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
#upndel {
	margin:11px;

}






        body{
            background-color: rgb(243, 245, 247);
           
        }
        #toptitle, #contents{
            background-color: white;
            border: 1px solid gray;
            padding: 10px;
           

        }
        #contents{
            font-size: 17px;
            white-space: pre-line;
        }
        h1{
            text-align: left;
            color: rgb(79, 185, 159);
        }
        #viewicon{
    width:10px;
    height: 10px;
    opacity: 0.5;
}
#toptitle{
  border-radius: 15px;
}
#toptitle > h1{
  text-align: center;
}
  #container{
    max-width: 1250px;
    padding-top: 110px;
    padding-left: 20%;
    text-align: center;
  }
  #detailcn{
    font-size: 17px;
  }

#contentside{
max-height: 50px;

}
#commentReg{
  text-align: center;
}

#siren{
  text-align: right;
  /* display: inline; */
}
#sirenicon,#likeicon{
  width: 20px;
  height: 20px;
}

hr{

  border: 0.3px solid gray;
}
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
   


    <div id="container">
        <div id="toptitle">
            <h1>${board.title}</h1>
           <div id="detailcn"> 
             
             <div>
                   <p>
                   <span> 작성자: ${board.writer} &nbsp;</span>
                   <span> 작성일:<fmt:formatDate value="${board.regDate}"
						pattern="yyyy-MM-dd" />&nbsp;</span>
                   <span> 난이도 : <c:if test="${board.level==1}">
								쉬움
								</c:if>
								
								<c:if test="${board.level==2}">
								보통
								</c:if>
								
								<c:if test="${board.level==3}">
								어려움
								</c:if>&nbsp;
					</span>
                  </p>
               
              </div>        
 
        </div>
        <hr>
        <div id="contents">
      
          <p>
           ${board.content}
            
            
             
       

            <div id="contentside">
                    <span>조회수:${board.viewCnt} </span> 
                    <span id="rc">추천수: 152 </span> 
                    <span id="rc">
                    	면접시기:<c:if test="${board.applyDate==1}"> 상반기
								</c:if>
											<c:if test="${board.applyDate==2}"> 하반기
								</c:if></span> 
            </div>
                                  <div id="siren">
                                    <button><img src="../img/like.png" id="likeicon">추천</button>
                                    <button><img src="../img/siren.JPG"id="sirenicon"/>신고</button>
                                    
                                  </div>
                                  
        </div>
					<button class="btn btn-default rec"></button>


    </div>
    <div>
    <span id="updatebutton"><button>수정</button></span>
    <span id="deletebutton"> <a href='delete.do?no=${board.boardNo}'>삭제</a></span>
    </div>
    <hr>

    <div id="commentReg">
		<form id="commentAjax" action="insertComment.do" method="post">
			<textarea id="comment" name="content" style="top: 53px;"></textarea>
			<button type="button" id="regComment" class="modify" style="top: 83px; left: 300px">등록</button>
        </form>
        <div class="tt"></div>
    </div>

    <script>
        // 버튼에 click 이벤트를 설정한다.
        // click 시 id가 msg인 input 창에 입력된 value 값을 
        // div 태그의 innerText로 설정합니다.
        $("#regComment").click(function () {
            $(".tt").text( $("#comment").val() )
        })
    </script>





    
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
    
    
    
    <!-- 추천파트 -->
    <script>
    $(".rec").click(function(){
		var rUrl = "insertrecom";
		if (recExist == 1) {
			rUrl = "deleterecom";
		}
		$.ajax({
			url : '/jobstory/community/' + rUrl + '.do',
			data : {"no":numb, "id":nickname}
		}).done(function(){
			if (recExist == 0){
				alert("추천되었습니다.");
				recExist = 1;
				$(".rec").html("추천<span class='glyphicon glyphicon-heart' aria-hidden='true'></span>");
			} else {
				alert("추천이 취소되었습니다.")
				recExist = 0;
				$(".rec").html("추천<span class='glyphicon glyphicon-heart-empty' aria-hidden='true'></span>");
			}
			recnumber();
		});
		
	});
	
	function recnumber(){			
		$.ajax({
			url:"/cocain/board/qna/recomCount.do",
			data : "no="+numb
		}).done(function(result){
			$("#rc").html("추천 "+result);
		})
	};
	recnumber();	
    
    
    </script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>