<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/mainLogout.jsp" />
<link href="<c:url value="/css/mypage_user.css"/>" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.1/css/bulma.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<c:import url="/common/mypageUserMenu.jsp" />
<style>

.tabs a {
	-ms-flex-align: center;
	align-items: center;
	color: #ffffff;
	text-decoration: none;
}

.tabs a:hover {
	color: #ffffff;
	border-bottom-color: #ffffff;
	text-decoration: none;
}

.tabs li.is-active a {
	color: rgb(242, 177, 52);
	font-weight: bold;
	border-bottom: 1px solid #ffffff;
	text-decoration: none;
}

.tabs a {
	border-bottom: 1px solid #ffffff;
	text-decoration: none;
}
/* 나만의 달력  */
.mainCalendar {
    /* position: absolute; */
    border-radius: 4px;
    overflow: hidden;
    width: 1240px;
    /* height: 445px; */
    margin-left: 222px;
    /* margin-left: -400px; */
    margin-top: 117px;
    /* top: 659px; */
    background-color: #ffffff;
    color: #333333;
}

.mainCalendar h1, .mainCalendar h2 {
	font-weight: 300;
	font-size: 26px;
	line-height: 28px;
	text-transform: uppercase;
	margin: 0px 0px 20px 0px;
}

.mainCalendar h1 span {
	display: block;
}

.mainCalendar .col {
	position: relative;
	float: left;
	height: 100%;
}

.mainCalendar .col .content {
	padding: 40px;
	height: 400px;
}

.mainCalendar ul {
	margin: 0px;
}

.mainCalendar ul li {
	list-style: none;
}

.mainCalendar .leftCol {
	width: 40%;
	background-color: rgb(17, 47, 65);
}

.mainCalendar .noteList li {
	color: #ffffff;
	margin-bottom: 10px;
}

.mainCalendar .notes p, .mainCalendar .notes input, .mainCalendar .noteList li
	{
	font-weight: 300;
	font-size: 14px;
}

.mainCalendar .notes p {
	border-bottom: solid 1px rgba(255, 255, 255, 0.4);
}

.mainCalendar .notes input {
	background-color: rgb(17, 47, 65);
	color: #ffffff;
	border: none;
	width: 200px;
}

.mainCalendar .addNote, .mainCalendar .removeNote {
	float: right;
	color: rgba(255, 255, 255, 0.4);
	font-weight: bold;
	margin-left: 20px;
}

.mainCalendar .addNote:hover, .mainCalendar .removeNote:hover {
	color: #ffffff;
}

.mainCalendar .addNote {
	font-size: 16px;
}

.mainCalendar .leftCol h1 {
	color: #ffffff;
	margin-bottom: 40px;
}

.mainCalendar .rightCol {
	width: 60%;
}

.mainCalendar .year {
	color: rgb(79, 185, 159);
	font-size: 25px;
	font-weight: bold;
	text-align: center;
	margin-bottom: 70px;
	vertical-align: middle;
}

.mainCalendar .months, .mainCalendar .weekday, .mainCalendar .days li {
	float: left;
	text-transform: uppercase;
}

.mainCalendar .months, .mainCalendar .weekday, .mainCalendar .days li a
	{
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
.mainCalendar .months {
	font-weight: bold;
	color: #747978;
}

.mainCalendar .weekday {
	width: 55px;
	text-align: center;
	margin-bottom: 30px;
	font-size: 12px;
}

.mainCalendar .days li {
	width: 55px;
}

.mainCalendar .days li a {
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

.mainCalendar .days li a:hover {
	background-color: #EEEDE9;
}

.mainCalendar .days li .selected {
	background-color: #F5A1A3 !important;
	color: #ffffff;
}

.mainCalendar .days li .event {
	color: #F5A1A3;
}

table, tr, td {
	border-collapse: collapse;
}

table {
	width: 100%;
	height: 400px;
	text-align: center;
	border: 1px solid rgb(6, 133, 135);
	margin-top: -40px;
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

#calendar {
	width: 600px;
}

table th {
	text-align: center;;
	vertical-align: middle;
}

* {
	padding: 0px;
	margin: 0px;
}

body {
	/* margin: 20px; */
	/* background-color: #EEEDE9; */
	-webkit-font-smoothing: antialiased;
	text-rendering: optimizeLegibility;
	/* font-size: 96.5%; */
	font-family: Helvetica, Arial, sans-serif;
}

input {
	font-family: Helvetica, Arial, sans-serif;
}

a {
	text-decoration: none;
}

.clearfix {
	clear: both;
}

.animate {
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}

/* 
    /* placeholder color */
::-webkit-input-placeholder {
	color: #ffffff;
}

:-moz-placeholder {
	color: #ffffff;
}

::-moz-placeholder {
	color: #ffffff;
}

:-ms-input-placeholder {
	color: #ffffff;
}

* /
    
table td, table th, table tr {
	text-align: left;
	vertical-align: top;
	width: 100px;
	height: 50px;
}
.title {
	position: relative;
	/* border: 1px solid black; */
	color: rgb(79, 185, 159);
	font-weight: bold;
}
.tabs #myCalendar {
	-ms-flex-align: center;
	align-items: center;
	color: #ffffff;
}
.tabs li #myCalendar {
	color: rgb(242, 177, 52);
	font-weight: bold;
	border-bottom: 1px solid #ffffff;
}
.tabs #myCalendar:hover {
	color: rgb(242, 177, 52);
	border-bottom-color: #ffffff;
	text-decoration: none;
}

.saveContent{
	color : #f5f5f5;
}
.saveContent {
    display: inline-block;
    padding: 6px 25px;
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
    margin-left: 135px;
}
</style>
</head>
<body>
<!-- 각 메뉴 휘하 내용 -->
			<div class="mainCalendar">
	
	        <div class="col leftCol">
	          <div class="content">
	            <h1 class="date">
	            <span id="dateYMD"></span>
	            </h1>
	            
		<form action ="write.do" method="post" id="frm">	
	            <div class="notes">
	              <p>
	                <input type="text" id="content" name="content" value = "" placeholder="new note"/>
	                <input type="hidden" id="calDate" name="calendarDate">
	               <!--  <input type="button" id="saveContent" value="+" title="Add note" class="addNote animate"> -->
	                <button title="Add note" id="saveContent" type="button" class="btn btn-warning">등록</button>
	              </p>

	            </div>
	           
	   </form>
	   
	            <div class="saveContent">

	            </div>
	          </div>
	        </div>

				<div class="col rightCol">
					<div class="content">
						<table id="calendar">
							<tr>
								<!-- label은 마우스로 클릭을 편하게 해줌 -->
								<td id="lt"><label onclick="prevCalendar()" id="preCal"><span
										class="glyphicon glyphicon-backward" aria-hidden="true"></span></label></td>
								<td text-align="center" class="year" id="tbCalendarYM"
									colspan="5">yyyy년 m월</td>
								<td id="lt"><label onclick="nextCalendar()"><span
										class="glyphicon glyphicon-forward" aria-hidden="true"></span>
								</label></td>
							</tr>
							<tr>
								<th><font color="#F79DC2"></font>일</th>
								<th>월</th>
								<th>화</th>
								<th>수</th>
								<th>목</th>
								<th>금</th>
								<th><font color="skyblue"></font>토</th>
							</tr>
						</table>
						<a href=></a>
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
      	  console.log("doMonth()",doMonth);
      	  
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
                  cell.setAttribute("data-val", today.getFullYear() + "" + (today.getMonth()+1) + "" + i);
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
	
      // 현재 달력 날짜, 최초 진입시
      $(function() {
    	  //console.log("today" + $("td[bgcolor]").data("val"))
    	  var date = $("td[bgcolor]").data("val");
		   
           date = date.toString();
    	   today1 = date.substring(0, 4);
    	   today2 = date.substring(4, 6);
    	   today3 = date.substring(6, 8);
   		   todayCell = (today1 + "년" + today2 + "월" + today3 + "일");
    	   
    	   $.ajax({
		   type: "POST",
		   url : "<c:url value='/user/detailCalendar.do'/>",
		   data : {
			   calendarDate : date,
			   memberNo : "${user.memberNo}"
	   	   }
	   }).done(function(list) {
		   $("span#dateYMD").html(todayCell);
		   
		   let str = "";
		   for(let schedule of list) {
			   str += "<div class='calcontent'>"+schedule.content+"</div>";
		   }
		   $("div.saveContent").html(str); 
		   
// 		   click("delete") 이벤트 작성시 for문 밖에서 처리하고 script는 다른곳에서 설정해도됨
	   }); // 최초 진입시 현재 날짜 ajax.done
      }) // on.ready
     
      
      
      // data-val 속성이 있는 것들을 찾는다.
      // 찾은 집합체에 클릭 이벤트 설정
      // 클릭 이벤트 처리 함수에서 Ajax 호출하기
      // Ajax 호출 결과를 받아서 왼쪽 부분 변경
     console.log($("td[data-val]"));
     var calDate = "";
//  	 var userCalendar = "input[name=saveContent]"  
       $("tbody").on("click", "tr > td[data-val]", function () {
    	   
//     $("td[data-val]").click(function(){
    	 
       /* alert($(this).data("val"))   */
       var str = $(this).data("val");
       str = str.toString();
       console.log(str);
       res1 = str.substring(0, 4);
       console.log(res1);
      
       if (str.length == 7){
    	  res2 = "0" + str.substring(4, 5);
    	  res3 = str.substring(5, 7);
          console.log(res3);
       }
       if (str.length == 8) {
    	   res2 = str.substring(4, 6);
    	   res3 = str.substring(6, 8);
           console.log(res3);
       }
       console.log(res2);
       calDate = (res1 + res2 + res3);
       console.log(calDate);
       
//        if (res2 > 0 && res2 < 10){
//    		res2= ("0" + res2);   
//       }

       clickDate = (res1 + "년" + res2 + "월" + res3 + "일");
    	   
//        $("#dateYMD").empty();
//        $("#dateYMD").append(res1 + '년');
//        $("#dateYMD").append(res2 + '월');
//        $("#dateYMD").append(res3 + '일');
       
       
       $.ajax({
		   type: "POST",
		   url : "<c:url value='/user/detailCalendar.do'/>",
		   data : {
			   calendarDate : calDate,
			   memberNo : "${user.memberNo}"
	   	   }
	   }).done(function(list) {
		   $("span#dateYMD").html(clickDate);
		   
		   let str = "";
		   for(let schedule of list) {
			   str += "<div class='calcontent'>"+schedule.content+"</div>";
		   }
		   $("div.saveContent").html(str); 
		   
// 		   click("delete") 이벤트 작성시 for문 밖에서 처리하고 script는 다른곳에서 설정해도됨
	   }); // ajax.done

     })
     
     // insertMemo
     $("#saveContent").click(function(e){
		e.preventDefault();
//     	var calDate = $("td[data-val]").data("val");
		var date = $("td[bgcolor]").data("val");
    	var content = $("input[name=content]").val();
    	var memberNo = "${user.memberNo}";
    	
    	if(calDate == ""){
    		calDate = "${todayCal}";
    		console.log(todayCal);
    	}
    	
    	
		console.log("calDate:" + calDate);
		console.log("memberNo:" + memberNo);
    	$.ajax({
    		type: "POST",
    		url : "<c:url value='/user/write.do'/>",
    		data : {
    				"content" : content,
    				"calendarDate" : calDate,
    				"memberNo" : memberNo
    			},
    		success: function (data) {
    			console.log(data);
    			var dataList = data;
    			var html = "";
    			for (var i = 0; i < data.length; i++){
    				html += '<div>' + dataList[i].content + '</div>'
    			}
    			$(".saveContent").html(html);
    			$("#content").val("");
    		}
    	})
     });
     
     console.log("접속테스트");
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
</body>
</html>