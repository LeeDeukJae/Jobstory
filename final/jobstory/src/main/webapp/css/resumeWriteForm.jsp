<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

    

	<!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
            
    <!-- wait me -->
    <link rel="stylesheet" href='<c:url value="/css/waitMe.css" />'>
	<script src='<c:url value="/js/waitMe.js" />'></script>
	
    <!-- 
        [codepen 참조]
        https://codepen.io/josemc/pen/Kwbapp
    -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" >
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300" rel="stylesheet">
    <style>
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
            top: 16px;
            left: 0;
            width: 3.4em;
            height: 3.4em;
            line-height: 3.4em;
            text-align: center;
            pointer-events: none;
        }
        .input-group-icon .input-icon:after {
            position: absolute;
            top: -0.5em;
    		bottom: 1.8em;
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
            left: 230px;
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
            left: 840px;
            max-width: 38em;
            padding: 1em 3em 2em 3em;
            margin: 0em auto;
            background-color: #fff;
            border-radius: 4.2px;
            box-shadow: 0px 3px 10px -2px rgba(0, 0, 0, 0.2);
            display: hidden;
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
            width: 33.33333333%;
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
        	left: 50px;
        	width: 135px;
            height: 180px;
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
        .career-container {
            /* border: 1px solid black; */
            display: none;
        }
        #elementschool-container, #middleschool-container {
            display: none;
        }
        #plus-btn {
            position: relative;
            width: 20px;
            height: 20px;
            top: 20px;
            left: 220px;
            transform: rotateZ(45deg);
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
		  margin-left: -51%;	
		  display: block;
		  text-decoration: none;
		  padding: 8px 65px;
		  color: white;
		  font-size: 26px;
		}
		.topbar>li>a:hover {
		  color: rgb(79, 185, 159);
		}
</style>
</head>
<body>
    <!-- 탑 -->
    <ul class="topbar">
        <li><a href="#"></a></li>
        <li><a href="#">JOB STORY</a></li>
    </ul>
    <!-- 메인 -->
     
    	<div class="container1">
            <div class="row">
                <h1 class="title">이력서</h1>
            </div>
            <div class="row">
                <h4>이력서 제목</h4>
                <div class="input-group">
                    <input type="text" id="resume-title" placeholder="0자~20자"/>
                </div>
            </div>
            <div class="row">
                <div class="col-half">
                    <h4>사진등록</h4>
                    <div class="input-icon" id="resume-photo-container">
                        <img src='<c:url value="/img/카메라_수정-02.png" />' id="resume-pre-photo"/>
                    </div>
                    
	                    <div class="input-group input-group-icon">
	                    <!-- 
		                    <form id="fileForm" method="post" enctype="multipart/form-data">
					            <input type="file" name="attach" id="file-attach" multiple="multiple" /> 
					        </form> 
				        -->
	                    	<form id="resumeForm" method="post" enctype="multipart/form-data"> 
	                        	<input type="file" id="resume-photo-register" name="resume-photo" placeholder="사진 선택"/>
                        	</form>
	                        <div class="input-icon"><i class="fa fa-camera"></i></div>
	                    </div>
	                
                </div>
                <div class="col-half">
                    <h4>기본 정보</h4>
                    <div class="input-group input-group-icon">
                        <input type="text" id="resume-name" placeholder="이름"/>
                        <div class="input-icon"><i class="fa fa-user"></i></div>
                    </div>
                    <div class="input-group input-group-icon">
                        <input type="email" id="resume-email" placeholder="Email"/>
                        <div class="input-icon"><i class="fa fa-envelope"></i></div>
                    </div>
                    <div class="input-group input-group-icon">
                        <input type="text" id="resume-cellphone" placeholder="핸드폰 번호"/>
                        <div class="input-icon"><i class="fa fa-mobile-phone"></i></div>
                    </div>
                    <div class="input-group input-group-icon">
                        <input type="text" id="resume-phone" placeholder="전화번호"/>
                        <div class="input-icon"><i class="fa fa-phone-square"></i></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-half">
                    <h4>생년월일</h4>
                    <div class="input-group">
                        <div class="col-third">
                            <input type="text" id="resume-birthY" placeholder="YYYY"/>
                        </div>
                        <div class="col-third">
                            <input type="text" id="resume-birthM" placeholder="MM"/>
                        </div>
                        <div class="col-third">
                            <input type="text" id="resume-birthD" placeholder="DD"/>
                        </div>
                    </div>
                </div>
                <div class="col-half">
                    <h4>성별</h4>
                    <div class="input-group">
                        <input type="radio" name="gender" value="1" id="gender-male"/>
                        <label for="gender-male"><span><i class="fa fa-male"></i>Male</span></label>
                        <input type="radio" name="gender" value="2" id="gender-female"/>
                        <label for="gender-female"><span><i class="fa fa-female"></i>Female</span></label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="input-group input-group-icon">
                    <input type="text" id="resume-addr" placeholder="주소"/>
                    <div class="input-icon"><i class="fa fa-home"></i></div>
                </div>
                <div class="input-group input-group-icon">
                    <input type="text" id="resume-detail-addr" placeholder="상세주소"/>
                    <div class="input-icon"><i class="fa fa-home"></i></div>
                </div>
            </div>
            <div class="row">
                <h4>구직 상태</h4>
                <div class="input-group" id="job-status">
                    <input type="radio" name="payment-method" value="jobPrep" id="student" />
                    <label for="student"><span><i class="fa fa-pencil-square"></i>구직준비중</span></label>
                    <input type="radio" name="payment-method" value="jobSearching" id="none-job"/>
                    <label for="none-job"> <span><i class="fa fa-location-arrow"></i>구직중</span></label>
                    <input type="radio" name="payment-method" value="jobWorking" id="job"/>
                    <label for="job"> <span><i class="fa fa-paste"></i>재직중</span></label>
                </div>
            </div>
            <div class="row">
                <h4>경력</h4>
                <div class="input-group">
                    <input type="radio" name="experience" value="exper1001" id="new"/>
                    <label for="new"><span><i class="fa fa-user"></i>신입</span></label>
                    <input type="radio" name="experience" value="exper1002" id="old"/>
                    <label for="old"><span><i class="fa fa-suitcase"></i>경력</span></label>
                </div>
            </div>
            <!-- [개인정보수집동의] -->
            <div class="row">
                <h4>Terms and Conditions</h4>
                <div class="input-group">
                    <input type="checkbox" id="terms" value="agree"/>
                    <label for="terms">
                        <font color="black">개인정보 취급 동의</font><br>
                        I accept the terms and conditions for signing up to this service, and hereby confirm I have read the privacy policy.</label>
                </div>
            </div> 
            <div class="row">
                <h4>이력서 공개 설정</h4>
                <div class="input-group input-group-icon">
                    <input type="radio" name="resume-public" value="1" id="public"/>
                    <label for="public">공개</label>
                    <input type="radio" name="resume-public" value="2" id="private"/>
                    <label for="private">비공개</label>
                </div>
            </div>
        </div>
        
        <div class="container2">
            <div class="row">
                <h4>학력사항</h4>
                <span>학력</span>
                <div class="input-group">
                    <select class="select-all" id="education-field">
                        <option value="undefined">선택</option>
                        <option value="educa1005">학력 무관</option>
                        <option value="educa1004">대학원 석·박사 졸업</option>
                        <option value="educa1003">대학교 졸업</option>
                        <option value="educa1001">고등학교 졸업</option>
                    </select>
                </div>
                <hr style="opacity:0.3;">
                <div id="highschool-container">
                    <h4>고등학교</h4>
                    <div class="row">
                        <span>고등학교</span>
                        <div class="input-group input-group-icon">
                            <input type="text" id="highschool-name" placeholder="고등학교명"/>
                            <div class="input-icon"><i class="fa fa-building-o"></i></div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-half">
                            <div class="input-group">
                                <span>전공계열</span>
                                <select id="highschool-major" class="select-all">
                                    <option value="undefined">선택</option>
                                    <option value="major2001">이과</option>
                                    <option value="major2002">문과</option>
                                    <option value="major2003">전문(실업)계</option>
                                    <option value="major2004">예체능계</option>
                                    <option value="major2005">특성화/마이스터고</option>
                                    <option value="major2006">특수목적고</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-half">
                            <div class="input-group">
                                <span>지역</span>
                                <select class="select-all" id="highschool-location">
                                    <option value="undefined">선택</option>
                                    <option value="locat1001">서울</option>
									<option value="locat1002">부산</option>
									<option value="locat1003">인천</option>
									<option value="locat1004">대구</option>
									<option value="locat1005">대전</option>
									<option value="locat1006">광주</option>
									<option value="locat1007">울산</option>
									<option value="locat1008">경기</option>
									<option value="locat1009">경북</option>
									<option value="locat1010">경남</option>
									<option value="locat1011">전북</option>
									<option value="locat1012">전남</option>
									<option value="locat1013">충북</option>
									<option value="locat1014">충남</option>
									<option value="locat1015">강원</option>
									<option value="locat1016">제주</option>
									<option value="locat1017">세종</option>
									<option value="locat1018">해외</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="col-half">
                        <span>입학년월</span>
                        <div class="input-group">
                            <div class="col-third">
                                <input type="text" id="highschool-enterY" placeholder="YYYY"/>
                            </div>
                            <div class="col-third">
                                <input type="text" id="highschool-enterM" placeholder="MM"/>
                            </div>
                            <div class="col-third">
                                <select class="select-all" id="highschool-enterVal">
                                    <option value="undefined">선택</option>
                                    <option value="status1001">입학</option>
                                    <option value="status1002">편입</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-half">
                        <span>졸업년월</span>
                        <div class="input-group">
                            <div class="col-third">
                                <input type="text" id="highschool-graduY" placeholder="YYYY"/>
                            </div>
                            <div class="col-third">
                                <input type="text" id="highschool-graduM" placeholder="MM"/>
                            </div>
                            <div class="col-third">
                                <select class="select-all" id="highschool-graduVal">
                                    <option value="undefined">선택</option>
                                    <option value="status1003">졸업</option>
									<option value="status1004">재학중</option>
									<option value="status1005">휴학중</option>
									<option value="status1006">수료</option>
									<option value="status1007">중퇴</option>
									<option value="status1008">자퇴</option>
									<option value="status1009">졸업예정</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <hr style="opacity:0.3;">
                </div>
                <div id="college-container">
                    <div class="row">
                        <div class="col-half">
                            <h4>대학교</h4>
                        </div>
                        <div class="col-half" id="college-plus">
                            <img src='<c:url value="/img/resumeWriteForm-X.png"/>' id="plus-btn">
                        </div>
                    </div>
                    <div class="row">
                        <span>대학선택</span>
                        <div class="input-group">
                            <div class="col-half">
                                <select class="select-all" id="college-dayNight">
                                    <option val="주간">주간</option>
                                    <option val="야간">야간</option>
                                </select>
                            </div>
                            <div class="col-third">
                                <div class="input-group">
                                    <select class="select-all" id="college-val">
                                        <option value="educa1002">대학교(2,3년)</option>
                                        <option value="educa1003">대학교(4년)</option>
                                        <option value="educa1004">대학원(석·박사)</option>
                                    </select>
                                </div>  
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-half">
                            <span>대학교명</span>
                            <div class="input-group input-group-icon">
                                <input type="text" id="college-name" placeholder="대학교명"/>
                                <div class="input-icon"><i class="fa fa-user"></i></div>
                            </div>
                        </div>
                        <div class="col-third">
                            <div class="input-group">
                                <span>지역</span>
                                <select class="select-all" id="college-location">
                                    <option value="undefined">선택</option>
                                    <option value="locat1001">서울</option>
									<option value="locat1002">부산</option>
									<option value="locat1003">인천</option>
									<option value="locat1004">대구</option>
									<option value="locat1005">대전</option>
									<option value="locat1006">광주</option>
									<option value="locat1007">울산</option>
									<option value="locat1008">경기</option>
									<option value="locat1009">경북</option>
									<option value="locat1010">경남</option>
									<option value="locat1011">전북</option>
									<option value="locat1012">전남</option>
									<option value="locat1013">충북</option>
									<option value="locat1014">충남</option>
									<option value="locat1015">강원</option>
									<option value="locat1016">제주</option>
									<option value="locat1017">세종</option>
									<option value="locat1018">해외</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-half">
                            <div class="input-group">
                                <span>주전공</span>
                                <input type="text" id="college-major" placeholder="전공학과"/>
                            </div>
                        </div>
                        <div class="col-half">
                            <div class="input-group">
                                <span>전공계열</span>
                                <select class="select-all" id="college-major-field">
                                    <option value="major1001">어문학</option>
									<option value="major1002">영어·영문</option>
									<option value="major1003">중어·중문</option>
									<option value="major1004">일어·일문</option>
									<option value="major1005">국어·국문</option>
									<option value="major1006">인문과학</option>
									<option value="major1007">사회과학</option>
									<option value="major1008">상경계열</option>
									<option value="major1009">경제·경영</option>
									<option value="major1010">회계학</option>
									<option value="major1011">법학계열</option>
									<option value="major1012">사범계열</option>
									<option value="major1013">종교학</option>
									<option value="major1014">생활과학</option>
									<option value="major1015">예·체능</option>
									<option value="major1016">자연과학계열</option>
									<option value="major1017">농수산·해양·축산</option>
									<option value="major1018">수학·통계학</option>
									<option value="major1019">물리·천문·기상학</option>
									<option value="major1020">화학·생물</option>
									<option value="major1021">공학계열</option>
									<option value="major1022">전기·전자·정보통신공학</option>
									<option value="major1023">컴퓨터·시스템</option>
									<option value="major1024">금속·비금속공학</option>
									<option value="major1025">생명·화학·환경·바이오</option>
									<option value="major1026">도시·토목·건축</option>
									<option value="major1027">에너지·원자력공학</option>
									<option value="major1028">산업·자동차·우주공학</option>
									<option value="major1029">기계·조선·항공공학	</option>
									<option value="major1030">신소재·재료·섬유공학</option>
									<option value="major1031">식품·유전·안전공학	</option>
									<option value="major1032">의학계열</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-half">
                            <div class="input-group">
                                <span>부전공·복수전공·이중전공</span>
                                <input type="text" id="college-sub-major" placeholder="전공학과"/>
                            </div>
                        </div>
                        <div class="col-half">
                            <div class="input-group">
                                <span>전공계열</span>
                                <select class="select-all" id="college-sub-major-field">
                                    <option value="major1001">어문학</option>
									<option value="major1002">영어·영문</option>
									<option value="major1003">중어·중문</option>
									<option value="major1004">일어·일문</option>
									<option value="major1005">국어·국문</option>
									<option value="major1006">인문과학</option>
									<option value="major1007">사회과학</option>
									<option value="major1008">상경계열</option>
									<option value="major1009">경제·경영</option>
									<option value="major1010">회계학</option>
									<option value="major1011">법학계열</option>
									<option value="major1012">사범계열</option>
									<option value="major1013">종교학</option>
									<option value="major1014">생활과학</option>
									<option value="major1015">예·체능</option>
									<option value="major1016">자연과학계열</option>
									<option value="major1017">농수산·해양·축산</option>
									<option value="major1018">수학·통계학</option>
									<option value="major1019">물리·천문·기상학</option>
									<option value="major1020">화학·생물</option>
									<option value="major1021">공학계열</option>
									<option value="major1022">전기·전자·정보통신공학</option>
									<option value="major1023">컴퓨터·시스템</option>
									<option value="major1024">금속·비금속공학</option>
									<option value="major1025">생명·화학·환경·바이오</option>
									<option value="major1026">도시·토목·건축</option>
									<option value="major1027">에너지·원자력공학</option>
									<option value="major1028">산업·자동차·우주공학</option>
									<option value="major1029">기계·조선·항공공학	</option>
									<option value="major1030">신소재·재료·섬유공학</option>
									<option value="major1031">식품·유전·안전공학	</option>
									<option value="major1032">의학계열</option>
                                </select>
                            </div>
                        </div>
                    </div>    
                    <div class="row">
                        <div class="col-half">
                            <span>입학년월</span>
                            <div class="input-group">
                                <div class="col-third">
                                    <input type="text" id="college-enterY" placeholder="YYYY"/>
                                </div>
                                <div class="col-third">
                                    <input type="text" id="college-enterM" placeholder="MM"/>
                                </div>
                                <div class="col-third">
                                    <select class="select-all" id="college-enterVal">
                                        <option value="status1001">입학</option>
                                        <option value="status1002">편입</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-half">
                            <span>졸업년월</span>
                            <div class="input-group">
                                <div class="col-third">
                                    <input type="text" id="college-graduY" placeholder="YYYY"/>
                                </div>
                                <div class="col-third">
                                    <input type="text" id="college-graduM" placeholder="MM"/>
                                </div>
                                <div class="col-third">
                                    <select class="select-all" id="college-graduVal">
                                        <option value="undefined">선택</option>
	                                    <option value="status1003">졸업</option>
										<option value="status1004">재학중</option>
										<option value="status1005">휴학중</option>
										<option value="status1006">수료</option>
										<option value="status1007">중퇴</option>
										<option value="status1008">자퇴</option>
										<option value="status1009">졸업예정</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-half">
                            <span>학점</span>
                            <div class="input-group">
                                <div class="col-third">
                                    <input type="text" id="college-Avg-grade" placeholder="학점"/>
                                </div>
                                <div class="col-third" style="text-align:center; font-size: 30px;">
                                    /
                                </div>
                                <div class="col-third">
                                    <select class="select-all" id="college-standard-grade">
                                        <option value="4.0">4.0</option>
                                        <option value="4.3">4.3</option>
                                        <option value="4.5">4.5</option>
                                        <option value="5.0">5.0</option>
                                        <option value="7.0">7.0</option>
                                        <option value="100">100</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>    
                <div class="career-container">
                    <hr style="opacity:0.3;">
                    <div class="row">
                        <div class="col-half">
                            <h4>경력사항</h4>
                        </div>
                        <div class="col-half" id="career-plus">
                            <img src='<c:url value="/img/resumeWriteForm-X.png"/>' id="plus-btn">
                        </div>
                    </div>
                    
                    <div class="row">
                        <span>회사명</span>
                        <div class="input-group input-group-icon">
                            <input type="text" name="company-name" placeholder="회사명" id="company-name"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-half">
                            <span>입사년월</span>
                            <div class="input-group">
                                <div class="col-third">
                                    <input type="text" id="company-joinY" placeholder="YYYY"/>
                                </div>
                                <div class="col-third">
                                    <input type="text" id="company-joinM" placeholder="MM"/>
                                </div> 
                            </div>
                        </div>
                        <div class="col-half">
                            <span>퇴사년월</span>
                            <div class="input-group">
                                <div class="col-third">
                                    <input type="text" id="company-resignY" placeholder="YYYY"/>
                                </div>
                                <div class="col-third">
                                    <input type="text" id="company-resignM" placeholder="MM"/>
                                </div>
                                <div class="col-third">
                                    <select class="select-all" id="company-status">
                                        <option value="status1013">퇴사</option>
                                        <option value="status1012">재직중</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-half">
                            <div class="input-group">
                                <span>지역</span>
                                <select class="select-all" id="company-location">
                                    <option value="undefined">선택</option>
                                    <option value="locat1001">서울</option>
									<option value="locat1002">부산</option>
									<option value="locat1003">인천</option>
									<option value="locat1004">대구</option>
									<option value="locat1005">대전</option>
									<option value="locat1006">광주</option>
									<option value="locat1007">울산</option>
									<option value="locat1008">경기</option>
									<option value="locat1009">경북</option>
									<option value="locat1010">경남</option>
									<option value="locat1011">전북</option>
									<option value="locat1012">전남</option>
									<option value="locat1013">충북</option>
									<option value="locat1014">충남</option>
									<option value="locat1015">강원</option>
									<option value="locat1016">제주</option>
									<option value="locat1017">세종</option>
									<option value="locat1018">해외</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-half">
                            <div class="input-group">
                                <span>근무 부서</span>
                                <input type="text" name="company-department" placeholder="근무 부서" id="company-department"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-half">
                            <div class="input-group">
                                <span>연봉</span>
                                <input type="text" name="payment" id="company-salary" placeholder="만원">
                            </div>
                        </div>
                        <div class="col-half">
                            <span>퇴사 사유</span>
                            <div class="input-group">
<!--                                 <input type="text" name="payment" id="resign-reason" placeholder="ex) 계약 만료, 경영 악화 등"> -->
								<select name="payment" id="resign-reason" class="select-half">
									<option value="resign1000">선택</option>
									<option value="resign1001">업직종 전환</option>
									<option value="resign1002">근무조건</option>
									<option value="resign1003">경영악화</option>
									<option value="resign1004">계약만료</option>
									<option value="resign1005">출산/육아</option>
									<option value="resign1006">학업</option>
									<option value="resign1007">유학</option>
									<option value="resign1008">개인사정</option>
									<option value="resign1009">기타</option>
								</select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-half">
                            <div class="input-group">
                                <span>직급(직책)</span>
                                <input type="text" name="payment" id="company-position" placeholder="직급">
                            </div>
                        </div>
                        <div class="col-half">
                            <div class="input-group">
                                <span>업종</span>
                                <select class="select-all" id="company-job-field">
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
                    </div>
                    <hr style="opacity:0.3;">
                    <span>총 경력</span>
                    <div class="row">
                        <div class="col-half">
                            <input type="text" name="payment" id="company-totalY" placeholder="년">
                        </div>
                        <div class="col-half">
                            <input type="text" name="payment" id="company-totalM" placeholder="개월">
                        </div>
                    </div>
                </div>
                <hr style="opacity:0.3;">
                <div class="row">
                    <div class="input-group">
                        <div class="col-half">
                            <input type="button" name="submit" value="Submit" id="submit"/>
                        </div>
                        <div class="col-half">
                            <input type="button" name="cancel" value="Cancel" id="cancel"/>
                        </div>
                    </div>
                </div>
            </div>
       
        <script>
        	/* 이력서 제출 버튼 */
        	$("#submit").click(function (e) {
        		e.preventDefault();
        		alert("Submit");
        		
        		/* 기본정보 */
        		var title =	$("#resume-title").val();
        		var photo = $("#resume-photo-register").val();
        		var name = $("#resume-name").val();
        		var email = $("#resume-email").val();
        		var cellphone = $("#resume-cellphone").val();
        		var phone = $("#resume-phone").val();
        		var birthY = $("#resume-birthY").val();
        		var birthM = $("#resume-birthM").val();
        		var birthD = $("#resume-birthD").val();
        		var gender = $("input[name=gender]:checked").val();
        		var addr = $("#resume-addr").val();
        		var detailAddr = $("#resume-detail-addr").val();
        		var jobStatus =	$("input[name=payment-method]:checked").val();
        		var career = $("input[name=experience]:checked").val();
        		var agree =	$("input[id=terms]:checked").val();
        		var publicPrivate =	$("input[name=resume-public]:checked").val();
        		var resumeStandard = {
        				"title" : title,
        				"name" : name
        		}
        		/* 학력 */
        		var edu = $("#education-field").val();
        		
        		/* 고등학교 */
        		var highName = $("#highschool-name").val();
        		var highMajor =	$("#highschool-major").val();
        		var highLocation = $("#highschool-location").val();
        		var highEnterY = $("#highschool-enterY").val();
        		var highEnterM = $("#highschool-enterM").val();
        		var highEnterVal = $("#highschool-enterVal").val();
        		var highGraduY = $("#highschool-graduY").val();
        		var highGraduM = $("#highschool-graduM").val();
        		var highGraduVal = $("#highschool-graduVal").val();
        		
        		var resumeHighschool = {
        				"highName" : highName,
        				"highMajorId" : highMajor
        		}
        		/* 대학교 */
        		var colDayNight = $("#college-dayNight").val();
				var colVal = $("#college-val").val();
				var colName = $("#college-name").val();
				var colLocation = $("#college-location").val();
				var colMajor = $("#college-major").val();
				var colMajorField =	$("#college-major-field").val();
				var colSubMajor = $("#college-sub-major").val();
				var colSubMajorField = $("#college-sub-major-field").val();
				var colEnterY =	$("#college-enterY").val();
				var colEnterM =	$("#college-enterM").val();
				var colEnterVal = $("#college-enterVal").val();
				var colGraduY =	$("#college-graduY").val();
				var colGraduM =	$("#college-graduM").val();
				var colGraduVal = $("#college-graduVal").val();
				var colAvgGrade = $("#college-Avg-grade").val();
				var colStandGrade = $("#college-standard-grade").val();
 				var resumeCollege = {
 						"colName" : colName,
 						"colLocationId" : colLocation
 				}
        			
        		/* 경력 사항 */	
        		var compName = $("#company-name").val();
				var compJoinY =	$("#company-joinY").val();
				var compJoinM =	$("#company-joinM").val();
				var compResignY = $("#company-resignY").val();
				var compResignM = $("#company-resignM").val();
				var compStatus = $("#company-status").val();
				var compLocation = $("#company-location").val();
				var compDep = $("#company-department").val();
				var compSalary = $("#company-salary").val();
				var ResignReason = $("#resign-reason").val();
				var compPosition =$("#company-position").val();
				var compYear = $("#company-year").val();
				var compMonth = $("#company-year").val();
				var compJobField = $("#company-job-field").val();
				var compTotalY = $("#company-totalY").val();
				var compTotalM = $("#company-totalM").val();
				var resumeCompany = {
 						"compName" : compName,
 						"compLocation" : compLocation
 				}
        		console.log("title	 : ",	title);
        		console.log("photo	 : ",	photo);
        		console.log("name	 : ",	name);
        		console.log("email	 : ",	email);
        		console.log("cellphone	 : ",	cellphone	);
        		console.log("phone	 : ",	phone	);
        		console.log("birthY	 : ",	birthY);
        		console.log("birthM	 : ",	birthM);
        		console.log("birthD	 : ",	birthD);
        		console.log("gender	 : ",	gender);
        		console.log("addr	 : ",	addr	);
        		console.log("detailAddr	 : ",	detailAddr	);
        		console.log("jobStatus	 : ",	jobStatus	);
        		console.log("career	 : ",	career	);
        		console.log("agree	 : ",	agree	);
        		console.log("publicPrivate	 : ",	publicPrivate	);
        		console.log("edu	 : ",	edu	);
        		console.log("highName	 : ",	highName	);
        		console.log("highMajor	 : ",	highMajor	);
        		console.log("highLocation	 : ",	highLocation	);
        		console.log("highEnterY	 : ",	highEnterY	);
        		console.log("highEnterM	 : ",	highEnterM	);
        		console.log("highEnterVal	 : ",	highEnterVal	);
        		console.log("highGraduY	 : ",	highGraduY	);
        		console.log("highGraduM	 : ",	highGraduM	);
        		console.log("highGraduVal	 : ",	highGraduVal	);
        		
        		console.log("	colDayNight	 : ",	colDayNight	);
        		console.log("	colVal	 : ",	colVal	);
        		console.log("	colName	 : ",	colName	);
        		console.log("	colLocation	 : ",	colLocation	);
        		console.log("	colMajor	 : ",	colMajor	);
        		console.log("	colMajorField	 : ",	colMajorField	);
        		console.log("	colSubMajor	 : ",	colSubMajor	);
        		console.log("	colSubMajorField	 : ",	colSubMajorField	);
        		console.log("	colEnterY	 : ",	colEnterY	);
        		console.log("	colEnterM	 : ",	colEnterM	);
        		console.log("	colEnterVal	 : ",	colEnterVal	);
        		console.log("	colGraduY	 : ",	colGraduY	);
        		console.log("	colGraduM	 : ",	colGraduM	);
        		console.log("	colGraduVal	 : ",	colGraduVal	);
        		console.log("	colAvgGrade	 : ",	colAvgGrade	);
        		console.log("	colStandGrade	 : ",	colStandGrade	);
        						
        						
        		console.log("	compName	 : ",	compName	);
        		console.log("	compJoinY	 : ",	compJoinY	);
        		console.log("	compJoinM	 : ",	compJoinM	);
        		console.log("	compResignY	 : ",	compResignY	);
        		console.log("	compResignM	 : ",	compResignM	);
        		console.log("	compStatus	 : ",	compStatus	);
        		console.log("	compLocation	 : ",	compLocation	);
        		console.log("	compDep	 : ",	compDep	);
        		console.log("	compSalary	 : ",	compSalary	);
        		console.log("	ResignReason	 : ",	ResignReason	);
        		console.log("	compPosition	 : ",	compPosition	);
        		console.log("	compYear	 : ",	compYear	);
        		console.log("	compJobField	 : ",	compJobField	);
        		console.log("	compTotalY	 : ",	compTotalY	);
        		console.log("	compTotalM	 : ",	compTotalM	);

        		var formData = new FormData();
        		/* 이력서 사진 */
        		formData.append("resumePhoto", $("#resume-photo-register")[0].files[0]);
        		
        		/* 기본 정보 */
				formData.append("title", title);
				formData.append("name", name);
				formData.append("email", email);
				formData.append("cellphone", cellphone);
				formData.append("phone", phone);
				formData.append("birthY", birthY);
				formData.append("birthM", birthM);
				formData.append("birthD", birthD);
				formData.append("gender", gender);
				formData.append("addr",	addr);
				formData.append("detailAddr", detailAddr);
				formData.append("jobStatusId", jobStatus);
				formData.append("experienceId", career);
				formData.append("agree", agree);
				formData.append("publicPrivate", publicPrivate);
				
// 				/* 학력 */
				formData.append("educationId",edu);
			
// 				/* 고등학교 */
				formData.append("highName", highName);
				formData.append("highMajorId", highMajor);
				formData.append("highLocationId", highLocation);
				formData.append("highEnterY", highEnterY);
				formData.append("highEnterM", highEnterM);
				formData.append("highEnterId", highEnterVal);
				formData.append("highGraduY", highGraduY);
				formData.append("highGraduM", highGraduM);
				formData.append("highGraduId", highGraduVal);

// 				/* 대학교 */
				formData.append("colDayNight", colDayNight);
				formData.append("colEducationId", colVal);
				formData.append("colName", colName);
				formData.append("colLocationId", colLocation);
				formData.append("colMajor", colMajor);
				formData.append("colMajorId", colMajorField);
				formData.append("colSubMajor", colSubMajor);
				formData.append("colSubMajorId", colSubMajorField);
				formData.append("colEnterY", colEnterY);
				formData.append("colEnterM", colEnterM);
				formData.append("colEnterId", colEnterVal);
				formData.append("colGraduY", colGraduY);
				formData.append("colGraduM", colGraduM);
				formData.append("colGraduId", colGraduVal);
				formData.append("colAvgGrade", colAvgGrade);
				formData.append("colStandGrade", colStandGrade);
			
// 				/* 경력사항 */
				formData.append("compName", compName);
				formData.append("compJoinY", compJoinY);
				formData.append("compJoinM", compJoinM);
				formData.append("compResignY", compResignY);
				formData.append("compResignM", compResignM);
				formData.append("compStatusId", compStatus);
				formData.append("compLocationId", compLocation);
				formData.append("compDep", compDep);
				formData.append("compSalary", compSalary);
				formData.append("compResignId", ResignReason);
				formData.append("compPosition", compPosition);
				formData.append("compExperienceY", compYear);
				formData.append("compExperienceM", compMonth);
				formData.append("compJobId", compJobField);
				
        		$.ajax({
        			url : "resumeWrite.do",
         			type : "POST",
         			data : formData,
         			processData: false,
         			contentType: false,
         			beforeSend: function () {
         				alert("첨부파일 전송");
         			}	
        		}).done(function (data) {
        			alert("성공");
        			alert(data);
        			location.href="resumeList.do";
        		}).fail(function () {
        			alert("실패");
        		});
        		
        	});
        	
        	/* 이력서 사진 미리보기 */
        	function readURL(input) {
        		if(input.files && input.files[0]) {
        			var reader = new FileReader();
        			reader.onload = function (e) {
        				$("#resume-pre-photo").attr("src", e.target.result);
        			}
        			reader.readAsDataURL(input.files[0]);
        		}
        	};
        	$("#resume-photo-register").change(function () {
        		waitMeAction();
        		readURL(this);
        	})
        	
        	/* 이력서 취소 버튼 */
        	$("#cancel").click(function () {
        		alert("Cancel");
        		location.href="http://localhost:8000/jobstory/user/resumeList.do";
        	});
        	
            /* 신입 경력 항목 추가 제거 */
            $("input[name=experience]").click(function () {
                var careerVal = $("input[name=experience]:checked").val();
                if( careerVal == "exper1001" ){
                    $(".career-container").css("display", "none");
                } else if ( careerVal == "exper1002" ){
                    $(".career-container").css("display", "inline-block");
                }  
            })
            
            /* 학력 항목 추가 제거  */
            $("#education-field").change(function () {
                var educationVal = $("#education-field").val();
                
                switch ( educationVal ) {
	                case "educa1005":
	                    console.log(educationVal);
	                    $("#college-container").css("display", "none");
	                    $("#highschool-container").css("display", "none");
	                    break;
                    case "educa1003":
                        console.log(educationVal);
                        $("#college-container").css("display", "inline-block");
                        $("#highschool-container").css("display", "inline-block");
                        break;
                    case "educa1004":
                        console.log(educationVal);
                        $("#college-container").css("display", "inline-block");
                        $("#highschool-container").css("display", "inline-block");
                        break;
                    case "educa1001":
                        $("#college-container").css("display", "none");
                        $("#highschool-container").css("display", "inline-block");
                        console.log(educationVal); 
                        break;
                }
            });
            
            /* 경력 항목 추가 */
            $("#career-plus > #plus-btn").click(function () {
                alert("경력 추가");
            });

            /* 대학교 학력 항목 추가 */
            $("#college-plus > #plus-btn").click(function () {
            	alert("학력 추가");

            });
            
            /* wait me */
            function waitMeAction() {
    			$("#resume-photo-container").waitMe({
    				effect: "win8",
    				text: "사진을 등록 중",
    				bg: "rgb(255, 255, 255 0.1)",
    				color : "rgb(255, 255, 255)"
    			});
    			setTimeout(function(){
    				$("#resume-photo-container").waitMe("hide");
    			}, 3000);
    		};
            
        </script>
        
        
</body>
</html>