<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>       
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
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script> 
<!--부트스트랩-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>
<!--폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300" rel="stylesheet">

<title>메인 페이지</title>
<style>
.enquiry {
	padding: 35px 0 35px 39px;
	/* background: #fcfcfc; */
	display: block;
	/* margin: 31px 0 15px; */
	color: #444;
	font-size: 15px;
	font-weight: bold;
	letter-spacing: -1px;
	border: 1px solid black;
	width: 950px;
	box-shadow: 0px 2px 13px rgba(0,0,0,0.1), 0px 8px 30px rgba(0,0,0,0.2), 0px 30px 60px 1px rgba(0,0,0,0.4);
}

section {
	display: block;
}

.content_tool {
	border-collapse: collapse;
	margin-left: 300px;
}

.wrap_column {
	margin-top: 0;
}

.form_title {
	display: block;
	margin: 31px 0 15px;
	color: #444;
	font-size: 15px;
	font-weight: bold;
	letter-spacing: -1px;
}

.wrap_result {
    margin-top: -39%;
    display: initial;
    position: absolute;
    padding: 0 34px 16px 34px;
    width: 394px;
    border: 1px solid #5d6283;
    box-sizing: border-box;
    vertical-align: top;
    background: #fff;
    height: 82.8%;
    width: 436px;
    left: 51%;
    box-shadow: 0px 2px 13px rgba(0,0,0,0.1), 0px 8px 30px rgba(0,0,0,0.2), 0px 30px 60px 1px rgba(0,0,0,0.4);
}

#rudrhans {
    text-align: left;
    list-style: none;
    padding-top: 244px;
    font-size: 11px;
    margin-left: -42px;
}

.content_tool {
	border-collapse: collapse;
}

#rudrhans {
    text-align: center;
    list-style: none;
    padding-top: 205px;
    font-size: 12px;
    margin-left: -42px;
}

.wrap_btns {
	bottom: 10px;
}

.result_value {
	font-size: 45px;
}

.wrap_tool {
    margin-top: 70px;
    margin-left: 5%;
}

#mmoney {
	width: 310px;
}

h2 {
	color: rgb(79, 185, 159);
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

.btn-info {
	background-color: rgb(79, 185, 159);
	color: white;
}

.btn-info:hover {
	background-color: rgb(6, 133, 135);
	color: rgb(242, 177, 52);
}
#plusbtn {
   margin-left: -38px;
}


.following {
	margin-top: 25px;
	font-weight: bold;
}

.seungjae {
    position: absolute;
    bottom: -100px;
    width: 50%;
    height: 10;
    background: #fff;
    text-align: center;
    left: 25%;
}
.enquiry {
    padding: 2px 0 35px 31px;
    color: #444;
    font-size: 15px;
    font-weight: bold;
    letter-spacing: -1px;
    border: 1px solid black;
    width: 400px;
}

#choice {
    border-top: double;
    width: 91%;
}

.nav-tabs {
    margin-top: 5%;
    border-bottom: 2px solid #ddd;
    margin-bottom: -4%;
    margin-left: 24.9%;
    width: 53.6%;
}
.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
    color: #fff;
    cursor: default;
    background-color: rgb(79,168,159);
    border: 1px solid #ddd;
    border-bottom-color: transparent;
}
.content_tool {
    border-collapse: collapse;
    margin-left: 315px;
}
.h3, h3 {
    font-size: 24px;
    font-weight: bolder;
}

input {
	text-align: right;
}
</style>
</head>  
<body>
<ul class="nav nav-tabs">
  <li role="presentation"><a href="<c:url value="/main/salaryCal.do"/>">연봉 계산기</a></li>
  <li role="presentation" class="active"><a href="#">퇴직금 계산기</a></li>
</ul>
				
	<!-- 전체 영역 -->
	<div class="wrap_tool">
		<div class="content_tool">	
				<section class="enquiry">
					<h3 class="title">필수 입력</h3>
				
	
					<!-- 입사일 달력포함 -->
					<div class="column">
						<div class="form_title">
							<label for="start_dt">입사일</label>
						</div>
						<div class="form_field">		
							<span class="sri_input2 date"><input type="date" id="startdate" placeholder="2016-01-01" maxlength="10" /></span>
						</div>
	
					</div>
					
					<!-- 퇴사일 달력 포함 -->
					<div class="column">
						<div class="form_title">
							<label for="end_dt">퇴사일 <span class="sub">(마지막 근무일)</span></label>
						</div>
						<div class="form_field">			
							<span class="sri_input2 date"><input type="date" id="enddate" placeholder="2017-12-31" maxlength="10" /></span>
						</div>
					</div>
				
					<div class="form_title">
						<span class="has_form">월급 <em class="sub">(세전 퇴사 전 3개월과 동일하게 계산됩니다.)</em></span>
					</div>			
					<div class="form_salary same">
						<span class="sri_input2 large right" id="payone"> <input
							type="text" id="pay" placeholder="0" title="월급" maxlength="12"
							value="" onkeydown="return showKeyCode(event)" />
						</span> <span class="sri_input2_text">원</span>
						<div class="control">
							<p id="plusbtn" class="btn">
								<button type="button" class="btn_basic_type02" id="plusm" onclick="plusm">+100만</button>
								<button type="button" class="btn_basic_type02" id="pluss">+10만</button>
							</p>
						</div>
					</div>
					
					<h3 id="choice" class="title"><br>선택 입력</h3>
					<div class="wrap_column">
						<div class="column wide">
							<div class="form_title">
								<label for="annualBonus">연간상여금</label>
							</div>
							<div class="form_field">
								<span class="sri_input2 right"> <input type="text"
									id="bonuspay" class="bonuspay" placeholder="0" maxlength="12"
									value="100000" onkeydown="return showKeyCode(event)" /> <input
									type="hidden" id="bobo" class="bobo" />
								</span> <span class="sri_input2_text">원</span>
							</div>
						</div>
		
					</div>
				</div>
			</section>
			<!-- 큰 영역 -->	
			</div>
	
<!-- 퇴직금 계산기 결과창 -->	
<div class="wrap_column">
	<section class="wrap_result">
	<h2 class="blind">퇴직금 계산기 결과</h2>
	<br>
		<div class="title wide">
			<span class="text">예상 퇴직금</span>
			<br> 
			<span class="result_value">
			<strong id="money"><input type="text" placeholder="0" id="mmoney"></strong>원</span>
			<input type="hidden" id="xhlwlrrma">
		</div>
		<div class="result_list">
		<br>
			<dl>
				<dt>1일 평균 임금</dt>
				<dd id="day_avg_pay">
					<span>
						<input type="text" id="oneday" placeholder="0">
					</span>원
				</dd>
			</dl>
		</div>
		<div class="wrap_btns">
			<button type="button" class="doClear" id="doClear" onclick="doClear()">초기화</button>
		<button type="button" class="doAdd" id="doAdd" onclick="doAdd()">계산하기</button>
		</div>
		<ul class="list_tool_info" id="rudrhans">
			<li>-본 계산기는 모의계산 결과로 법적 효력이 없습니다.</li>
			<li>-사용자가 입력한 근무기간 및 임금 기준으로만 산정합니다.</li>
			<li>-근로자퇴직급여보장법에 의거 퇴직금은 계속근로기간 1년에 대하여 30일분 이상의 평균임금으로 계산합니다.</li>
			<li>-회사별 상이한 임금체계에 따라 실제 산정되는 금액과 차이가 발생할 수 있으니 참고용으로 활용하시기 바랍니다.</li>
		</ul>      
	</section>
</div>
			


	                      
    
    <footer class="seungjae">
        <p>&copy; Job Story 2018</p>
    </footer>

    <!-- 계산 파트 -->
    <script>
        var currentPay=0;
        $('#pay').keyup(function () {
            currentPay = $("#pay").val();
            console.log(currentPay);
        });
        
//100만원 10만원 추가
  $('#plusm').on({
        "click" : function(){
            // var tempay = $("#pay").val() ? parseInt($("#pay").val()) : 0;
            // console.log(currentPay);
            // currentPay = parseInt(currentPay) + 1000000;
            $("#pay").val(($("#pay").val() ? parseInt($("#pay").val()) : 0)+1000000);
        }
    
    });
  $('#pluss').on({
        "click" : function(){
            // console.log(currentPay);
            // currentPay = parseInt(currentPay) + 100000;
            $("#pay").val(($("#pay").val() ? parseInt($("#pay").val()) : 0)+100000);
        }
    
    });


              var bonuss=0;
        $('#bonuspay').keyup(function () {
            bonuss = $("#bonuspay").val();
            console.log(bonuss);
        });


 
 
 
   //일평균 계산금 표시
        //     var onePay=0;
        // $('#pay').keyup(function () {
        //     onePay = $("#pay").val();
        //     console.log(onePay);
        // });
 
  
        //날짜 계산 및 계산
  $('#doAdd').on({
        "click" : function(){

var starts = $("#startdate").val(); 
var ends = $("#enddate").val(); 
var arr1 = starts.split('-');
var arr2 = ends.split('-');
var dat1 = new Date(arr1[0], arr1[1], arr1[2]);
var dat2 = new Date(arr2[0], arr2[1], arr2[2]);





var diff = dat2 - dat1;
var currDay = 24 * 60 * 60 * 1000; // 시 * 분 * 초 * 밀리세컨
var day = parseInt(diff/ currDay);
console.log(day);
console.log("* 일수 차이 : " + parseInt(diff / currDay) + " 일");

if(day < 365){
    alert("365일 미만은 퇴직금을 받을 수 없습니다.")
}  else{

            $("#oneday").val(parseInt($("#pay").val())/209 * 7);
            $("#bobo").val(parseInt($("#bonuspay").val()*3/12));
            $("#xhlwlrrma").val(parseInt($("#oneday").val()) * 30 *365 / 365 *0.04);
           $("#mmoney").val(parseInt($("#oneday").val()) * 30 * day / 365 - parseInt($("#xhlwlrrma").val()) + parseInt($("#bobo").val())  );

        }
        }
    });





//텍스트 타입이 직접 수정되지 않도록 readOnly 적용

 var dis = document.getElementById('mmoney')
 var dis2 = document.getElementById('oneday')
 dis.readOnly = true;
 dis2.readOnly = true;



//   $('#pluss').on({
//         "click" : function(){
//             var number = ($('#pay').attr('value'));
//             if(number==999999999999){ // 숫자가 9이상이라면 초기화
//                 $('#pay').attr('value', '0');
//             }else{
//                 var plus_num = parseInt(number) + 100000;
//                 $('#pay').attr('value', plus_num);
//             }
//         }
//     });

 $('#doClear').on({
        "click" : function(){
             currentPay = parseInt(currentPay)*0;
            $("#pay").val(currentPay);
            $("#oneday").val(currentPay);
            $("#mmoney").val(currentPay);
            // $("#bonuspay").val(currentPay);
            

        } 
    }) 
        function doClear(){
        //     //id가 result 인 엘리먼트 안의 내용을 지운다..
                 var divEle = document.getElementById("#bonuspay")
                // divEle.innerHTML="value","";
        }

//콤마찍기?












  //숫자만 입력 되는 스크립트
  function showKeyCode(event) {
			event = event || window.event;
			var keyID = (event.which) ? event.which : event.keyCode;
			if( ( keyID >=48 && keyID <= 57 ) || ( keyID >=96 && keyID <= 105 ) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 )
			{
				return;
			}
			else
			{
				return false;
			}
		}
    </script>




</body>
</html>