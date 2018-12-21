<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <!--부트스트랩-->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
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
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>   
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>  
    
    <!-- wait me -->
    <link rel="stylesheet" href='<c:url value="/css/waitMe.css" />'>
	<script src='<c:url value="/js/waitMe.js" />'></script>

    <title>메인 페이지</title>
    <script>
if("${user.authority}"!=2||"${user}"==null){
	location.href='<c:url value="/main/main.do"/>'
}
</script> 
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

        
        *,
        *:before,
        *:after {
            box-sizing: border-box;
        }
        body {
            padding: 1em;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 15px;
            color: #b9b9b9;
            background-color: #e3e3e3;
        }
        h4 {
            color: rgb(79, 185, 159);
        }
        input,
        input[type="radio"] + label,
        input[type="checkbox"] + label:before,
        select option,
        select {
            width: 100%;
            padding: 1em;
            line-height: 1.4;
            background-color: #f9f9f9;
            border: 1px solid #e5e5e5;
            border-radius: 3px;
            -webkit-transition: 0.35s ease-in-out;
            -moz-transition: 0.35s ease-in-out;
            -o-transition: 0.35s ease-in-out;
            transition: 0.35s ease-in-out;
            transition: all 0.35s ease-in-out;
        }
        input:focus {
            outline: 0;
            border-color: rgb(79, 185, 159);
        }
        input:focus + .input-icon i {
            color: rgb(0, 199, 199);
        }
        input:focus + .input-icon:after {
            border-right-color: rgb(79, 185, 159);
        }
        input[type="radio"] {
            display: none;
        }
        input[type="radio"] + label,
        select {
            display: inline-block;
            width: 50%;
            text-align: center;
            float: left;
            border-radius: 0;
        }
        #job-status > input[type="radio"] + label,
        select {
            display: inline-block;
            width: 33.33333%;
            text-align: center;
            float: left;
            border-radius: 0;
        }
        select.select-half {
            width: 50%;
        }
        select.select-all {
            width: 100%;
            padding-top:0px;
            padding-bottom:0px;
        }

        input[type="radio"] + label:first-of-type {
            border-top-left-radius: 3px;
            border-bottom-left-radius: 3px;
        }
        input[type="radio"] + label:last-of-type {
            border-top-right-radius: 3px;
            border-bottom-right-radius: 3px;
        }
        input[type="radio"] + label i {
            padding-right: 0.4em;
        }
        input[type="radio"]:checked + label,
        input:checked + label:before,
        select:focus,
        select:active {
            background-color: rgb(79, 185, 159);
            color: #fff;
            border-color: rgb(79, 185, 159);
        }
        input[type="checkbox"] {
            display: none;
        }
        input[type="checkbox"] + label {
            position: relative;
            display: block;
            padding-left: 1.6em;
        }
        input[type="checkbox"] + label:before {
            position: absolute;
            top: 0.2em;
            left: 0;
            display: block;
            width: 1em;
            height: 1em;
            padding: 0;
            content: "";
        }
        input[type="checkbox"] + label:after {
            position: absolute;
            top: 0.45em;
            left: 0.2em;
            font-size: 0.8em;
            color: #fff;
            opacity: 0;
            font-family: FontAwesome;
            content: "\f00c";
        }
        input:checked + label:after {
            opacity: 1;
        }
        select {
            height: 3.4em;
            line-height: 2;
        }
        select:first-of-type {
            border-top-left-radius: 3px;
            border-bottom-left-radius: 3px;
        }
        select:last-of-type {
            border-top-right-radius: 3px;
            border-bottom-right-radius: 3px;
        }
        select:focus,
        select:active {
            outline: 0;
        }
        select option {
            background-color: rgb(79, 185, 159);
            color: #fff;
        }
        .input-group {
            margin-left: 5px;
            margin-right: 5px;
            margin-bottom: 1em;
            zoom: 1;
        }
        .input-group:before,
        .input-group:after {
            content: "";
            display: table;
        }
        .input-group:after {
            clear: both;
        }
        .input-group-icon {
            position: relative;
        }
        .input-group-icon input {
            padding-left: 4.4em;
        }
        .input-group-icon .input-icon {
            position: absolute;
            top: 0;
            left: 0;
            width: 3.4em;
            height: 3.4em;
            line-height: 3.4em;
            text-align: center;
            pointer-events: none;
        }
        .input-group-icon .input-icon:after {
            position: absolute;
            top: 0.6em;
            bottom: 0.6em;
            left: 3.4em;
            display: block;
            border-right: 1px solid #e5e5e5;
            content: "";
            -webkit-transition: 0.35s ease-in-out;
            -moz-transition: 0.35s ease-in-out;
            -o-transition: 0.35s ease-in-out;
            transition: 0.35s ease-in-out;
            transition: all 0.35s ease-in-out;
        }
        .input-group-icon .input-icon i {
            -webkit-transition: 0.35s ease-in-out;
            -moz-transition: 0.35s ease-in-out;
            -o-transition: 0.35s ease-in-out;
            transition: 0.35s ease-in-out;
            transition: all 0.35s ease-in-out;
        }
        .container1 {
            position: absolute;
            top: 70px;
            left: 14%;
            max-width: 38em;
            padding: 1em 3em 2em 3em;
            margin: 0em auto;
            background-color: #fff;
            border-radius: 4.2px;
            box-shadow: 0px 3px 10px -2px rgba(0, 0, 0, 0.2);
        }
        .container2 {
            position: absolute;
            top: 70px;
            left: 51%;
            max-width: 38em;
            padding: 1em 3em 2em 3em;
            margin: 0em auto;
            background-color: #fff;
            border-radius: 4.2px;
            box-shadow: 0px 3px 10px -2px rgba(0, 0, 0, 0.2);
        }
        .row {
            zoom: 1;
        }
        .row:before,
        .row:after {
            content: "";
            display: table;
        }
        .row:after {
            clear: both;
        }
        .col-half {
            padding-right: 10px;
            float: left;
            width: 50%;
        }
        .col-half:last-of-type {
            padding-right: 0;
        }
        .col-third {
            padding-right: 10px;
            float: left;
            width: 37.333333%;
            }
        .col-third:last-of-type {
            padding-right: 0;
        }
        @media only screen and (max-width: 540px) {
            .col-half {
                width: 100%;
                padding-right: 0;
            }
        }
        .input-icon > img {
            position: relative;
            width: 100%;
            height: 100%;
        }
        #resume-photo-container {
        	position: relative;
        	left: 8px;
    		width: 217px;
            height: 170px;
/* 			border: 1px solid black; */
        }
        .title {
            font-weight: 900;
            font-size: 30px;
            color: rgb(79, 185, 159);
            text-align: center;
            letter-spacing: 30px;
        }
        select {
            color: #b9b9b9;
        }
        input[type=button] {
            color: #b9b9b9; 
        }
        input[type=button]:hover {
            background-color: rgb(79, 185, 159);
            color: white;
        }
        form {
            /* border: 1px solid black; */
            height: 1300px;
        }
      </style>
  </head>  
  <body>
    

    <!--사이드 정보 배너-->
    <div ng-app='app' ng-controller='profile' class='sidebanner2'></div>

    <ul class="topbar">
        <li><a href='<c:url value="/main/main.do" />'>JOB STORY</a></li>
        <!-- <li id="marketing" style="float: right;"><a href="#"><marquee>광고문의 : 010-8669-8797</marquee></a></li> -->
    </ul>
    <br>
    <br>
    <!--팀원들 적용 에어리어-->
    <!--공고 등록-->
    <form id="formSub"action="updateApply.do" method="post" enctype="multipart/form-data">  
        <div class="container1">
          <div class="row">
              <h1 class="title">채용 공고 등록</h1>
              <input type="hidden" name="memberNo" value="${company.memberNo}">
              <input type="hidden" name="recruitmentNo" value="${detail.recruitmentNo}">
              
          </div>
          <div class="row">
              <h4>공고 명</h4>
              <div class="input-group">
                  <input type="text" name="title" placeholder="0자~20자" value="${detail.title}"/>
              </div>
          </div>
          
          <div class="row">
              <div class="col-half">
                  <h4>사진등록</h4>
                  <div class="input-icon" id="resume-photo-container">
                      <img src='<c:url value="/img/카메라_수정-02.png" />'id="profile"/>
                  </div>
                  <div class="input-group input-group-icon">
                      <input type="file" style="display:none"name="attach" placeholder="사진 선택" multiple="multiple"/>
                      <h4 id="imgCheck"style="visibility:hidden;color:#202bc3b5;margin-left: 30%">사진등록 완료!</h4>
                  </div>
              </div>
              <div class="col-half">
                  <h4>기본 정보</h4>
                  <div class="input-group input-group-icon">
                      <input type="text" name="name" placeholder="업체명" value="${detail.name}"/>
                      <div class="input-icon"><i class="fa fa-user"></i></div>
                  </div>
                  <div class="input-group input-group-icon">
                      <input type="email" name="email" placeholder="담당자 Email" value="${detail.email}"/>
                      <div class="input-icon"><i class="fa fa-envelope"></i></div>
                  </div>
                  <div class="input-group input-group-icon">
                      <input type="text" name="phone" placeholder="기업 대표전화" value="${detail.phone}"/>
                      <div class="input-icon"><i class="fa fa-mobile-phone"></i></div>
                  </div>
                  <div class="input-group input-group-icon">
                      <input style="display:none" type="text" name="kakaoId" placeholder="플러스친구 ID(Full URL)" value="${detail.kakaoId}"/>
                  </div>
              </div>
          </div>
                          <hr style="opacity:0.3;">
                <h4>업종</h4>
                <div class="row">
                    <div class="input-group">
                        <select class="select-all" name="jobId" value="${detail.jobId}">
                                <option value="job1001">경영·사무</option>
                                <option value="job1002">유통·무역</option>
                                <option value="job1003">영업·고객상담</option>
                                <option value="job1004">생산·제조</option>
                                <option value="job1005">IT·인터넷</option>
                                <option value="job1006">디자인</option>
                                <option value="job1007">전문직</option>
                                <option value="job1008">교육</option>
                                <option value="job1009">미디어</option>
                                <option value="job1010">특수계층·공공</option>
                                <option value="job1011">건설</option>
                                <option value="job1012">서비스</option>
                                <option value="job1013">의료</option>
                                <option value="job1014">기타</option>
                          </select>
                      </div>
                </div>
          <div class="row">
              <h4>경력 여부</h4>
              <div class="input-group" id="job-status">
                  <input type="radio" name="experienceId" value="exper1001" id="student"/>
                  <label for="student"><span><i class="fa fa-pencil-square"></i>신입</span></label>
                  <input type="radio" name="experienceId" value="exper1002" id="none-job"/>
                  <label for="none-job"> <span><i class="fa fa-location-arrow"></i>경력</span></label>
                  <input type="radio" name="experienceId" value="exper1003" id="job"/>
                  <label for="job"> <span><i class="fa fa-paste"></i>경력 무관</span></label>
              </div>
          </div>
          
          <div class="row">
            <h4>고용 형태</h4>     
            <div class="col-half">
              <div class="col-half">
                  <div class="input-group">
                      <input type="checkbox" id="a" name="workId2" value="work1001"/><label for="a"><span>정규직</span></label>
                  </div>
              </div>
              <div class="col-half">
                  <div class="input-group">
                      <input type="checkbox" id="b" name="workId2" value="work1002"/><label for="b"><span>계약직</span></label>
                  </div>
              </div>
            </div>

            <div class="col-half">
              <div class="col-half">
                  <div class="input-group">
                      <input type="checkbox" id="d" name="workId2" value="work1003"/><label for="d"><span>인턴직</span></label>
                  </div>
              </div>
              <div class="col-half">
                  <div class="input-group">
                      <input type="checkbox" id="c" name="workId2" value="work1005"/><label for="c"><span>아르바이트</span></label>
                  </div>
              </div>
            </div>

            <div class="col-half">
              <div class="col-half">
                  <div class="input-group">
                      <input type="checkbox" id="e" name="workId2" value="work1006"/><label for="e"><span>프리렌서</span></label>
                  </div>
                  
              </div>
              <div class="col-half">
                  <div class="input-group">
                      <input type="checkbox" id="f" name="workId2" value="work1007"/><label for="f"><span>파트</span></label>
                  </div>
              </div>
            </div>
          </div>
          
          <h4>근무일</h4>
                <div class="row">
                    <div class="input-group">
                        <select class="select-all" name="workDayId" id="workDayId">
                                <option value="workDay1001">주 5일</option>
                                <option value="workDay1002">주 6일</option>
                                <option value="workDay1003">면접 후 결정</option>
                          </select>
                      </div>
                </div>
        </div>
  
        <div class="container2">
            <div class="row">
                <div class="col-half">                  
                  <h4>모집 인원</h4>
                </div>
                <div class="col-half">
                </div>
                  <div class="input-group">
                	<input type="text" name="staffCnt" placeholder="예) 2명" style="width: 51%" value="${detail.staffCnt}"/> 
					<h4 style="margin-top: -8%;width: 10px;margin-left: 43%;">
						<font color="black">명</font>
					</h4>
                  </div>
                </div>
                <hr style="opacity:0.3;">
                <h4>학력</h4>
                <div class="input-group">
                    <select class="select-all" name="educationId">
                        <option value="educa1001">고등학교졸업	</option>
						<option value="educa1002">대학교졸업(2,3년)</option>
						<option value="educa1003">대학교졸업(4년)</option>
						<option value="educa1004">석·박사졸업</option>
						<option value="educa1005">학력무관</option>
                    </select>
                </div>
                <hr style="opacity:0.3;">                
                <h4>우대 자격증(최대 3개까지)</h4>
                <div class="input-group">
                    <input type="textarea" name="license" placeholder="예) 운전면허증, 정보처리기사, 한자자격증" value="${detail.license}"/>
                </div>
                <hr style="opacity:0.3;">    
                <div class="row">
                    <h4>성별</h4>
                    <div class="input-group" id="job-status">
                        <input type="radio" name="gender" value="b" id="both"/>
                        <label for="both"><span><i class="fa fa-pencil-square"></i>남녀무관</span></label>
                        <input type="radio" name="gender" value="m" id="male"/>
                        <label for="male"> <span><i class="fa fa-location-arrow"></i>남성</span></label>
                        <input type="radio" name="gender" value="f" id="female"/>
                        <label for="female"> <span><i class="fa fa-paste"></i>여성</span></label>
                    </div>
                </div>
                <hr style="opacity:0.3;">
                <div class="col-half" style="width:500px">
                    <h4>연령</h4>
                    <div class="input-group">
                        <div class="col-third">
                            <select class="select-all" name="minAge">
                                <option value="15세 이상">15세</option>
                                <option value="20세 이상">20세</option>
                                <option value="25세 이상">25세</option>
                                <option value="30세 이상">30세</option>
                                <option value="35세 이상">35세</option>
                                <option value="40세 이상">40세</option>
                                <option value="45세 이상">45세이상</option>
                            </select>
                        </div>
                        <div class="col-third">
                          <h4 style="margin-top: 8%;"><font color="black" >~</font></h4>
                        </div>
                        <div class="col-third" style="margin-left: -33%;">
                            <select class="select-all" name="maxAge">
                                <option value="20세 이하">20세</option>
                                <option value="25세 이하">25세</option>
                                <option value="30세 이하">30세</option>
                                <option value="35세 이하 ">35세</option>
                                <option value="40세 이하">40세</option>
                                <option value="45세 이하">45세</option>
                                <option value="제한없음">제한없음</option>
                            </select>
                        </div>
                    </div>
                </div>
                <h4>급여</h4>
                <div class="row">
                    <div class="input-group">
                        <div class="col-half">
                            <div class="input-group">
                                <select class="select-all" name="salary">
                                    <option value="1,400 만원 이하" label="1,400 만원 이하">1,400 만원 이하</option>
                                    <option value="1,400~1,600만원" label="1,400~1,600만원">1,400~1,600만원</option>
                                    <option value="1,600~1,800만원" label="1,600~1,800만원">1,600~1,800만원</option>
                                    <option value="1,800~2,000만원" label="1,800~2,000만원">1,800~2,000만원</option>
                                    <option value="2,000~2,200만원" label="2,000~2,200만원">2,000~2,200만원</option>
                                    <option value="2,200~2,400만원" label="2,200~2,400만원">2,200~2,400만원</option>
                                    <option value="2,400~2,600만원" label="2,400~2,600만원">2,400~2,600만원</option>
                                    <option value="2,600~2,800만원" label="2,600~2,800만원">2,600~2,800만원</option>
                                    <option value="2,800~3,000만원" label="2,800~3,000만원">2,800~3,000만원</option>
                                    <option value="3,000~3,200만원" label="3,000~3,200만원">3,000~3,200만원</option>
                                    <option value="3,200~3,400만원" label="3,200~3,400만원">3,200~3,400만원</option>
                                    <option value="3,400~3,600만원" label="3,400~3,600만원">3,400~3,600만원</option>
                                    <option value="3,600~3,800만원" label="3,600~3,800만원">3,600~3,800만원</option>
                                    <option value="3,800~4,000만원" label="3,800~4,000만원">3,800~4,000만원</option>
                                    <option value="4,000~5,000만원" label="4,000~5,000만원">4,000~5,000만원</option>
                                    <option value="5,000~6,000만원" label="5,000~6,000만원">5,000~6,000만원</option>
                                    <option value="6,000~7,000만원" label="6,000~7,000만원">6,000~7,000만원</option>
                                    <option value="7,000~8,000만원" label="7,000~8,000만원">7,000~8,000만원</option>
                                    <option value="8,000~9,000만원" label="8,000~9,000만원">8,000~9,000만원</option>
                                    <option value="9,000~1억원" label="9,000~1억원">9,000~1억원</option>
                                    <option value="1억원 이상" label="1억원 이상">1억원 이상</option>
                                    <option value="면접후 결정" label="면접후 결정">면접후 결정</option>
                                    <option value="회사내규에 따름" label="회사내규에 따름">회사내규에 따름</option>
                                </select>
                            </div>  
                        </div>
                    </div>
                </div>
                <hr style="opacity:0.3;">
                <h4>기업 형태</h4>
                <div class="row">
                    <div class="input-group">
                        <select class="select-all" name="companyId">
                                <option value="compa1001">대기업</option>
								<option value="compa1002">중견기업</option>
								<option value="	compa1003">공사·공기업</option>
								<option value="	compa1004">코스닥</option>
								<option value="	compa1005">코스피</option>
								<option value="	compa1006">외국계(법인·투자)</option>
								<option value="	compa1007">중소기업</option>
                          </select>
                      </div>
                </div>
                <hr style="opacity:0.3;">
                <h4>회사주소</h4>
                <div class="row">
                    <div class="col-half">
                        <div class="input-group">
            		<button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>                               
        			<input style="width:480px ;margin-top:10%"placeholder="우편번호" name="addr1" id="addr1" type="text" value="${detail.addr1}">
            		<input style="width:480px" placeholder="도로명 주소" name="addr2" id="addr2" type="text" value="${detail.addr2}"/>
                      
                      <input style="margin-top:10%;width:480px"type="text" name="addr3" placeholder="상세 주소를 입력하세요" value="${detail.addr3}"/>
                        </div>
                    </div>
                    <div class="col-half">
                        <div class="input-group">

                        </div>
                    </div>
                </div>
                <hr style="opacity:0.3;">
                <div class="row">
                    <h4>접수기간</h4>
                    <div class="input-group" id="job-status">
                        <input type="radio" name="date" value="15" id="half" />
                        <label for="half"><span><i class="fa fa-pencil-square"></i>15일</span></label>
                        <input type="radio" name="date" value="30" id="month"/>
                        <label for="month"> <span><i class="fa fa-location-arrow"></i>1개월</span></label>
                        <input type="radio" name="date" value="60" id="month2"/>
                        <label for="month2"> <span><i class="fa fa-paste"></i>2개월</span></label>
                    </div>
                </div>
                <hr style="opacity:0.3;">
                <div class="row">
                    <div class="input-group">
                        <div class="col-half">
                            <input type="button" name="submit" value="등록하기" id="submit"/>
							<button id="subBtn" style="display:none"></button>
                        </div>
                        <div class="col-half">
                            <input type="button" name="cancel" value="뒤로가기" id="cancel"/>
                        </div>
                    </div>
                </div>
            <!-- container2 마지막 태그 -->
            </div>
        </div>
    </form>
    <script>
    
	var date1 = new Date('${regDate2}');
	var date2 = new Date('${detail.endDate}');
	
	var diffDay = (date2.getTime() - date1.getTime()) / (1000*60*60*24);
	console.log(Math.round(diffDay))
	
	if(Math.round(diffDay) <=15){
		$("[value='20']").prop("checked",true);
	}
	
	if(Math.floor(diffDay) <=30 && Math.floor(diffDay) >15){
		$("[value='30']").prop("checked",true);
	} 
	
	if(Math.floor(diffDay) <=60 && Math.floor(diffDay) >30){
		$("[value='60']").prop("checked",true);
	} 
    
    
    
    
    	/*sumbit 전송버튼*/
    	$("#submit").click(function () {
    		 if($("[name='title']").val()=="") {swal('공고명을 입력해주세요 !');return;}
    		if($("[name='name']").val()=="") {swal('업체명을 입력해주세요 !');return;}
    		if($("[name='email']").val()=="") {swal('담당자 이메일을 입력해주세요 !');return;}
    		if($("[name='phone']").val()=="") {swal('대표 전화번호를 입력해주세요 !');return;}
    		if($("[name='attach']").val()=="") {swal('사진을 등록해주세요 ');return;}
    		if($("[name='experienceId']").val()=="") {swal('경력여부를 선택 해주세요 !');return;}
    		if($('input:checkbox[name="workId2"]').is(":checked")==false) {swal('고용 형태 선택해주세요');return;}
    		if($("[name='staffCnt']").val()=="") {swal('모집 인원을 입력해주세요!');return;}
    		if($("[name='educationId']").val()=="") {swal('학력을 선택해주세요 !');return;}
    		if($('input:radio[name="gender"]').is(":checked")==false) {swal('성별을 선택해주세요!');return;}
    		if($("[name='minAge']").val() > $("[name='maxAge']").val()) {swal('최대연령이 최소연령보다 작을수 없습니다!'); return;}
    		if($("[name='addr1']").val()=="") {swal('우편번호 찾기를 이용해주세요!');return;}
    		if($("[name='addr2']").val()=="") {swal('우편번호 찾기를 이용해주세요!');return;}
    		if($("[name='addr3']").val()=="") {swal('상세주소는 필수로 입력하셔야 합니다!');return;}
    		if($('input:radio[name="date"]').is(":checked")==false) {swal('접수기간은 필수로 선택하셔야 합니다!');return;} 
			

    		var formData = $("#formSub").serialize();
    		console.log(formData)
    		$("#subBtn").click();
    		
		})
    
    	/*주소 입력창*/
    	function execPostCode() {
         new daum.Postcode({
             oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                console.log(data.zonecode);
                console.log(fullRoadAddr);
                
                
                $("[name=addr1]").val(data.zonecode);
                $("[name=addr2]").val(fullRoadAddr);
                
            }
         }).open();
     }
    
    
    
        /* 스크랩 기능 */
        $(".list-container > table > tbody > tr > td:nth-child(1) > img").click(function () {
            var scrapFlag = $(this).attr("flag-data");
            if(scrapFlag == "true"){
                //alert("취소");
                $(this).attr("src", "./img/noun_Star_2044877-02.png")
                       .attr("flag-data", "false");
            } else {
                //alert("스크랩");
                $(this).attr("src", "./img/noun_Star_2044877-03.png")
                       .attr("flag-data", "true");
            }
        })
        
        
        
 
 



        
        
        
        /*저장된 값 가져오기 */
        
        $("[name='jobId']").val("${detail.jobId}");
        $("[value='${detail.experienceId}']").prop('checked', true);
        var workId = "${detail.workId}".split(",");
        for(var i=0; i<workId.length; i++){
        	$("[value='"+workId[i]+"']").prop('checked', true); 
        }
        $("[name='workDayId']").val("${detail.workDayId}");
        $("[name='educationId']").val("${detail.educationId}");
        $("[value='${detail.gender}']").prop('checked', true);
        $("[name='minAge']").val("${detail.minAge}");
        $("[name='maxAge']").val("${detail.maxAge}");
        $("[name='salary']").val("${detail.salary}");
        $("[name='companyId']").val("${detail.companyId}");
        $("[value='${detail.endDate}']").prop('checked', true);
        
        
        
        
        
        
        
        
        
        /*사진등록*/
        $("#resume-photo-container").click(function () {
        	 $('input[type="file"]').trigger("click");
        	 
		})
        
        /*이미지 보이기*/
         function readURL(input) {
              if(input.files && input.files[0]) {
                 var reader = new FileReader();
                 reader.onload = function (e) {
                    $("#profile").attr("src", e.target.result);
                 }
                 reader.readAsDataURL(input.files[0]);
              }
           };
           $("input[type='file']").change(function () {
        	   waitMeAction();
              readURL(this);
           })
        
           
           function waitMeAction() {
    			$("#resume-photo-container").waitMe({
    				effect: "win8",
    				text: "사진을 등록 중",
    				bg: "rgb(255, 255, 255 0.1)",
    				color : "rgb(255, 255, 255)"
    			});
    			setTimeout(function(){
    				$("#resume-photo-container").waitMe("hide");
    				$("#imgCheck").css("visibility","visible");
    			}, 3000);
    			
    		};
        
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
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>