<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/mainLogout.jsp" />
<link href="<c:url value="/css/search.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/mainbanner.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/community.css"/>" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script> 
<link rel="stylesheet"
   href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">            
<!-- 스마트 에디터 -->
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
<title>네이버 :: Smart Editor 2 &#8482;</title>
<script type="text/javascript" src="/jobstory/resources/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>

<style>
.h1, h1 {
    font-size: 36px;
    text-align: center;
    margin-left: -579px;
    margin-bottom: -126px;
    margin-top: 110px;
}

#content {
   left: 373px;
    top: 90px;
    position: relative;
}

/* 기업 평가 */
.rating{
  text-align: center;
  margin-top: -5px;
  position: relative;
  width: 400px;
  height: 42px;
  float: left;
  top: -95px;
}

.choice1 {
  position: relative;
  top: 40px;
}

.hidden {
  opacity: 0;
}

.star {
  display: inline-block;
  margin: 5px;
  font-size: 30px;
  color: rgba(179, 176, 176, 0.829);
  position: relative;
}
.star.animate {
  -webkit-animation: stretch-bounce .5s ease-in-out;
}
.star.hidden {
  opacity: 0;
}

.full:before {
  font-family: fontAwesome;
  display: inline-block;
  content: "\f005";
  position: relative;
  float: right;
  z-index: 2;
}

.half:before {
  font-family: fontAwesome;
  content: "\f089";
  position: absolute;
  float: left;
  z-index: 3;
}

.star-colour {
  color: #ffd700;
}

/* 클릭시 star 크게 보이는 효과 */
@-webkit-keyframes stretch-bounce {
  0% {
    -webkit-transform: scale(1);
  }
  25% {
    -webkit-transform: scale(1.5);
  }
  50% {
    -webkit-transform: scale(0.9);
  }
  75% {
    -webkit-transform: scale(1.2);
  }
  100% {
    -webkit-transform: scale(1);
  }
}
.selected:before {
  font-family: fontAwesome;
  display: inline-block;
  content: "\f005";
  position: absolute;
  top: 0;
  left: 0;
  -webkit-transform: scale(1);
  opacity: 1;
  z-index: 1;
}
.selected.pulse:before {
  -webkit-transform: scale(3);
  opacity: 0;
}
.selected.is-animated:before {
  transition: 1s ease-out;
}

 .score {
  display: none;
  font-family: arial;
  font-size: 15px;
  color: rgb(237, 85, 59);
  margin-top: 30px;
  margin-left: 20px;
} 

.score-rating {
  vertical-align: sup;
  top: -5px;
  position: relative;
  font-size: 150%;
}

.total {
  vertical-align: sub; 
  top: 0px;
  position: relative;
  font-size: 150%;
}

.average {
  /* border: 1px solid black; */
  font-family: arial;
  font-size: 20px;
  color: rgb(237, 85, 59);
  position: absolute;
  top: -155px;
  left: 195px;
  transform: translate(-50%, -50%);
  text-align: center;
}
.average .score-average {
  font-weight: bold;
  padding-top: 5px;
}

 #ir1 {
  position: relative;
  left: 900px;
  border: 3px solid black;
} 

.starcontainer {
    /* border: 1px solid black; */
    position: absolute;
    width: 400px;
    top: 250px;
    left: -60px;
    height: 50px;
}

/* 승진 기회, 복지 및 급여, 워라벨, 사내문화, 경영진 */
#promotion{
  position: relative;
  top: -100px;
  left: 138px;
}

#welfare{
  position: relative;
  top: -90px;
  left: 160px;
}

#workAndLife{
  position: relative;
  top: -90px;
  left: 147px;
}

#compCulture{
  position: relative;
  top: -90px;
  left: 171px;
}

#management{
  position: relative;
  top: -90px;
  left: 178px;
}

/* 스마트 에디터 */
 #smarteditor{
    position: relative;
    top: 0px;
    left: 300px;
 }
.btn-primary, .btn-primary.active, .btn-primary.focus, .btn-primary:active, .btn-primary:focus, .btn-primary:hover, .open>.dropdown-toggle.btn-primary {
    color: #fff;
    background-color: #286090;
    border-color: #204d74;
    width: 255px;
    margin-top: -32px;
    margin-left: 13px;
    z-index: 999;
}
.average .score-average {
    font-weight: bold;
    padding-top: 5px;
    margin-top: 2px;
    margin-bottom: -23px;
}
.seungjae{
	position: absolute;
    bottom: -170px;
    width: 10%;
    background: #fff;
    text-align: right;
    font-family: 'Noto Sans SC', sans-serif;
    font-weight: bold;
    left: 325px;
}
   </style>
</head>
<body>
   <h1 style="font-weight: 600;">기업후기</h1>
   <h1 style="font-size: 18px;margin-top: 137px;margin-bottom: -157px;">company review</h1>
   <form action="write.do" method="post" id="frm"> 

      <div id="content">
         <div id="board-write">
            <input type="hidden" name="writer">
         </div>
         <span id="search-img"> 
         </span>
         <div id="titleandcompany" style="margin-left: 305px;">
            <span id="title">제목:</span> 
            <input type="text" id="title" name="title" style="margin-left: 24px;border-radius: 10px;width: 525px;"/><br><br>
            <span id="company">회사명:</span>
            <input type="text" id="company" name="company" style="margin-left: 10px;border-radius: 10px;width: 525px;"/>
         </div>
         <br>

   <textarea name="content" id="smarteditor" rows="10" cols="100" style="width:600px; height:350px;"> 
   </textarea> 
   
<!--    <input type="button" id="savebutton" value="등록" /> -->
   <button type="button" id="savebutton" value="등록" class="btn btn-primary btn-lg btn-block">등록</button>
  

<!-- 기업 점수 넣기 -->
<div class="starcontainer">
    <div class="average">
      <span class="text">평균 점수는</span>
      <input type="hidden" id="average" name="average"/>
      <div class="score-average js-average">
      </div>
    </div>
    <div style='display:inline;min-width:400px;'>
    
      <!-- <div style='display:inline;float:left;width:150px' class="choice1">승진기회 및 가능성</div> -->
      <div id="promotion">승진기회 및 가능성</div>
      <input type="hidden" value="score1" id="score1" name="score1"/>
      <div class="rating" data-index="score1" data-vote="0">
    
      <div class="star hidden">
        <span class="full"data-value="0"></span>
        <span class="half"data-value="0"></span>
      </div>
    
      <div class="star">
    
        <span class="full" data-value="1"></span>
        <span class="half" data-value="0.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="2"></span>
        <span class="half" data-value="1.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="3"></span>
        <span class="half" data-value="2.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="4"></span>
        <span class="half" data-value="3.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="5"></span>
        <span class="half" data-value="4.5"></span>
        <span class="selected"></span>
    
      </div>
      
      <!--  앞에 나오는 점수 score-rating js-score 를 히든으로 저장시켜서 넘겨보기 -->
       <div class="score">
        <span class="score-rating js-score" name="score1">0</span> 
         <span>/</span> 
         <span class="total">5</span> 
       </div>  

   
    </div>

      <div style='display:inline;min-width:400px;'>
    
       <div id="welfare">복지 및 급여</div>
       <div class="rating" data-index="score2" data-vote="0">
       <input type="hidden" value="score2" id="score2" name="score2"/>
    
      <div class="star hidden">
        <span class="full"data-value="0"></span>
        <span class="half"data-value="0"></span>
      </div>
    
      <div class="star">
    
        <span class="full" data-value="1"></span>
        <span class="half" data-value="0.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="2"></span>
        <span class="half" data-value="1.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="3"></span>
        <span class="half" data-value="2.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="4"></span>
        <span class="half" data-value="3.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="5"></span>
        <span class="half" data-value="4.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="score">
        <span class="score-rating js-score" name="score2">0</span>
        <span>/</span>
        <span class="total">5</span>
      </div>
    </div>
  </div>
    
      <div style='display:inline;min-width:400px;'>
    
      <div id="workAndLife">업무와 삶의 균형</div>
      <div class="rating" data-index="score3" data-vote="0">
      <input type="hidden" value="score3" id="score3" name="score3"/>
    
      <div class="star hidden">
        <span class="full"data-value="0"></span>
        <span class="half"data-value="0"></span>
      </div>
    
      <div class="star">
    
        <span class="full" data-value="1"></span>
        <span class="half" data-value="0.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="2"></span>
        <span class="half" data-value="1.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="3"></span>
        <span class="half" data-value="2.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="4"></span>
        <span class="half" data-value="3.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
        <span class="full" data-value="5"></span>
        <span class="half" data-value="4.5"></span>
        <span class="selected"></span>
      </div>
    </div>
  </div>
        
      <div style='display:inline;min-width:400px;'>
    
      <div id="compCulture">사내문화</div>
      <div class="rating" data-index="score4" data-vote="0">
      <input type="hidden" value="score4" id="score4" name="score4"/>
    
      <div class="star hidden">
        <span class="full"data-value="0"></span>
        <span class="half"data-value="0"></span>
      </div>
    
      <div class="star">
    
        <span class="full" data-value="1"></span>
        <span class="half" data-value="0.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="2"></span>
        <span class="half" data-value="1.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="3"></span>
        <span class="half" data-value="2.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="4"></span>
        <span class="half" data-value="3.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="5"></span>
        <span class="half" data-value="4.5"></span>
        <span class="selected"></span>
    
      </div>
    </div>
  </div>
        
  <div style='display:inline;min-width:400px;'>
    
      <div id="management">경영진</div>
      <div class="rating" data-index="score5" data-vote="0">
      <input type="hidden" value="score5" id="score5" name="score5"/>
    
      <div class="star hidden">
        <span class="full"data-value="0"></span>
        <span class="half"data-value="0"></span>
      </div>
    
      <div class="star">
    
        <span class="full" data-value="1"></span>
        <span class="half" data-value="0.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="2"></span>
        <span class="half" data-value="1.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="3"></span>
        <span class="half" data-value="2.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="4"></span>
        <span class="half" data-value="3.5"></span>
        <span class="selected"></span>
    
      </div>
    
      <div class="star">
    
        <span class="full" data-value="5"></span>
        <span class="half" data-value="4.5"></span>
        <span class="selected"></span>
    
      </div>
    </div>
  </div>
  
  

      
    </div>
  </div>  
  </form>
<footer class="seungjae">
   <p>&copy; Job Story 2018</p>
</footer>

<script type="text/javascript">
    var oEditors = []; // 개발되어 있는 소스에 맞추느라, 전역변수로 사용하였지만, 지역변수로 사용해도 전혀 무관 함. 
      $(document).ready(function() {
    
    // Editor Setting 
    nhn.husky.EZCreator.createInIFrame({ 
      oAppRef : oEditors, // 전역변수 명과 동일해야 함. 
       elPlaceHolder : "smarteditor", // 에디터가 그려질 textarea ID 값과 동일 해야 함. 
       sSkinURI : "/jobstory/resources/SE2/SmartEditor2Skin.html", // Editor HTML 
       fCreator : "createSEditor2", // SE2BasicCreator.js 메소드명이니 변경 금지 X 
       htParams : { 
             // 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
             bUseToolbar : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
             bUseVerticalResizer : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
             bUseModeChanger : true, 
          } 
    }); 
    
    // 전송버튼 클릭이벤트 
    $("#savebutton").click(function(){ 
       //if(confirm("저장하시겠습니까?")) { 
          // id가 smarteditor인 textarea에 에디터에서 대입 
          oEditors.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []); 
          
          // 이부분에 에디터 validation 검증 
          if(validation()) {
             $("#frm").submit(); 
             } 
          //}
       })
   }); 
   // 필수값 Check
   function validation(){ 
      oEditors.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []); 
      
      var contents = $.trim(oEditors[0].getContents()); 
      if(contents === '<p>&bnsp;</p>' || contents === ''){ // 기본적으로 아무것도 입력하지 않아도 값이 입력되어 있음. 
         
         alert("내용을 입력하세요."); 
         oEditors.getById['smarteditor'].exec('FOCUS');
         return false;
      } 
      
      return true; 
}
</script>

<!--기업 평가-->
<script>
var starClicked = false;

$(function() {
   
  $('.star').click(function() {

    // addClss는 ''사이의 클래스 값을 추가할수있음
    $(this).children('.selected').addClass('is-animated');
    $(this).children('.selected').addClass('pulse');

    var target = this;
   
    // 특정한 시간뒤에 함수를 딱 한번 실행시키기 
    // var id = setTimeout(콜백함수 ,밀리세컨드)
    setTimeout(function() {
      // removeClass
      $(target).children('.selected').removeClass('is-animated');
      $(target).children('.selected').removeClass('pulse');
    }, 1000);
   
    starClicked = true;
  })
  
  // 반개 별 클릭시 
  $('.half').click(function() {
    if (starClicked == true) {
      setHalfStarState(this)
    }
    // $(this)로 잡히는 상위 요소중 가장 근접한 하나를 반환한다 $(this).closest('.rating')
    // .text 값을 변경한다
    $(this).closest('.rating').find('.js-score').text($(this).data('value'));

    $(this).closest('.rating').data('vote', $(this).data('value'));
    calculateAverage()
    console.log("반개 : ", parseInt($(this).data('value'))+0.5);
    
    // 몇번째 별을 클릭했는지
    console.log($(this).parent().parent().data('index'));
    // 반개짜리면 0.5 값 추가
    console.log(parseInt($(this).data('value'))+0.5);
    

    var s = parseInt($(this).data('value'))+0.5;
    var i = $("#"+$(this).parent().parent().data('index'));

   i.attr("value", s);
   console.log("유효성 검사2 : " + $("#"+$(this).parent().parent().data('index')).val());
  })
  // 별 한개 클릭시
  $('.full').click(function() {
    if (starClicked == true) {
      setFullStarState(this)
    }
    $(this).closest('.rating').find('.js-score').text($(this).data('value'));

    $(this).find('js-average').text(parseInt($(this).data('value')));

    $(this).closest('.rating').data('vote', $(this).data('value'));
    calculateAverage()

    console.log("한개 : ", parseInt($(this).data('value')));
    console.log($(this).parent().parent().data('index'));
    console.log(parseInt($(this).data('value')));
    
    console.log("input value 값 : ", $("#"+$(this).parent().parent().data('index')).val());
   
    // 클릭 점수
    var s = parseInt($(this).data('value'));
    // input hidden 몇번째인지
    var i = $("#"+$(this).parent().parent().data('index'));
    
    // value에 var s 값을 넣어준다
    i.attr("value", s);
    
    
    console.log("유효성 검사2 : " + $("#"+$(this).parent().parent().data('index')).val());
  })
   
  // 별에 마우스 올렸을때 변경
  $('.half').hover(function() {
    if (starClicked == false) {
      setHalfStarState(this)
    }

  })

  $('.full').hover(function() {
    if (starClicked == false) {
      setFullStarState(this)
    }
  })

})

// .prevAll 이전의 모든 요소에 addClass ('animate') 
// 색 변경 function
function updateStarState(target) {
  $(target).parent().prevAll().addClass('animate');
  $(target).parent().prevAll().children().addClass('star-colour');

  $(target).parent().nextAll().removeClass('animate');
  $(target).parent().nextAll().children().removeClass('star-colour');
}

function setHalfStarState(target) {
  $(target).addClass('star-colour');
  $(target).siblings('.full').removeClass('star-colour');
  updateStarState(target)
}

function setFullStarState(target) {
  $(target).addClass('star-colour');
  $(target).parent().addClass('animate');
  $(target).siblings('.half').addClass('star-colour');

  updateStarState(target)
}

// .rating Class 값을 가져와서 평균값 계산 뒤 1의자리 반올림 toFixed(1)
function calculateAverage() {
  var average = 0

  $('.rating').each(function() {
    average += $(this).data('vote')
  })

  $('.js-average').text((average/ $('.rating').length).toFixed(1));
  
  var avr = parseFloat($('.js-average').text());

  var arval = $("#average");
  
  arval.attr("value", avr);
  
  console.log("평균 점수는 : " + avr);
  console.log("input val : " + arval.val());
  
}
 
</script>
</body>
</html>