<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">	
    </script>

    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
    <link rel="https://fonts.googleapis.com/css?family=Open+Sans">
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
    <style>
        *, *:before, *:after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

html, body {
  font-size: 62.5%;
  height: 100%;
  overflow: hidden;
}
@media (max-width: 768px) {
  html, body {
    font-size: 50%;
  }
}

svg {
  display: inline-block;
  width: 2rem;
  height: 2rem;
  overflow: visible;
}

.svg-icon {
  cursor: pointer;
}
.svg-icon path {
  stroke: rgba(255, 255, 255, 0.9);
  fill: none;
  stroke-width: 1;
}

input, button {
  outline: none;
  border: none;
}

.cont {
  position: relative;
  height: 100%;
  /* background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/142996/slider-2.jpg"); */
  background-image: url("../img/hand.jpg");
  background-size: cover;
  overflow: auto;
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
}

.demo {
  position: absolute;
  top: 50%;
  left: 50%;
  margin-left: -15rem;
  margin-top: -26.5rem;
  width: 30rem;
  height: 53rem;
  overflow: hidden;
}

.login {
  position: relative;
  height: 100%;
  /* height: 200px; */
  background: linear-gradient(to bottom, rgba(146, 135, 187, 0.8) 0%, rgba(0, 0, 0, 0.6) 100%);
  transition: opacity 0.1s, -webkit-transform 0.3s cubic-bezier(0.17, -0.65, 0.665, 1.25);
  transition: opacity 0.1s, transform 0.3s cubic-bezier(0.17, -0.65, 0.665, 1.25);
  transition: opacity 0.1s, transform 0.3s cubic-bezier(0.17, -0.65, 0.665, 1.25), -webkit-transform 0.3s cubic-bezier(0.17, -0.65, 0.665, 1.25);
  -webkit-transform: scale(1);
          transform: scale(1);
}
.login.inactive {
  opacity: 0;
  -webkit-transform: scale(1.1);
          transform: scale(1.1);
}
.login__check {
  position: absolute;
  top: 16rem;
  left: 13.5rem;
  width: 14rem;
  height: 2.8rem;
  background: #fff;
  -webkit-transform-origin: 0 100%;
          transform-origin: 0 100%;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.login__check:before {
  content: "";
  position: absolute;
  left: 0;
  bottom: 100%;
  width: 2.8rem;
  height: 5.2rem;
  background: #fff;
  box-shadow: inset -0.2rem -2rem 2rem rgba(0, 0, 0, 0.2);
}
.login__form {
  position: absolute;
  top: 50%;
  left: 0;
  width: 100%;
  height: 50%;
  padding: 1.5rem 2.5rem;
  text-align: center;
}
.login__row {
  height: 5rem;
  padding-top: 1rem;
  border-bottom: 1px solid rgba(255, 255, 255, 0.2);
}
.login__icon {
  margin-bottom: -0.4rem;
  margin-right: 0.5rem;
}
.login__icon.name path {
  stroke-dasharray: 73.50196075439453;
  stroke-dashoffset: 73.50196075439453;
  -webkit-animation: animatePath 2s 0.5s forwards;
          animation: animatePath 2s 0.5s forwards;
}
.login__icon.pass path {
  stroke-dasharray: 92.10662841796875;
  stroke-dashoffset: 92.10662841796875;
  -webkit-animation: animatePath 2s 0.5s forwards;
          animation: animatePath 2s 0.5s forwards;
}
.login__input {
  display: inline-block;
  width: 22rem;
  height: 100%;
  padding-left: 1.5rem;
  font-size: 1.5rem;
  background: transparent;
  color: #FDFCFD;
}
.login__submit {
  position: relative;
  width: 100%;
  height: 4rem;
  margin: 2rem 0 2.2rem;
  color: rgba(255, 255, 255, 0.8);
  background: #FF3366;
  font-size: 1.5rem;
  border-radius: 3rem;
  cursor: pointer;
  overflow: hidden;
  transition: width 0.3s 0.15s, font-size 0.1s 0.15s;
}




.login__submit:after {
  content: "";
  position: absolute;
  top: 50%;
  left: 50%;
  margin-left: -1.5rem;
  margin-top: -1.5rem;
  width: 3rem;
  height: 3rem;
  border: 2px dotted #fff;
  border-radius: 50%;
  border-left: none;
  border-bottom: none;
  transition: opacity 0.1s 0.4s;
  opacity: 0;
}
.login__submit.processing {
  width: 4rem;
  font-size: 0;
}
.login__submit.processing:after {
  opacity: 1;
  -webkit-animation: rotate 0.5s 0.4s infinite linear;
          animation: rotate 0.5s 0.4s infinite linear;
}
.login__submit.success {
  transition: opacity 0.1s 0.3s, background-color 0.1s 0.3s, -webkit-transform 0.3s 0.1s ease-out;
  transition: transform 0.3s 0.1s ease-out, opacity 0.1s 0.3s, background-color 0.1s 0.3s;
  transition: transform 0.3s 0.1s ease-out, opacity 0.1s 0.3s, background-color 0.1s 0.3s, -webkit-transform 0.3s 0.1s ease-out;
  -webkit-transform: scale(30);
          transform: scale(30);
  opacity: 0.9;
}
.login__submit.success:after {
  transition: opacity 0.1s 0s;
  opacity: 0;
  -webkit-animation: none;
          animation: none;
}
.login__signup {
  font-size: 1.2rem;
  color: #ABA8AE;
}
.login__signup a {
  color: #fff;
  cursor: pointer;
}



@-webkit-keyframes animRipple {
  to {
    -webkit-transform: scale(3.5);
            transform: scale(3.5);
    opacity: 0;
  }
}

@keyframes animRipple {
  to {
    -webkit-transform: scale(3.5);
            transform: scale(3.5);
    opacity: 0;
  }
}
@-webkit-keyframes rotate {
  to {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
@keyframes rotate {
  to {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
@-webkit-keyframes animatePath {
  to {
    stroke-dashoffset: 0;
  }
}
@keyframes animatePath {
  to {
    stroke-dashoffset: 0;
  }
}
::-webkit-input-placeholder { 
    color: #9e9e9e;
}

.seungjae{
    position: absolute;
    bottom: 10px;
    width: 10%;
    background: #fff;
    text-align: right;
    font-family: 'Noto Sans SC', sans-serif;
    font-weight: bold;
    left: 695px;
    font-size: 15px;
    color: white;
    background: none;
}
    
    </style>
</head>
<body>
	<iframe src="<c:url value="/bgm/signin.mp3"/>" allow="autoplay" style="display:none" id="iframeAudio">
	</iframe> 
        <div class="cont">
                <div class="demo">
                  <div class="login">
                    <div class="login__check"></div>
                    <div class="login__form">
                      <div class="login__row">
                        <svg class="login__icon name svg-icon" viewBox="0 0 20 20">
                          <path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
                        </svg>
                        <input type="text" class="login__input name" placeholder="Username" id="id"/>
                      </div>
                      <div class="login__row">
                        <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
                          <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
                        </svg>
                        <input type="password" class="login__input pass" placeholder="Password" id="pass"/>
                      </div>
                      <button type="button" class="login__submit" >Sign in</button>
                      <div style="margin-bottom:10px;margin-top:-10px">
                          <div id="naverIdLogin" style="display:none"></div>
                            <a onclick="document.getElementById('naverIdLogin_loginButton').click()";>
                            <img id="naver" src="../img/kakao/네이버 아이디로 로그인_아이콘형_White.PNG" width="50px;" >
                            </a>
                            <a id="custom-login-btn" href="javascript:loginWithKakao()">
                            <img id="kakao" src="../img/kakao/카카오.png" width="50px;" style="margin-left:5px;border-radius: 10%">
                            </a>
                            <a id="kakao-login-btn"></a>
                      </div>
                     
                      <p class="login__signup">Don't have an account? &nbsp;<a href="signUpPage.do">Sign up</a></p>
                    </div>
                  </div>      
                </div>
              </div>
				<form id="loginForm" action="loginUser.do" method="post" style="display:none">
					<input type="text" name="id" class="id"/>
					<input type="password" name="pass" class="pass"/>
				</form>
				
<footer class="seungjae">
   <p>&copy; Job Story 2018</p>
</footer>
      <script>
      
      
      $(".login__submit").click(function () {
			var id = $("#id").val();
			var pass = $("#pass").val();
			$(".id").val(id);
			$(".pass").val(pass);
			
			$.ajax({
				url:"searchUser.do",
				type:"POST",
				data:{"id":id,"pass":pass},
				success: function (result) {
					if(result=="") {
						swal(
					            '존재하지 않는 회원입니다!',
					            '회원가입 후 이용해주세요!',
					            'error'
					        ) 
					} else {
					$("#loginForm").submit()
						
					}
					
				}
				
					
			})
			
			//$("#loginForm").submit();
			
	  })
      
      
      
          //카카오
        Kakao.init('9d964721616f86a4ed62c0097d88aa88'); // 자바스크립트 키 
        function loginWithKakao() {
            Kakao.Auth.login({
                success: function (authObj) { 
                    Kakao.API.request({
                    url: '/v1/user/me',
                    success: function(res) {
                    	
                    	location.href='kakao.do?id='+res.id+
        		 		'&name='+res.properties['nickname']+
        		 		'&kakao='+authObj.access_token+
        		 		'&pass=1234'+
        		 		'&authority='+1+
        		 		'&imgSerPath='+
        		 		'&imgOriName='+
        		 		'&imgSerName=' +res.properties['profile_image']
                    	
                    	
                        }

                    })
                },
                fail: function(err) {
                    alert(JSON.stringify(err));
                }
            });
        };


        //네이버

var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "NnYGWxBPDA3XEamVWLoX",
				callbackUrl: "http://localhost:8000/jobstory/sign/naverInfo.do",
				isPopup: false,
        callbackHandle: true,
				loginButton: {color: "green", type: 3, height: 60}
				/* callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다. */
			}
		);

		/* (3) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
		naverLogin.init();


      </script>
</body>
</html>