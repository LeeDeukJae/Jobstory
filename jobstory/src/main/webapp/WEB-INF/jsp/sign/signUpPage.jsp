<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
  
  <style>
     /* ------------------------------------ Click on login and Sign Up to  changue and view the effect
---------------------------------------
*/



* {
  margin: 0px auto;
  padding: 0px;
  text-align: center;
  font-family: 'Open Sans', sans-serif;
}

.cotn_principal {
  position: absolute;
  width: 100%;
  height: 100%;
  background: url("https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d");
  /* 
  background-size: cover;
  overflow: auto; */
/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#cfd8dc+0,607d8b+100,b0bec5+100 */
/* background: #cfd8dc; Old browsers */
/* background: -moz-linear-gradient(-45deg,  #cfd8dc 0%, #607d8b 100%, #b0bec5 100%); FF3.6-15 */
/* background: -webkit-linear-gradient(-45deg,  #cfd8dc 0%,#607d8b 100%,#b0bec5 100%); Chrome10-25,Safari5.1-6 */
/* background: linear-gradient(135deg,  #cfd8dc 0%,#607d8b 100%,#b0bec5 100%); W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
/* filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cfd8dc', endColorstr='#b0bec5',GradientType=1 ); IE6-9 fallback on horizontal gradient */

}


.cont_centrar {
  position: relative;
  float: left;
   width: 100%;
}

.cont_login {
  position: relative;
  width: 640px;
left: 50%;
margin-left: -320px;
  
}

.cont_back_info {  
position: relative;
  float: left;
  width: 640px;
  height: 280px;
overflow: hidden;
  background-color: #fff;
  margin-top: 100px;
box-shadow: 1px 10px 30px -10px rgba(0,0,0,0.5);
}

.cont_forms {
  position: absolute;
  overflow: hidden;
  top:100px;
left: 0px;
  width: 320px;
  height: 280px;
  background-color: #eee;
-webkit-transition: all 0.5s;
-moz-transition: all 0.5s;
-ms-transition: all 0.5s;
-o-transition: all 0.5s;
transition: all 0.5s;
}

.cont_forms_active_login {
box-shadow: 1px 10px 30px -10px rgba(0,0,0,0.5);
  height: 580px;  
top:20px;
left: 0px;
  -webkit-transition: all 0.5s;
-moz-transition: all 0.5s;
-ms-transition: all 0.5s;
-o-transition: all 0.5s;
transition: all 0.5s;

}

.cont_forms_active_sign_up {
box-shadow: 1px 10px 30px -10px rgba(0,0,0,0.5);
  height: 690px;  
top:20px;
left:320px;
-webkit-transition: all 0.5s;
-moz-transition: all 0.5s;
-ms-transition: all 0.5s;
-o-transition: all 0.5s;
transition: all 0.5s;
}

.cont_img_back_grey {
  position: absolute;
  width: 950px;
top:-80px;
  left: -116px;
}

.cont_img_back_grey > img {
  width: 100%;
 /* -webkit-filter: grayscale(100%);     filter: grayscale(100%); */
/* opacity: 0.2; */
animation-name: animar_fondo;
  animation-duration: 20s;
animation-timing-function: linear;
animation-iteration-count: infinite;
animation-direction: alternate;

}

.cont_img_back_ {
  position: absolute;
  width: 1500px;
top:-80px;
  left: -116px;
}

.cont_img_back_ > img {
  width: 100%;
/* opacity: 0.3; */
animation-name: animar_fondo;
animation-duration: 10s;
animation-timing-function: linear;
animation-iteration-count: infinite;
animation-direction: alternate;
}

.cont_forms_active_login > .cont_img_back_ {
top:0px;  
  -webkit-transition: all 0.5s;
-moz-transition: all 0.5s;
-ms-transition: all 0.5s;
-o-transition: all 0.5s;
transition: all 0.5s;
}

.cont_forms_active_sign_up > .cont_img_back_ {
top:0px;  
left: -435px;
  -webkit-transition: all 0.5s;
-moz-transition: all 0.5s;
-ms-transition: all 0.5s;
-o-transition: all 0.5s;
transition: all 0.5s;
}
 

.cont_info_log_sign_up {
position: absolute;
  width: 640px;
  height: 280px;
  top: 100px;
z-index: 1;
} 

.col_md_login {
  position: relative;
  float: left;
  width: 50%;
}

.col_md_login > h2 {
  font-weight: 400;
margin-top: 70px;
    color: #757575;
}

.col_md_login > p {
 font-weight: 400;
margin-top: 15px;
width: 80%;
    color: #37474F;
}

.btn_user, .userSuccess { 
background-color: #26C6DA;
  border: none;
  padding: 10px;
width: 200px;
border-radius:3px;
box-shadow: 1px 5px 20px -5px rgba(0,0,0,0.4);
  color: #fff;
margin-top: 10px;
cursor: pointer;
}

.col_md_sign_up {
  position: relative;
  float: left;
  width: 50%;  
}

.cont_ba_opcitiy > h2 {
  font-weight: 400;
  color: #fff;
}

.cont_ba_opcitiy > p {
 font-weight: 400;
margin-top: 15px;
 color: #fff;
}
/* ----------------------------------
background text    
------------------------------------
 */
.cont_ba_opcitiy {
  position: relative;
  background-color: rgba(120, 144, 156, 0.55);
  width: 80%;
  border-radius:3px ;
margin-top: 60px;
padding: 15px 0px;
}

.btn_company, .companySuccess { 
background-color: #ef5350;
  border: none;
  padding: 10px;
width: 200px;
border-radius:3px;
box-shadow: 1px 5px 20px -5px rgba(0,0,0,0.4);
  color: #fff;
margin-top: 10px;
cursor: pointer;
}
.cont_forms_active_sign_up {
z-index: 2;  
}


@-webkit-keyframes animar_fondo {
  from { -webkit-transform: scale(1) translate(0px);
-moz-transform: scale(1) translate(0px);
-ms-transform: scale(1) translate(0px);
-o-transform: scale(1) translate(0px);
transform: scale(1) translate(0px); }
  to { -webkit-transform: scale(1.5) translate(50px);
-moz-transform: scale(1.5) translate(50px);
-ms-transform: scale(1.5) translate(50px);
-o-transform: scale(1.5) translate(50px);
transform: scale(1.5) translate(50px); }
}
@-o-keyframes identifier {
  from { -webkit-transform: scale(1);
-moz-transform: scale(1);
-ms-transform: scale(1);
-o-transform: scale(1);
transform: scale(1); }
  to { -webkit-transform: scale(1.5);
-moz-transform: scale(1.5);
-ms-transform: scale(1.5);
-o-transform: scale(1.5);
transform: scale(1.5); }

}
@-moz-keyframes identifier {
  from { -webkit-transform: scale(1);
-moz-transform: scale(1);
-ms-transform: scale(1);
-o-transform: scale(1);
transform: scale(1); }
  to { -webkit-transform: scale(1.5);
-moz-transform: scale(1.5);
-ms-transform: scale(1.5);
-o-transform: scale(1.5);
transform: scale(1.5); }

}
@keyframes identifier {
  from { -webkit-transform: scale(1);
-moz-transform: scale(1);
-ms-transform: scale(1);
-o-transform: scale(1);
transform: scale(1); }
  to { -webkit-transform: scale(1.5);
-moz-transform: scale(1.5);
-ms-transform: scale(1.5);
-o-transform: scale(1.5);
transform: scale(1.5); }
}
.cont_form_login {
  position: absolute;
  opacity: 0;
  display: none;
  width: 320px;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_forms_active_login {
z-index: 2;  
}


.cont_form_sign_up {
  position: absolute;
  opacity: 0;
  display: none;
  width: 320px;
  /* float: left; */
  -webkit-transition: all 0.5s;
-moz-transition: all 0.5s;
-ms-transition: all 0.5s;
-o-transition: all 0.5s;
transition: all 0.5s;
}

  
.cont_form_sign_up > input {
text-align: left;
  padding: 15px 5px;
margin-left: 10px;
margin-top: 20px;
  width: 260px;
border: none;
    color: #757575;
}

.cont_form_sign_up > h2 {
margin-top: 50px; 
font-weight: 400;
  color: #757575;
}


.cont_form_login > input {
  padding: 15px 5px;
margin-left: 10px;
margin-top: 20px;
  width: 260px;
border: none;
text-align: left;
  color: #757575;
}

.cont_form_login > h2 {
margin-top: 50px; 
font-weight: 400;
  color: #757575;
}
.cont_form_login > a,.cont_form_sign_up > a  {
  color: #757575;
    position: relative;
    float: left;
    margin: 10px;
margin-left: 30px;
}

.userpic {
  border-radius: 100%;
  width: 30%;  
  margin-top: 5%;
}



.label__checkbox {
  display: none;
  
}
.label__check {
  display: inline-block;
  border-radius: 50%;
  border: 2px solid rgba(0, 0, 0, 0.1);
  background: white;
  vertical-align: middle;
  margin-right: 20px;
  width: 2em;
  height: 2em;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: border 0.3s ease;
  font-family: 'Lato', monospace;
  

}
.label__check i.icon {
  opacity: 0.2;
  font-size: calc(1rem + 1vw);
  color: transparent;
  transition: opacity 0.3s 0.1s ease;
  -webkit-text-stroke: 3px rgba(0, 0, 0, 0.5);
}
.label__check:hover {
  border: 2px solid rgba(0, 0, 0, 0.2);
}
.label__checkbox:checked + .label__text .label__check {
  -webkit-animation: check 0.5s cubic-bezier(0.895, 0.03, 0.685, 0.22) forwards;
          animation: check 0.5s cubic-bezier(0.895, 0.03, 0.685, 0.22) forwards;
}
.label__checkbox:checked + .label__text .label__check .icon {
  opacity: 1;
  -webkit-transform: scale(0);
          transform: scale(0);
  color: white;
  -webkit-text-stroke: 0;
  -webkit-animation: icon 0.3s cubic-bezier(1, 0.008, 0.565, 1.65) 0.1s 1 forwards;
          animation: icon 0.3s cubic-bezier(1, 0.008, 0.565, 1.65) 0.1s 1 forwards;
}
.center {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}
@-webkit-keyframes icon {
  from {
    opacity: 0;
    -webkit-transform: scale(0.3);
            transform: scale(0.3);
  }
  to {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1);
  }
}
@keyframes icon {
  from {
    opacity: 0;
    -webkit-transform: scale(0.3);
            transform: scale(0.3);
  }
  to {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1);
  }
}
@-webkit-keyframes check {
  0% {
    width: 1.5em;
    height: 1.5em;
    border-width: 5px;
  }
  10% {
    width: 1.5em;
    height: 1.5em;
    opacity: 0.1;
    background: rgba(0, 0, 0, 0.2);
    border-width: 15px;
  }
  12% {
    width: 1.5em;
    height: 1.5em;
    opacity: 0.4;
    background: rgba(0, 0, 0, 0.1);
    border-width: 0;
  }
  50% {
    width: 2em;
    height: 2em;
    background: #00d478;
    border: 0;
    opacity: 0.6;
  }
  100% {
    width: 2em;
    height: 2em;
    background: #00d478;
    border: 0;
    opacity: 1;
  }
}
@keyframes check {
  0% {
    width: 1.5em;
    height: 1.5em;
    border-width: 5px;
  }
  10% {
    width: 1.5em;
    height: 1.5em;
    opacity: 0.1;
    background: rgba(0, 0, 0, 0.2);
    border-width: 15px;
  }
  12% {
    width: 1.5em;
    height: 1.5em;
    opacity: 0.4;
    background: rgba(0, 0, 0, 0.1);
    border-width: 0;
  }
  50% {
    width: 2.3em;
    height: 2.3em;
    background: #00d478;
    border: 0;
    opacity: 0.6;
  }
  100% {
    width: 2.3em;
    height: 2.3em;
    background: #00d478;
    border: 0;
    opacity: 1;
  }
}

#userForm{
	display: none;
}

#companyForm{
	display: none;
}

#userFile { display:none; }
#companyFile { display:none; }

.seungjae{
    position: absolute;
    bottom: 5px;
    width: 10%;
    background: #fff;
    text-align: right;
    font-family: 'Noto Sans SC', sans-serif;
    font-weight: bold;
    left: 695px;
    background: none;
}
 </style>   
</head>
<body>
<%-- 	<iframe src="<c:url value="/bgm/signin.mp3"/>" allow="autoplay" style="display:none" id="iframeAudio">
	</iframe>  --%>
    <div class="cotn_principal">
        <div class="cont_centrar">
        
          <div class="cont_login">
        <div class="cont_info_log_sign_up">
              <div class="col_md_login">
        <div class="cont_ba_opcitiy">
                
                <h2>일반 회원</h2>  
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p> 
          <button class="btn_user" onclick="user()">SIGN UP</button>
          </div>
          </div>
        <div class="col_md_sign_up">
        <div class="cont_ba_opcitiy">
          <h2>기업 회원</h2>
        
          
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        
          <button class="btn_company" onclick="company()">SIGN UP</button>
        </div>
          </div>
               </div>
        
            
            <div class="cont_back_info">
               <div class="cont_img_back_grey">
               <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
               </div>
               
            </div>
        <div class="cont_forms" >
            <div class="cont_img_back_">
               <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
               </div>
         <div class="cont_form_login">
        
           <h2>일반 회원</h2>
           
           <div>
           
              <input type="file" id="userFile" name="attach"/>       
              <a id="btn-upload"><img src="../img/kakao/admin.jpg" class='userpic' alt=""></a>    
          </div>
           <input type="text" placeholder="Id" name="id" id="userId"/>
           
                <div class="center" style="margin-left: 100px; padding-bottom:42px; width: 100px;height: 30px; ">
                        <label class="label">
                          <input  class="label__checkbox" type="checkbox" value=1 id="check1"/>
                          <span class="label__text">
                            <span class="label__check" >
                              <i class="fa fa-check icon"></i>
                            </span>
                          </span>
                        </label>
                </div>

           <input type="text" placeholder="name" name="name" id="userName"/>
           <input type="password" placeholder="Password" name="pass" id="userPass"/>
           <input type="password" placeholder="Confirm Password" name="pass2" id="userPass2"/>
           
           <form id="userForm" method="post" enctype="multipart/form-data" action="<c:url value="/sign/insertUser.do"/>">
           		 <input type="file"      name="attach"  class="userFile"/>
           		 <input type="text"      name="id"   class="userId"/>
           		 <input type="hidden"    name="authority" value="1" class="authority"/>
		         <input type="text"      name="name" class="userName"/>
		         <input type="password"  name="pass" class="userPass" />
		         <button id="userSubmit">userSub</button>
           </form>
        <button class="btn_user" onclick="user()">SIGN UP</button>
          </div>
          
           <div class="cont_form_sign_up">
        
             <h2>기업 회원</h2>
             <div>
              <input type="file" id="companyFile" name="file" />       
              <a id="btn-upload2"><img src="../img/kakao/admin.jpg" class='userpic' alt=""></a>    
          </div>
        <input type="text" placeholder="Id" name="id" id="companyId"/>
        <div class="center" style="margin-left: 100px; padding-bottom:176px; width: 100px;height: 30px; ">
          <label class="label">
            <input  class="label__checkbox" type="checkbox" value="2" id="check2"/>
            <span class="label__text">
              <span class="label__check" >
                <i class="fa fa-check icon"></i>
              </span>
            </span>
          </label>
         </div>
        <input type="text" placeholder="name" name="name" id="companyName"/>
        <input type="password" placeholder="Password" name="pass" id="companyPass"/>
        <input type="password" placeholder="Confirm Password" name="pass2" id="companyPass2"/>
        <input type="text" placeholder="사업자 등록 번호" name="bsNum" id="bsNum"/>
        <input type="password" placeholder="플러스친구 URL" name="kakaoId" id="kakaoId"/>
        <button class="btn_company" onclick="company()">SIGN UP</button>
        
        <form id="companyForm" method="post" enctype="multipart/form-data" action="<c:url value="/sign/insertUser.do"/>">
           		 <input type="file"      name="attach"  class="companyFile"/>
           		 <input type="text"      name="id"   class="companyId"/>
           		 <input type="hidden"    name="authority" value="2" class="authority"/>
		         <input type="text"      name="name" class="companyName"/>
		         <input type="password"  name="pass" class="companyPass" />
		         <input type="text" placeholder="사업자 등록 번호" name="enterPriseNo" class="bsNum"/>
        		 <input type="text" placeholder="플러스친구 URL" name="kakaoId" class="kakaoId"/>
		         <button id="companySubmit">companySub</button>
           </form>
        
          </div>
        
            </div>
            
          </div>
         </div>
        </div>

<footer class="seungjae">
   <p>&copy; Job Story 2018</p>
</footer>

    <script>


function user() {
    $(".btn_company").attr("onclick","company()");
    document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_login";  
    document.querySelector('.cont_form_login').style.display = "block";
    document.querySelector('.cont_form_sign_up').style.opacity = "0";     
            

    setTimeout(function(){  document.querySelector('.cont_form_login').style.opacity = "1"; },400);  

    setTimeout(function(){    
    document.querySelector('.cont_form_sign_up').style.display = "none";
    },200);  

    $(".btn_user").attr("onclick","userCheck()");
    
}

function company(at) {
    $(".btn_user").attr("onclick","user()");
    document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_sign_up";
    document.querySelector('.cont_form_sign_up').style.display = "block";
    document.querySelector('.cont_form_login').style.opacity = "0";
    document.querySelector('.cont_img_back_ > img').style.opacity = "2";

    
    setTimeout(function(){  document.querySelector('.cont_form_sign_up').style.opacity = "1";
    },100);  

    setTimeout(function(){   document.querySelector('.cont_form_login').style.display = "none";
    },400);  
    
    $(".btn_company").attr("onclick","companyCheck()");
    
}    


//일반회원 빈 입력창 확인
function userCheck() {
  if($("#userId").val()=="") {swal('아이디를 입력해주세요');return;}
  if($("#userName").val()=="") {swal('이름을 입력해주세요'); return;}
  if($("#userPass").val()=="") {swal('비밀번호를 입력해주세요'); return;}
  if($("#userPass2").val()=="") {swal('비밀번호 확인을 입력해주세요'); return;}
  if($("#userPass").val() !=$("#userPass2").val()) {swal('비밀번호가 다릅니다 확인해주세요'); return;}
  $(".userId").val($("#userId").val());
  $(".userName").val($("#userName").val())
  $(".userPass").val($("#userPass").val());
  

  swal(
          '승인완료!',
          '가입이 완료되었습니다!',
          'success'
	);

  $("#userSubmit").trigger('click');
}

//기업회원 빈 입력창 확인
function companyCheck() {
  if($("#companyId").val()=="") {swal('아이디를 입력해주세요');return;}
  if($("#companyName").val()=="") {swal('이름을 입력해주세요');return;}
  if($("#companyPass").val()=="") {swal('비밀번호를 입력해주세요');return;}
  if($("#companyPass2").val()=="") {swal('비밀번호 확인을 입력해주세요');return;}
  if($("#bsNum").val()=="") {swal('사업자 등록번호를 입력해주세요');return;}
  if($("#kakaoId").val()=="") {swal('플러스친구 URL 을 입력해주세요');return;}
  
  $(".companyId").val($("#companyId").val());
  $(".companyName").val($("#companyName").val())
  $(".companyPass").val($("#companyPass").val());
  $(".bsNum").val($("#bsNum").val());
  $(".kakaoId").val($("#kakaoId").val());
  
  swal(
            '승인완료!',
            '가입이 완료되었습니다!',
            'success'
  )
  $("#companySubmit").trigger('click');
}


// 중복확인

$("#check1").click(function () {
	event.preventDefault();
	var id= $("#userId").val()
	console.log()
	$.ajax({
		url:"check.do",
		type:"post",
		data:{"id":id},
		success: function (result) {
			if(result==0){
				$("#check1").prop("checked", true);
			        swal(
			            '승인완료!',
			            '사용가능한 아이디 입니다!',
			            'success'
					     ) 
			} else {
				$("#check1").prop("checked", false);
				swal(
		            '승인불가!',
		            '중복된 아이디 입니다!',
		            'error'
				     )
			}
		}
	})
})

$("#check2").click(function () {
	event.preventDefault();
	var id= $("#companyId").val()
	$.ajax({
		url:"check.do",
		type:"post",
		data:{"id":id},
		success: function (result) {
			if(result==0){
				$("#check2").prop("checked", true);
				swal(
		            '승인완료!',
		            '사용가능한 아이디 입니다!',
		            'success'
					 ) 
			} else {
				$("#check2").prop("checked", false);
				swal(
		            '승인불가!',
		            '중복된 아이디 입니다!',
		            'error'
					 ) 
			}
		}
	})
})




// 회원가입창 이미지 넣기
    $(function () {
      $('#btn-upload').click(function (e) {
      e.preventDefault();
      $('.userFile').click();
      });
    });

    $(function () {
      $('#btn-upload2').click(function (e) {
      e.preventDefault();
      $('.companyFile').click();
      });
    });
   
    function changeValue(obj){
      //alert(obj.value);
    }




    </script>    
</body>
</html>