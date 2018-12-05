<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


    .enquiry{
        padding: 35px  0   35px 39px;
        /* background: #fcfcfc; */
        display: block;
    /* margin: 31px 0 15px; */
    color: #444;
    font-size: 15px;
    font-weight: bold;
    letter-spacing: -1px;
    border: 1px solid black;
    width: 950px;
        }
    section{
        display: block;
    }
    .content_tool{
        border-collapse: collapse;
        margin-left: 300px;
    }
    .wrap_column {
        margin-top: 0;
    }
    .form_title{
        display: block;
    margin: 31px 0 15px;
    color: #444;
    font-size: 15px;
    font-weight: bold;
    letter-spacing: -1px;
    }



    .wrap_result{
    display: table-cell;
    /* position:fixed; */
    padding: 0 34px 105px 34px;
    width: 394px;
    height: 100%;
    border: 1px solid #5d6283;
    box-sizing: border-box;
    vertical-align: top;
    background: #fff;
    float:right;
    height: 575px;
    width: 428px;
    margin-top: 33px;
    
    }
    .content_tool{
        border-collapse: collapse;
    }



    #rudrhans{
        text-align: center; 
        list-style:none;
        padding-top: 20px;
    }
    .wrap_btns{
        bottom:10px;
    }

    .result_value{
        font-size: 45px;

    }

    .wrap_tool{
        margin-top: 90px;
    }


    #mmoney{
        width: 310px;
    }

    h2{
        color: rgb(79, 185, 159);
        font-weight: bold;
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
   
    <div id="sri_wrap">
        <div id="content">
            
<div class="wrap_tool">





<div class="content_tool">
    <section class="wrap_enquiry">
        <h2 class="blind">퇴직금 계산기 </h2>
       
       
        <section class="enquiry">
            <h3 class="title">필수 입력</h3>
           
           
            <div class="wrap_column">
                <div class="column">
                    <section class="wrap_result">
                                <h2 class="blind">퇴직금 계산기 결과</h2>
                                <div class="title wide">
                                    <span class="text">예상 퇴직금</span><br>
                                    <span class="result_value"><strong id="money"><input type="text" placeholder="0" id="mmoney"></strong>원</span>
                                    <input type="hidden" id="xhlwlrrma">
                                </div>
                                <div class="result_list">
                                    <dl>
                                        <dt>1일 평균 임금</dt>
                                        <!-- <dd id="day_avg_pay"><span>0</span>원</dd> -->
                                        <dd id="day_avg_pay"><span><input type="text" id="oneday" placeholder="0" ></span>원</dd>
                                    </dl>
                                </div>
                                <div class="wrap_btns">
                                    <button type="button" class="doClear" id="doClear" onclick="doClear()">초기화</button>
                                    <button type="button" class="doAdd" id="doAdd" onclick="doAdd()">계산하기</button>
                                </div>
                            </section>
                 
           
           
           
                            <div class="form_title"><label for="start_dt">입사일</label></div>
                    <div class="form_field">
                        <!-- <span class="sri_input2 date"><input type="text" id="start_dt" placeholder="2016-01-01" maxlength="10"/></span> -->
                        <span class="sri_input2 date"><input type="date" id="startdate" placeholder="2016-01-01" maxlength="10"/></span>
                    </div>
                 
                </div>
                <div class="column">
                    <div class="form_title"><label for="end_dt">퇴사일 <span class="sub">(마지막 근무일)</span></label></div>
                    <div class="form_field">
                        <!-- <span class="sri_input2 date"><input type="text" id="end_dt" placeholder="2017-12-31" maxlength="10"/></span> -->
                        <span class="sri_input2 date"><input type="date" id="enddate" placeholder="2017-12-31" maxlength="10"/></span>
                    </div>
                </div>
            </div>
            <div class="form_title">
                <span class="has_form">월급 <em class="sub">(세전 퇴사 전 3개월과 동일하게 계산됩니다.)</em></span>
            </div>
            <div class="form_salary same">
                <span class="sri_input2 large right" id="payone">
                    <input type="text" id="pay" placeholder="0" title="월급" maxlength="12" value="" onkeydown="return showKeyCode(event)"/>
                </span>
                <span class="sri_input2_text">원</span>
                <div class="control">
                    <p class="kor">
                        <em id="trans_price"></em>원
                    </p>
                    <p class="btn">
                        <button type="button" class="btn_basic_type02" id="plusm" onclick="plusm">+100만</button>
                        <button type="button" class="btn_basic_type02" id="pluss">+10만</button>
                    </p>
                </div>
            </div>
                   </section>
        <section class="enquiry optional">
                <h3 class="title">선택 입력</h3>
                <div class="wrap_column">
                    <div class="column wide">
                        <div class="form_title"><label for="annualBonus">연간상여금</label></div>
                        <div class="form_field">
                                        <span class="sri_input2 right">
                                            <input type="text" id="bonuspay" class="bonuspay" placeholder="0" maxlength="12" value="100000"onkeydown="return showKeyCode(event)"/>
                                            <input type="hidden" id="bobo" class="bobo"/>
                                        </span>
                            <span class="sri_input2_text">원</span>
                        </div>
                    </div>
                 
                    </div>
                </div>


        </section>



    </section>
    
   
</div>
</div>





<ul class="list_tool_info" id="rudrhans">
<li>-본 계산기는 모의계산 결과로 법적 효력이 없습니다.</li>
<li>-사용자가 입력한 근무기간 및 임금 기준으로만 산정합니다.</li>
<li>-근로자퇴직급여보장법에 의거 퇴직금은 계속근로기간 1년에 대하여 30일분 이상의 평균임금으로 계산합니다.</li>
<li>-회사별 상이한 임금체계에 따라 실제 산정되는 금액과 차이가 발생할 수 있으니 참고용으로 활용하시기 바랍니다.</li>
</ul>                            
</div>
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
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  


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