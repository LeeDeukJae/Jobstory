﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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

    <!--부트스트랩-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.1/css/bulma.min.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <!--폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>

    <title>메인 페이지</title>
    <style>
      html {
            font-family: 'Noto Sans KR', sans-serif;
            /* background-color: white; */
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
      .sidebar {
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
        .sidebar .account-info2 {
          display: flex;
          justify-content: space-between;
          text-align: center;
          line-height: 0.1px;
        }
        .sidebar .account-info2 .eachpic {
          filter: grayscale(100);
        }
        .sidebar .account-info2 .eachpic:hover {
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

        /*마이페이지*/
        .column {
          position: relative;
          top: 100px;
          /* border: 1px solid black; */
        }
        .stat-val {
          font-size: 3em;
          padding-top: 20px;
          font-weight: bold;
        }

        .stat-key {
          font-size: 1.4em;
          font-weight: 200;
        }

        .section.myprofile-heading .column.is-2-tablet.has-text-centered + .has-text-centered {
          border-left: 1px dotted rgba(0, 0, 0, 0.2);
        }

        .container.myprofile {
          margin-top: -3%;
        }

        .control.is-pulled-left span.select {
          margin-right: 5px;
          border-radius: 2px;
        }

        .modal-card .content h1 {
          padding: 40px 10px 10px;
          border-bottom: 1px solid #dadada;
        }
        .myprofile-options {
          position: relative;
          /* border: 1px solid black; */
          top: 23px;
        }
        .container.myprofile .myprofile-options .tabs ul li.link a {
          margin-bottom: 20px;
          padding: 20px;
          background-color: rgb(79, 185, 159);
        }

        #listcontent {
          font-size: 15px;
        }

        .title {
           position: relative;
          /* border: 1px solid black; */
          color: rgb(79, 185, 159);
          font-weight: bold;
        }




        /* 나만의 달력 */
        /* not required */
        /* *,:active{
            outline: none;
        } */
        *{
            padding: 0px;
            margin: 0px;
        }

        body{
            /* margin: 20px; */
            /* background-color: #EEEDE9; */
            -webkit-font-smoothing: antialiased;
            text-rendering: optimizeLegibility;
            /* font-size: 96.5%; */
            font-family: Helvetica, Arial, sans-serif;
        }

        input{
            font-family: Helvetica, Arial, sans-serif;
        }

        /* h1, h2, h3, h4, h5, p{
            margin-bottom: 10px;
        } */

        /* p{
            line-height: 20px;
        } */

        a{
            text-decoration: none;
        }

        .clearfix{
            clear: both;
        }

        .animate{
            -webkit-transition: all 0.3s ease-in-out;
            -moz-transition: all 0.3s ease-in-out;
            transition: all 0.3s ease-in-out;
        }
        
         

       /* 나만의 달력  */
        .mainCalendar {
          /* position: absolute; */
          border-radius: 4px;
          overflow: hidden;
          width: 1130px;
          height: 445px;
          margin-left: 15.5%;
          /* margin-left: -400px; */
          margin-top: 40px;
          /* top: 659px; */
          background-color: #ffffff;
          color: #333333;
      }

        .mainCalendar h1, .mainCalendar h2{
            font-weight: 300;
            font-size: 26px;
            line-height: 28px;
            text-transform: uppercase;
            margin: 0px 0px 20px 0px;
        }

        .mainCalendar h1 span{
            display: block;
        }

        .mainCalendar .col{
            position: relative;
            float: left;
            height: 100%;
        }

        .mainCalendar .col .content{
            padding: 40px;
        }

        .mainCalendar ul{
            margin: 0px;
        }

        .mainCalendar ul li{
            list-style: none;
        }

        .mainCalendar .leftCol{
            width:40%;
            background-color: rgb(17, 47, 65);
        }

        .mainCalendar .noteList li{
            color: #ffffff;
            margin-bottom: 10px;
        }

        .mainCalendar .notes p,
        .mainCalendar .notes input,
        .mainCalendar .noteList li{
            font-weight: 300;
            font-size: 14px;
        }

        .mainCalendar .notes p{
            border-bottom: solid 1px rgba(255,255,255,0.4);
        }

        .mainCalendar .notes input{
            background-color: rgb(17, 47, 65);
            color: #ffffff;
            border: none;
            width: 200px;
        }

        .mainCalendar .addNote,
        .mainCalendar .removeNote{
            float: right;
            color: rgba(255,255,255,0.4);
            font-weight: bold;
            margin-left: 20px;
        }

        .mainCalendar .addNote:hover,
        .mainCalendar .removeNote:hover{
            color: #ffffff;
        }

        .mainCalendar .addNote{
            font-size: 16px;
        }

        .mainCalendar .leftCol h1{
            color: #ffffff;
            margin-bottom: 40px;
        }

        .mainCalendar .rightCol{
            width: 60%;
        }

        .mainCalendar .year{
            color: rgb(79, 185, 159);
            font-size: 25px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 70px;
            vertical-align: middle;
        }

        .mainCalendar .months,
        .mainCalendar .weekday,
        .mainCalendar .days li{
            float: left;
            text-transform: uppercase;
        }

        .mainCalendar .months,
        .mainCalendar .weekday,
        .mainCalendar .days li a{
            display: block;
            color: #747978;
        }

        .mainCalendar .months {
            font-size: 10px;
            color: #C7BEBE;
            text-align: center;
            width: 32px;
            margin-bottom: 10px;
        }
        
        /* 선택된 월 */
        .mainCalendar .months{
            font-weight: bold;
            color: #747978;
        }
        
        
        .mainCalendar .weekday {
            width: 55px;
            text-align: center;
            margin-bottom: 30px;
            font-size: 12px;
        }

        .mainCalendar .days li{
            width: 55px;
        }

        .mainCalendar .days li a{
            width: 36px;
            height: 24px;
            text-align: center;
            margin: auto auto;
            font-size: 12px;
            font-weight: bold;
            border-radius: 12px;
            margin-bottom: 10px;
            padding-top: 10px;
        }


        .mainCalendar .days li a:hover{
            background-color: #EEEDE9;
        }

        .mainCalendar .days li .selected{
            background-color: #F5A1A3!important;
            color: #ffffff;
        }

        .mainCalendar .days li .event{
            color: #F5A1A3;
        }


        /* placeholder color */
        ::-webkit-input-placeholder {color: #ffffff; }
        :-moz-placeholder {color: #ffffff; }
        ::-moz-placeholder {color: #ffffff; }
        :-ms-input-placeholder {color: #ffffff; }

        table, tr, td {
          border-collapse: collapse;
        }
        table{
            width: 100%;
            height: 400px;
            text-align: center;
            border: 1px solid rgb(6, 133, 135);
            margin-top:-40px;
        }
        th {
            border: 1px solid rgb(6, 133, 135);
        }
        tr {
            border: 1px solid rgb(6, 133, 135);
        }
        td {
            border: 1px solid rgb(6, 133, 135);
            width: 14.285%;
            text-align: left;
        }
        #lt {
            text-align: center;
            vertical-align: middle;
        }

        #calendar tr th{
            height : 7%;
        }
        table th {
          text-align: center;;
          vertical-align: top;
        }


        /* 탑 */
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
          padding: 10px 20px;
          color: white;
        }
        .topbar>li>a:hover {
          color: rgb(180, 180, 180);
          border-bottom-color: #ffffff;
        }
        .tabs a {
            -ms-flex-align: center;
            align-items: center;
            color: #ffffff;
        }
        .tabs a:hover {
            color: #ffffff;
            border-bottom-color: #ffffff;
        }
        .tabs li.is-active a {
            color: rgb(242, 177, 52);
            font-weight: bold;
            border-bottom: 1px solid #ffffff;
        } 
        .tabs a {
            border-bottom: 1px solid #ffffff;
        }


        body {
        font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen,Ubuntu,Cantarell,"Fira Sans","Droid Sans","Helvetica Neue",Helvetica,Arial,sans-serif;
      } 
        
      </style>
</head>
<body>
    <ul class="topbar">
        <li><a href="./main.html">JOB STORY</a></li>
        <!-- <li id="marketing" style="float: right;"><a href="#"><marquee>광고문의 : 010-8669-8797</marquee></a></li> -->
    </ul>
      <div>    
      <!-- <div ng-app='app' ng-controller='profile' class='sidebanner'></div> -->
      <!-- <div ng-app='app' ng-controller='profile' class='topbanner'></div> -->
      <!-- banner -->
      <div ng-app='app' ng-controller='profile' class='profile'>
          <section class='head'>                  
            <img src="./img/kakao/admin.jpg" class='userpic' alt="">
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
      <div ng-app='app' ng-controller='sidebar' class='sidebar'>
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
    <div class='columns' style=>
        <div class='container myprofile'>
          <div class='modal' id='edit-preferences-modal'>
            <div class='modal-background'></div>
            <div class='modal-card'>
              <header class='modal-card-head'>
                <p class='modal-card-title' >Edit Preferences</p>
                <button class='delete' ></button>
              </header>
              <section class='modal-card-body'>
                <label class='label'>Name</label>
                <p class='control'>
                  <input class='input' placeholder='Text input' type='text'>
                </p>
                <label class='label'>Username</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='pmillerk'>
                </p>
                <label class='label'>Email</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Email input' type='text' value='hello@'>
                  <i class='fa fa-warning'></i>
                  <span class='help is-danger'>This email is invalid</span>
                </p>
                <div class='control'>
                  <div class='control-label is-pulled-left'>
                    <label class='label'>Date of Birth</label>
                  </div>
                  <span>
                    <span class='select'>
                      <select>
                        <option>Month</option>
                        <option>With options</option>
                      </select>
                    </span>
                    <span class='select'>
                      <select>
                        <option>Day</option>
                        <option>With options</option>
                      </select>
                    </span>
                    <span class='select'>
                      <select>
                        <option>Year</option>
                        <option>With options</option>
                      </select>
                    </span>
                  </span>
                </div>
                <label class='label'>Description</label>
                <p class='control'>
                  <textarea class='textarea' placeholder='Describe Yourself!'></textarea>
                </p>
                <div class='content'>
                  <h1>Optional Information</h1>
                </div>
                <label class='label'>Phone Number</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='+1 *** *** 0535'>
                </p>
                <label class='label'>Work</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='Greater Washington Publishing'>
                </p>
                <label class='label'>School</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='George Mason University'>
                </p>
              </section>
              <footer class='modal-card-foot'>
                <a class='button is-primary modal-save'>Save changes</a>
                <a class='button modal-cancel'>Cancel</a>
              </footer>
            </div>
          </div>
          <div class='section myprofile-heading'>
            <div class='columns is-mobile is-multiline'>
              <div class='column is-2' >
                <span class='header-icon user-myprofile-image'>
                  <img alt='' src='admin.jpg'  style="border: 2px solid rgb(6,133,135); border-radius: 10%; height:166.656px;width: 166.656px" >
                </span>
              </div>
              <div class='column is-4-tablet is-10-mobile name' style="margin-top: 5%;margin-left: -5px;">
                <p>
                  <span class='title is-bold' style="color: rgb(17,47,65);margin-top: 20px;">나원석</span>
                  <br>
                  <a class='button is-primary is-outlined' href='#' id='edit-preferences' style="margin: 14% 0;">
                    회원 정보 수정
                  </a>
                  <br>
                </p>
                <p class='tagline'>
                  <!-- The users myprofile bio would go here, of course. It could be two lines or more or whatever. We should probably limit the amount of characters to ~500 at most though. -->
                </p>
              </div>
              <div class='column is-2-tablet is-4-mobile has-text-centered'>
                <p class='stat-val'>30</p>
                <p class='stat-key'>좋아요</p>
              </div>
              <div class='column is-2-tablet is-4-mobile has-text-centered'>
                <p class='stat-val'>10</p>
                <p class='stat-key'>싫어요</p>
              </div>
              <div class='column is-2-tablet is-4-mobile has-text-centered'>
                <p class='stat-val'>3</p>
                <p class='stat-key'>지원 현황</p>
              </div>
            </div>
          </div>
          <div class='myprofile-options is-fullwidth'>
              <div class='tabs is-fullwidth is-medium'>
                <ul>
                  <li class='link'>
                    <a href="./mypage_user_Resume.html">
                      <span class='icon'>
                        <i class='fa fa-thumbs-up'></i>
                      </span>
                      <span>이력서 관리</span>
                    </a>
                  </li>
                  <li class='link'>
                    <a href="./mypage_user_support.html">
                      <span class='icon'>
                        <i class='fa fa-thumbs-up'></i>
                      </span>
                      <span>입사지원 리스트</span>
                    </a>
                  </li>
                  <li class='link'>
                    <a href="./mypage_user_scrab.html">
                      <span class='icon'>
                        <i class='fa fa-thumbs-up'></i>
                      </span>
                      <span>스크랩한 공고</span>
                    </a>
                  </li>
                  <li class='link is-active'>
                    <a href="./mypage_user_calendar.html">
                      <span class='icon'>
                        <i class='fa fa-search'></i>
                      </span>
                      <span>나만의 공채달력</span>
                    </a>
                  </li>
  
                </ul>
              </div>
            </div>

      </div>
    </div>

     <!--넣을 세부 UI 영역-->
    <form action ="write.do" method="post" id="frm">	
		<div class="mainCalendar">

        <div class="col leftCol">
          <div class="content">
            <h1 class="date">
            <span id="dateYMD"></span>
            </h1>
            <div class="notes">
              <p>
                <input type="text" id="content" name="content" placeholder="new note"/>
                <input type="button" id="saveContent" value="+" title="Add note" class="addNote animate">
<!--                 <a href="#" title="Add note" class="addNote animate">+</a> -->
              </p>
<!--               <ul class="noteList"> -->
<!--                 <li>Headbutt a lion<a href="#" title="Remove note" class="removeNote animate">x</a></li> -->
<!--               </ul> -->
            </div>
            <div class="saveContent">
            	${list.content}
            </div>
          </div>
        </div>
   </form>
   
        <div class="col rightCol">
          <div class="content">
                      <table id="calendar" >
                              <tr ><!-- label은 마우스로 클릭을 편하게 해줌 -->
                                  <td id="lt" ><label onclick="prevCalendar()"><span class="glyphicon glyphicon-backward" aria-hidden="true"></span></label></td>
                                  <td text-align="center" class="year" id="tbCalendarYM" colspan="5">
                                  yyyy년 m월</td>
                                  <td id="lt"><label onclick="nextCalendar()"><span class="glyphicon glyphicon-forward" aria-hidden="true"></span>
                                  </label></td>
                              </tr>
                              <tr>
                                  <th><font color ="#F79DC2"></font>일</th>
                                  <th>월</th>
                                  <th>화</th>
                                  <th>수</th>
                                  <th>목</th>
                                  <th>금</th>
                                  <th><font color ="skyblue"></font>토</th>
                              </tr>
                      </table>
                      <a href = ></a>
                      
            <!-- <div class="clearfix"></div>
            <div class="clearfix"></div>
            <div class="clearfix"></div> -->
          </div>
        </div>
  
        <div class="clearfix"></div>
  
          </div>

    <script type="text/javascript">
      var today = new Date();//오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
      var date = new Date();//today의 Date를 세어주는 역할
      function prevCalendar() {//이전 달
      // 이전 달을 today에 값을 저장하고 달력에 today를 넣어줌
      //today.getFullYear() 현재 년도
      //today.getMonth() 월 
      //today.getDate() 일 
      //getMonth()는 현재 달을 받아 오므로 이전달을 출력하려면 -1을 해줘야함
          today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
          buildCalendar(); //달력 cell 만들어 출력 
      }
  
      function nextCalendar() {//다음 달
          // 다음 달을 today에 값을 저장하고 달력에 today 넣어줌
          //today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
          //getMonth()는 현재 달을 받아 오므로 다음달을 출력하려면 +1을 해줘야함
              today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
              buildCalendar();//달력 cell 만들어 출력
      }
      function buildCalendar(){//현재 달 달력 만들기
          var doMonth = new Date(today.getFullYear(),today.getMonth(),1);
          //이번 달의 첫째 날,
          //new를 쓰는 이유 : new를 쓰면 이번달의 로컬 월을 정확하게 받아온다.     
          //new를 쓰지 않았을때 이번달을 받아오려면 +1을 해줘야한다. 
          //왜냐면 getMonth()는 0~11을 반환하기 때문
          var lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);
          //이번 달의 마지막 날
          //new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
          //day를 1부터 시작하는게 아니라 0부터 시작하기 때문에 
          //대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일을 가져오게 된다.
          var tbCalendar = document.getElementById("calendar");
          //날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
          var tbCalendarYM = document.getElementById("tbCalendarYM");
          //테이블에 정확한 날짜 찍는 변수
          //innerHTML : js 언어를 HTML의 권장 표준 언어로 바꾼다
          //new를 찍지 않아서 month는 +1을 더해줘야 한다. 
          tbCalendarYM.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월"; 
  
              /*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
          while (tbCalendar.rows.length > 2) {
          //열을 지워줌
          //기본 열 크기는 body 부분에서 2로 고정되어 있다.
                  tbCalendar.deleteRow(tbCalendar.rows.length-1);
              //테이블의 tr 갯수 만큼의 열 묶음은 -1칸 해줘야지
              //30일 이후로 담을달에 순서대로 열이 계속 이어진다.
              }
              var row = null;
              row = tbCalendar.insertRow();
              //테이블에 새로운 열 삽입//즉, 초기화
              var cnt = 0;// count, 셀의 갯수를 세어주는 역할
          // 1일이 시작되는 칸을 맞추어 줌
              for (i=0; i<doMonth.getDay(); i++) {
              /*이번달의 day만큼 돌림*/
                  cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
                  cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
              }
          /*달력 출력*/
              for (let i=1; i<=lastDate.getDate(); i++) { 
              //1일부터 마지막 일까지 돌림
                  cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
              if (i>0 && i<10){
                    i="0"+i
                  }
                  cell.innerHTML = i;//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
                  cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게는 해주 역할
                  cell.setAttribute("data-val", date.getFullYear() + "" + date.getMonth() + "" + i);
              if (cnt % 7 == 1) {/*일요일 계산*/
                  //1주일이 7일 이므로 일요일 구하기
                  //월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
                  cell.innerHTML = "<font color=#F79DC2>" + i
                  //1번째의 cell에만 색칠
              }   
              if (cnt%7 == 0){/* 1주일이 7일 이므로 토요일 구하기*/
                  //월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
                  cell.innerHTML = "<font color=skyblue>" + i
                  //7번째의 cell에만 색칠
                  row = calendar.insertRow();
                  //토요일 다음에 올 셀을 추가
              }
              /*오늘의 날짜에 노란색 칠하기*/
              if (today.getFullYear() == date.getFullYear()
                  && today.getMonth() == date.getMonth()
                  && i == date.getDate()) {
                  //달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
              cell.bgColor = "#FAF58C";//셀의 배경색을 노랑으로 
              
              // cell.setAttribute("data-val", date.getFullYear() + "" + date.getMonth() + "" + date.getDate());
              }
          }
      }
  </script>
  <script language="javascript" type="text/javascript">
      // 날짜 생성하면서 data-val 속성 추가
      buildCalendar();

      // data-val 속성이 있는 것들을 찾는다.
      // 찾은 집합체에 클릭 이벤트 설정
      // 클릭 이벤트 처리 함수에서 Ajax 호출하기
      // Ajax 호출 결과를 받아서 왼쪽 부분 변경
     console.log($("td[data-val]"));
     $("td[data-val]").click(function(){
       
       alert($(this).data("val")); 
       
       var str = $(this).data("val");
       str = str.toString();
       console.log(str);
       var res1 = str.substring(0, 4);
       console.log(res1);
       var res2 = str.substring(4, 6);
       console.log(res2);
       var res3 = str.substring(6, 8);
       console.log(res3);
		
       $("#dateYMD").empty();
       $("#dateYMD").append(res1 + '년');
       $("#dateYMD").append(res2 + '월');
       $("#dateYMD").append(res3 + '일');
//        $("h1.date").prepend($(this).data("val"));
     })
     
     // insertMemo
     $("#saveContent").click(function(){
    	$("#frm").submit();
     });
     

//      $(function () {
//          getAjaxList()
//      })
//      function getAjaxDetail(val){
//          // XMLHttpRequest 객체 얻기
//     	 var xhr = new XMLHttpRequest()
//          // 비동기 방식으로 서버의 결과를 받음
//          xhr.onreadystatechange = function () {
//         	 // 서버 응답 완료시
//              if (xhr.readyState == 4) {
//                  if (xhr.status == 200) {
//                 	// xhr.responseText 응답된 결과
//                      var content = JSON.parse(xhr.responseText)
//                      $("")
//                  }
//              }
//          }
        
//      }

  </script>


    <script>

      

      $(() => {
        $('#edit-preferences').click(function(){
        $('#edit-preferences-modal').addClass('is-active');
        });
        $('.modal-card-head button.delete, .modal-save, .modal-cancel').click(function(){
          $('#edit-preferences-modal').removeClass('is-active');
        });
      });

      $(".link").click(function () {
        $(this).addClass('is-active');
        $(this).siblings().removeClass('is-active');
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
        });        
    </script>
</body>
</html>