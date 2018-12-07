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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
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
    margin-top: -37.8%;
    display: initial;
    position: absolute;
    padding: 0 34px 16px 34px;
    width: 394px;
    height: 100%;
    border: 1px solid #5d6283;
    box-sizing: border-box;
    vertical-align: top;
    background: #fff;
    height: 75.9%;
    width: 436px;
    left: 50.5%;
    box-shadow: 0px 2px 13px rgba(0,0,0,0.1), 0px 8px 30px rgba(0,0,0,0.2), 0px 30px 60px 1px rgba(0,0,0,0.4);
}

#rudrhans {
    font-size: 1px;
}

.content_tool {
	border-collapse: collapse;
}

#rudrhans {
    margin-bottom: -6%;
    text-align: left;
    list-style: none;
    /* padding-top: 244px; */
    font-size: 10px;
    margin-left: -32px;
    margin-bottom: -35%;
    margin-top: 35%;
	padding-left: 17px;
    padding-right: 10px;
}

.wrap_btns {
	bottom: 10px;
}

.result_value {
	font-size: 30px;
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

.following {
	margin-top: 25px;
	font-weight: bold;
}

.seungjae {
    position: absolute;
    bottom: -40px;
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
    height: 605px;
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
    width: 52.8%;
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
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
    width: 90%;
	text-align: right;
}
.wrap_btns {
    bottom: 29px;
    margin-top: 8%;
    margin-left: 15%;
}
#choice {
    border-top: double;
    width: 91%;
}

hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
}
#plusbtn {
	margin-left: -36px;
}
</style>
</head>  
<body>
<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#">연봉 계산기</a></li>
  <li role="presentation"><a href="<c:url value="/main/severanceCal.do"/>">퇴직금 계산기</a></li>
</ul>
				
   <!-- 전체 영역 -->
	
   <div class="wrap_tool">
	  <div class="content_tool">    
                <section class="enquiry">
                    <h3 class="title">필수 입력</h3>  

                    <div class="form_title">
                        <span class="has_form">월급 <em class="sub">(세전 퇴사 전 3개월과 동일하게 계산됩니다.)</em></span>
                    </div>
                    <div class="form_salary same">
                        <span class="sri_input2 large right" id="payone">
                            <input type="text" id="pay" placeholder="0" title="월급" maxlength="12" value="" onkeydown="return showKeyCode(event)"/>
                        </span>
                        <span class="sri_input2_text">원</span>
                        <div id="plusbtn" class="control">
                            <p class="kor">
                                <em id="trans_price"></em>
                            </p>
                            <p class="btn">
                                <button type="button" class="btn_basic_type02" id="plusc" onclick="plusm">+1000만</button>
                                <button type="button" class="btn_basic_type02" id="plusm" onclick="plusm">+100만</button>
                                <button type="button" class="btn_basic_type02" id="pluss">+10만</button>
                            </p>
                        </div>
                    </div>
                    <hr><hr>
                    <h3 id="choice" class="title"><br>선택 입력</h3>
                     <div class="wrap_column">
	                     <div class="column wide">
	                         <div class="form_title"><label for="annualBonus">연간상여금</label></div>
	                         <div class="form_field">
	                                         <span class="sri_input2 right">
	                                             <input type="text" id="bonuspay" class="bonuspay" placeholder="0" maxlength="12" value="100000"/>
	                                         </span>
	                             <span class="sri_input2_text">원</span>
	                         </div>
	                     </div>                         
                     </div>
		        <ul class="list_tool_info" id="rudrhans">
			        <li>-본 계산기는 모의계산 결과로 법적 효력이 없습니다.</li>
			        <li>-사용자가 입력한 임금 기준으로만 산정합니다.</li>
			        <li>-회사별 상이한 임금체계에 따라 실제 산정되는 금액과 차이가 발생할 수 있으니 참고용으로 활용하시기 바랍니다.</li>
		        </ul>                            
        	</div>   
        
            
   <!-- 끝 -->        
   </div> 

  <!-- 연봉 계산기 결과 -->
   <div class="wrap_column">
     <div class="column">
         <section class="wrap_result">
                     <h2 class="blind">연봉 계산기 결과</h2>
                     <br>
                     <div class="title wide">
                         <span class="text">예상 연봉:</span><br>
                         <span class="result_value"><strong id="money">
                             <input type="text" placeholder="0" id="sums2"></strong>원</span>
                             <br><br><br>
                            <span>국민보험:</span> 
                            <input type="text" placeholder="0" id="rnrals"></strong>원</span>
                            <br><br>
                            <span>건강보험:</span> <input type="text" placeholder="0" id="rjsrkd"></strong>원</span>
                            <br><br>
                            <span>장기요양:</span> <input type="text" placeholder="0" id="wkdrl"></strong>원</span>
                            <br><br>
                            <span>고용보험:</span> <input type="text" placeholder="0" id="rhdyd"></strong>원</span>
                            <br><br>
                            <span>공재액:</span> <input type="text" placeholder="0" id="sums"></strong>원</span>
                             <input type="hidden" placeholder="0" id="mmoney">
                         </span>
                         <br><br>
                         <input type="hidden" id="xhlwlrrma">
                     </div>
                     <div class="wrap_btns">
                       <button type="button" class="btn btn-success" id="doClear" onclick="doClear()">초기화</button>
                       <button type="button" class="btn btn-success" id="doAdd" onclick="doAdd()">계산하기</button>
                     </div>
            </section>
     </div>
 </div>

    <!-- 계산 파트 -->
    <script>
            var currentPay=0;
            $('#pay').keyup(function () {
                currentPay = $("#pay").val();
                console.log(currentPay);
            });
    //1000만원 100만원 10만원 추가
    $('#plusc').on({
            "click" : function(){
                // var tempay = $("#pay").val() ? parseInt($("#pay").val()) : 0;
                // console.log(currentPay);
                // currentPay = parseInt(currentPay) + 1000000;
                $("#pay").val(($("#pay").val() ? parseInt($("#pay").val()) : 0)+10000000);
            }
        
        });
    
    
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

     
      $('#doAdd').on({
            "click" : function(){
                // $("#oneday").val(parseInt($("#pay").val())/209 * 7);
                // $("#bonuspay").val(parseInt($("#bonuspay")*3/12);
                // $("#xhlwlrrma").val(parseInt($("#oneday").val()) * 30 *365 / 365 *0.04);
               $("#mmoney").val(parseInt($("#pay").val()*0.083));
               $("#rnrals").val(parseInt($("#mmoney").val()*0.043));
               $("#rjsrkd").val(parseInt($("#mmoney").val()*0.029));
               $("#wkdrl").val(parseInt($("#rjsrkd").val()*0.0738));
               $("#rhdyd").val(parseInt($("#mmoney").val()*0.0062));
               $("#sums").val(parseInt($("#rnrals").val()) + parseInt($("#rjsrkd").val())+ parseInt($("#wkdrl").val())+ parseInt($("#rhdyd").val())                 );
               $("#sums2").val(parseInt($("#mmoney").val()) - parseInt($("#sums").val()));
                
            }
        
        });
    
    
    
     $('#doClear').on({
            "click" : function(){
                 currentPay = parseInt(currentPay)*0;
                $("#pay").val(currentPay);
                $("#oneday").val(currentPay);
                $("#mmoney").val(currentPay);
                $("#mmoney").val(currentPay);
                $("#rnrals").val(currentPay);
                $("#rjsrkd").val(currentPay);
                $("#wkdrl").val(currentPay);
                $("#rhdyd").val(currentPay);
                $("#sums").val(currentPay);
                $("#sums2").val(currentPay);
                // $("#bonuspay").val(currentPay);
                
    
            } 
        }) 
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
    
    
    
    
    //텍스트 타입이 직접 수정되지 않도록 readOnly 적용
    
     var dis = document.getElementById('mmoney')
     var dis2 = document.getElementById('oneday')
     var dis2 = document.getElementById('rnrals')
     var dis3 = document.getElementById('rjsrkd')
     var dis4 = document.getElementById('wkdrl')
     var dis5 = document.getElementById('rhdyd')
     var dis6 = document.getElementById('sums2')
     var dis7 = document.getElementById('sums')
    
    
    
     dis.readOnly = true;
     dis2.readOnly = true;
     dis3.readOnly = true;
     dis4.readOnly = true;
     dis5.readOnly = true;
     dis6.readOnly = true;
     dis7.readOnly = true;
    

    
          
</script>



</body>
</html>