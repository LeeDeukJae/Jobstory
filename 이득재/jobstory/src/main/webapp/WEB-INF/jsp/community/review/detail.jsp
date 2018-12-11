<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<c:import url="/common/mainLogout.jsp" />
<script src="https://code.jquery.com/jquery-3.3.1.js"
   integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
   crossorigin="anonymous"></script>
<!--기업평가-->
<link rel="stylesheet"
   href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">
</script>
<!--폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300"
   rel="stylesheet">
<title>메인 페이지</title>
<style>
#upndel {
   margin: 11px;
}

#contents {
   background-color: white;
   border: 1px solid gray;
}

#contents {
   position: relative;
   top: -230px;
   font-size: 17px;
   white-space: pre-line;
   height: 350px;
   text-align: center;
   overflow: scroll;
   width: 655px;
   
}

h1 {
   text-align: center;
}

#viewicon {
   width: 10px;
   height: 10px;
   opacity: 0.5;
}

#toptitle {
   position: relative;
   top: -220px;
   border-bottom: 2px solid gray;
}

#detailcn {
   margin-left: 360px;
}

#container {
   margin-top: 350px;
   width: 1000px;
   top: 146px;
   margin-left: 265px;
}

hr {
   margin-top: 20px;
   margin-bottom: 20px;
   border: 0;
   border-top: 1px solid #fff;
}
/* 기업 평가 */
.rating {

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

@
-webkit-keyframes stretch-bounce { 0% {
   -webkit-transform: scale(1);
}

25%
{
-webkit-transform
:
 
scale
(1
.5
);

  
}
50%
{
-webkit-transform
:
 
scale
(0
.9
);

  
}
75%
{
-webkit-transform
:
 
scale
(1
.2
);

  
}
100%
{
-webkit-transform
:
 
scale
(1);

  
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
   margin-top: 20px;
   margin-left: 20px;
}

.score-rating {
   vertical-align: sup;
   /* top: -5px; */
   position: relative;
   font-size: 150%;
}

.total {
   /* vertical-align: sub; */
   top: 0px;
   position: relative;
   font-size: 150%;
}

.average {
    /* border: 1px solid black; */
    font-family: arial;
    font-size: 23px;
    color: rgb(237, 85, 59);
    position: absolute;
    top: -42px;
    left: 154px;
    transform: translate(-50%, -50%);
    text-align: center;
    line-height: 30px;
}

.average .score-average {
   font-weight: bold;
   padding-top: 5px;
}


.starcontainer {
    position: absolute;
    width: 400px;
    top: 330px;
    left: 195px;
    text-align: center;
    /* margin-top: 11px; */
    padding-top: -25px;
    line-height: 20px;
    width: 320px;
    margin-left: 70px;
}

/* 수정 삭제 버튼 */
#reviewDelete {
   position: relative;
    top: 180px;
    left: 900px;
}

#reviewUpdate {
   position: relative;
   top: 149px;
    left: 790px;
}
th, td {
   padding: 10px;
}
table {
   border-spacing: 10px;
}

</style>
</head>
<body>


   <!-- 기업 점수 넣기 -->
   <div class="starcontainer">
      <div class="average">
         <span class="text">평균 점수는</span>
         <div class="score-average js-average">${comreview.average}</div>
      </div>
      <div style='position: relative; display: inline; min-width: 400px;'></div>

      <p>승진기회 및 가능성</p>
      <div class="rating" data-vote="0">
         <c:set var="eval" value="${comreview.score1}" />
         <c:forEach var="i" begin="10" end="50" step="10">
            <div class="star">
               <c:choose>
                  <c:when test="${eval >= i}">
                     <span class="full star-colour"></span>
                     <span class="half star-colour"></span>

                  </c:when>

                  <c:otherwise>
                     <span class="full"></span>
                     <c:if test="${eval - i == -5}">
                        <span class="half star-colour"></span>
                     </c:if>
                     <c:if test="${eval - i != -5}">
                        <span class="half"></span>
                     </c:if>
                  </c:otherwise>
               </c:choose>
            </div>
         </c:forEach>
         
         <p>복지 및 급여</p>
         <div class="rating" data-vote="0">

            <c:set var="eval" value="${comreview.score2}" />
            <c:forEach var="i" begin="10" end="50" step="10">
               <div class="star">
                  <c:choose>
                     <c:when test="${eval >= i}">
                        <span class="full star-colour"></span>
                        <span class="half star-colour"></span>
                     </c:when>
                     <c:otherwise>
                        <span class="full"></span>
                        <c:if test="${eval - i == -5}">
                           <span class="half star-colour"></span>
                        </c:if>
                        <c:if test="${eval - i != -5}">
                           <span class="half"></span>
                        </c:if>
                     </c:otherwise>
                  </c:choose>
               </div>
            </c:forEach>
         </div>

         <p>업무와 삶의 균형</p>
         <div class="rating" data-vote="0">

            <c:set var="eval" value="${comreview.score3}" />
            <c:forEach var="i" begin="10" end="50" step="10">
               <div class="star">
                  <c:choose>
                     <c:when test="${eval >= i}">
                        <span class="full star-colour"></span>
                        <span class="half star-colour"></span>
                     </c:when>
                     <c:otherwise>
                        <span class="full"></span>
                        <c:if test="${eval - i == -5}">
                           <span class="half star-colour"></span>
                        </c:if>
                        <c:if test="${eval - i != -5}">
                           <span class="half"></span>
                        </c:if>
                     </c:otherwise>
                  </c:choose>
               </div>
            </c:forEach>
         </div>

         <p>사내문화</p>
         <div class="rating" data-vote="0">

            <c:set var="eval" value="${comreview.score4}" />
            <c:forEach var="i" begin="10" end="50" step="10">
               <div class="star">
                  <c:choose>
                     <c:when test="${eval >= i}">
                        <span class="full star-colour"></span>
                        <span class="half star-colour"></span>
                     </c:when>
                     <c:otherwise>
                        <span class="full"></span>
                        <c:if test="${eval - i == -5}">
                           <span class="half star-colour"></span>
                        </c:if>
                        <c:if test="${eval - i != -5}">
                           <span class="half"></span>
                        </c:if>
                     </c:otherwise>
                  </c:choose>
               </div>
            </c:forEach>
         </div>
         
         <p>경영진</p>
         <div class="rating" data-vote="0">

            <c:set var="eval" value="${comreview.score5}" />
            <c:forEach var="i" begin="10" end="50" step="10">
               <div class="star">
                  <c:choose>
                     <c:when test="${eval >= i}">
                        <span class="full star-colour"></span>
                        <span class="half star-colour"></span>
                     </c:when>
                     <c:otherwise>
                        <span class="full"></span>
                        <c:if test="${eval - i == -5}">
                           <span class="half star-colour"></span>
                        </c:if>
                        <c:if test="${eval - i != -5}">
                           <span class="half"></span>
                        </c:if>
                     </c:otherwise>
                  </c:choose>
               </div>
            </c:forEach>
         </div>
      </div>
   </div>
   <!-- 평균점수 div 종료 -->

   <div id="container">
      <div id="toptitle">
         <h1>${comreview.title}</h1>
         <div id="detailcn">
            <table>
               <tr>
                  <p>
                  <td><img src="<c:url value="/img/view.png"/>" id="viewicon">조회수 : &nbsp;${comreview.viewCnt}</td>
                  <td>추천수: 152</td>
                  <td>작성일: 2018-11-19</td>
                  </p>
               </tr>
            </table>
         </div>
      </div>
      <hr>
      <div style='display: inline;'>
         <div id="contents"
            style='display: inline; float: right; width: 655px;; height: 400px;'>
            ${comreview.content}</div>
         <form action="/review/delete.do" method="post" id="del">
            <input type="hidden" value="${comreview.no}" name="no"
               class="reviewDelete">
            <button type="button" id="reviewDelete" class="btn btn-warning">삭제</button>
         </form>

         <form action="updateForm.do" method="post" id="update">
            <input type="hidden" value="${comreview.no}" name="no"
               class="reviewUpdate">
            <button type="button" id="reviewUpdate" class="btn btn-warning">수정</button>
         </form>
      </div>

   </div>
   <hr>
   <script>        
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

   <script>
   $(".reviewDelete").click(function() {
      if(validation()) {
         $("#frm").submit();
      }
   })
   </script>

   <!--기업 평가-->

   <script>
      var starClicked = false;
      
      $(function() {
         $(".rating").find(".star").find("span")text(4);
      
          //$(this).closest('.rating').data('vote', 4);
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
          console.log(parseInt($(this).data('value')));
      
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
      
          console.log(parseInt($(this).data('value')));
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
      
        $('.js-average').text((average/ $('.rating').length).toFixed(1))
      }
   </script>
</body>
</html>