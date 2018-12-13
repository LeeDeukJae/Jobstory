<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
   
    <c:import url="/common/mainLogout.jsp" />
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


		/* 리스트 위치 설정 */
		.list{
			position :relative;
			top : -100px;
			left : 300px;
		}	
		
	 	.list li {
			  border-bottom: 1px solid #ccc;
			  display: table;
			  border-collapse: collapse;
			  width: 60%;
			  margin-top: 10px;
			
			}
		.inner {
		  /* display: table-row; */
		  overflow: hidden;
		}
		.li-img {
		  display: table-cell;
		  vertical-align: middle;
		  height:90px;
		}
		.li-img img {
		  display: block;
		  width: 200px;
		  height: 140px;
		}
		.li-text {
		  display: table-cell;
		  padding-top: 10px;
		  padding-left: 1em;
		  padding-right: 1em;
		}
		.li-head {
		  margin: 0;
		}
		.li-summary {
		  display: none;
		  margin: 0;
		}
		a{
		    text-decoration: none;
		}
		
		@media screen and (min-width: 10em
		) {
		  .list li {
		    background: none;
		  }
		  .li-summary {
		    display: block;
		  }
		}
		p{
		    display: inline;
		}
		.dd , #tete{
		    pointer-events: none;
		}
		#viewicon{
		    width:10px;
		    height: 10px;
		    opacity: 0.5;
		}
		.li-score { 
		    float: left;
		    height: 100px;
		    width: 140px;
		    background-color: orange;
		    border-radius: 8px;
		    font-size: 3em;
		    text-align: center;
		    line-height: 100px;
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
      </style>
</head>
<body>
    

   
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
    
    
   <!--Pattern HTML-->
   <div id="pattern" class="pattern">
      <ul class="list">
   	<c:forEach var="comreview" items="${list}">
            <li>
                <a href='detail.do?no=${comreview.no}' class="inner">
                    <div class="li-score">
                        3.5
                    </div>
                    <div class="li-text">
                        <h2 class="li-head">${comreview.title}</h2>
                        <p class="li-summary">회사명</p>
                      	<p class="li-writer">이득재</p>
                          <p class="dd"><img src="../../img/view.png" id="viewicon">${comreview.viewCnt}</p>
                            <p class="dd">날짜: 2018-11-19</p>
                       </div>
                  </a>
            </li>
            </c:forEach>






    <div class="assessment">
        <div>
<!--             <a href="#"> -->
<!--                 <span class='eachpic'><img src="./side/chat.png" width="80%" style="border-radius: 10%;"></span>             -->
<!--             </a>  -->
        </div>
        <br>
        <button id="compWrite"><a href='../review/writeForm.do'>기업평가 작성</a></button>
    </div>
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
        
       
    </script>

</body>
</html>