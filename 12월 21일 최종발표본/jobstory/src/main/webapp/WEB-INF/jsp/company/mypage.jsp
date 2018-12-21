<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/mainLogout.jsp" />
<link href="<c:url value="/css/mypage_company.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.1/css/bulma.min.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>  

<script>
if("${user.authority}"!=2||"${user}"==null){
   location.href='<c:url value="/main/main.do"/>'
}
</script> 

<style>
   html {
      background-color: white;
   }
   
   table th, table td {
      text-align: center;
      vertical-align: middle;
   }
   
.seungjae{
    position: absolute;
    bottom: -345px;
    width: 11%;
    background: #fff;
    text-align: right;
    font-family: 'Noto Sans SC', sans-serif;
    font-weight: bold;
    left: 530px;
}
ul.pagination {
    position: absolute;
    left: 465px;
    bottom: -80px;
}
</style>
</head>
<body>
   <div class='columns'>
      <div class='container myprofile'>
         <div class='modal' id='edit-preferences-modal'>
            <div class='modal-background'></div>
            <div class='modal-card'>
               <header class='modal-card-head'>
               <p class='modal-card-title'>기업 회원 정보 수정</p>
               <button class='delete'></button>
               </header>
               <section class='modal-card-body'> <label class='label'>Name</label>
               <p class='control'>
                  <input class='input' placeholder='Text input' type='text'>
               </p>
               <label class='label'>Password</label>
               <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='password'
                     value='pmillerk'>
               </p>
               <label class='label'>Password Correct</label>
               <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Email input' type='password'
                     value='hello@'> <i class='fa fa-warning'></i> <span
                     class='help is-danger'>This Password is invalid</span>
               </p>
               <div class='content'>
                  <h1>Optional Information</h1>
               </div>
               <label class='label'>기업명</label>
               <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text'
                     value='Greater Washington Publishing'>
               </p>
               <label class='label'>사업자 등록 번호</label>
               <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text'
                     value='+1 *** *** 0535'>
               </p>
               <label class='label'>카카오톡 플러스 친구 URL</label>
               <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text'
                     value='George Mason University'>
               </p>
               </section>
               <footer class='modal-card-foot'> <a
                  class='button is-primary modal-save'>수정</a> <a
                  class='button modal-cancel'>취소</a> </footer>
            </div>
         </div>
         <div class='section myprofile-heading'>
            <div class='columns is-mobile is-multiline'>
               <div class='column is-2'>
                  <span class='header-icon user-myprofile-image'>                                        
                  <img
                     alt='' src="${user.imgSerPath}/${user.imgSerName}"
                     style="border: 2px solid rgb(6, 133, 135); border-radius: 10%;height: 167px">
                  </span>
               </div>
               <div class='column is-4-tablet is-10-mobile name'>
                  <p style="margin-left: -52%; margin-top: 14%;">
                     <span class='title is-bold' style="color: rgb(17, 47, 65);">${user.name}
</span> <br> <a
                        class='button is-primary is-outlined' href='#'
                        id='edit-preferences' style="margin: 10% 0"> 기업 정보 수정 </a> <a
                        class='button is-primary is-outlined'
                        
                        href='<c:url value="recruitmentWrite.do?memberNo=${user.memberNo}"/>'
                        id='edit-preferences' style="margin: 10% 0"> 기업 채용 공고 등록 </a> <br>
                  </p>

                  <div class="title-container">
                     <div id="list-title">채용 공고 리스트</div>
                     <span style="visibility: hidden" id="list-count">총 0건</span>
                  </div>
                  <p class='tagline'>

                     <!-- The users myprofile bio would go here, of course. It could be two lines or more or whatever. We should probably limit the amount of characters to ~500 at most though. -->
                  </p>
               </div>
               <div class='column is-2-tablet is-4-mobile has-text-centered'
                  style="border-left: 1px solid rgb(255, 255, 255, 0);">
                  <p class='stat-val'>${fn:length(list)} </p>
                  <p class='stat-key'>등록한 공고</p>
               </div>
               <div class='column is-2-tablet is-4-mobile has-text-centered'>
                  <p class='stat-val'>${avg}</p>
                  <p class='stat-key'>기업 총점</p>
               </div>
            </div>
         </div>


         <!--채용공고 리스트-->
         <table class="myscrab">
            <thead>
               <tr>
                  <th>등록일</th>
                  <th>채용공고</th>
                  <th>경력</th>
                  <th>학력</th>
                  <th>근무 형태</th>
                  <th>지역</th>
                  <th>마감일</th>
                  <th id="th1">지원자</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach var="b" items="${list}">
               <tr>
                  
                  <td><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd" /></td>
                  <td><a href="<c:url value="/company/detail.do?recruitmentNo=${b.recruitmentNo}&name=${b.name}"/>">${b.title}</a></td>
                  <c:if test="${b.experienceId=='exper1001'}">
                     <td>신입</td>
                  </c:if>
                  <c:if test="${b.experienceId=='exper1002'}">
                     <td>경력</td>
                  </c:if>
                  <c:if test="${b.experienceId=='exper1003'}">
                     <td>경력무관</td>
                  </c:if>


                  <c:if test="${b.educationId=='educa1001'}">
                     <td>고등학교 졸업</td>
                  </c:if>
                  <c:if test="${b.educationId=='educa1002'}">
                     <td>대학교졸업(2,3년)</td>
                  </c:if>
                  <c:if test="${b.educationId=='educa1003'}">
                     <td>대학교졸업(4년)</td>
                  </c:if>
                  
                  <c:if test="${b.educationId=='educa1004'}">
                     <td>석·박사졸업</td>
                  </c:if>
                  <c:if test="${b.educationId=='educa1005'}">
                     <td>학력무관</td>
                  </c:if>
                  <td id="workId" class="workId">${b.workId}</td>
                  
                  <td>${b.addr2}</td>
                  <td>${b.endDate}</td>
                  <td><button type="button" class="btn btn-success"
                        onclick="popupOpen('${b.recruitmentNo}')">보기</button></td>
               </tr>               
               </c:forEach>
            </tbody>
         </table>
<!--          <nav>
            <ul class="pagination">
               <li class="disabled"><a href="#" aria-label="Previous"><span
                     aria-hidden="true">&laquo;</span></a></li>
               <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
               <li><a href="#">2</a></li>
               <li><a href="#">3</a></li>
               <li><a href="#">4</a></li>
               <li><a href="#">5</a></li>
               <li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
               </a></li>
            </ul>
         </nav> -->
      <footer class="seungjae">
          <p>&copy; Job Story 2018</p>
        </footer>

<script>

var work = document.querySelectorAll(".workId");

for ( var i = 0; i < work.length; i++ ) {
   var sp = work[i].innerHTML.split(",");
   work[i].innerHTML="";
   for(var j=0; j<sp.length; j++) {
      if(j==0){
         if(sp[j]=="work1001") {work[i].innerHTML="정규직"}
         if(sp[j]=="work1002") {work[i].innerHTML="계약직"}
         if(sp[j]=="work1003") {work[i].innerHTML="인턴"}
         if(sp[j]=="work1004") {work[i].innerHTML="전환형인턴"}
         if(sp[j]=="work1005") {work[i].innerHTML="아르바이트"}
         if(sp[j]=="work1006") {work[i].innerHTML="프리랜서"}
         if(sp[j]=="work1007") {work[i].innerHTML="파트"}   
      } else {
         if(sp[j]=="work1001") {work[i].innerHTML+=",정규직"}
         if(sp[j]=="work1002") {work[i].innerHTML+=",계약직"}
         if(sp[j]=="work1003") {work[i].innerHTML+=",인턴"}
         if(sp[j]=="work1004") {work[i].innerHTML+=",전환형인턴"}
         if(sp[j]=="work1005") {work[i].innerHTML+=",아르바이트"}
         if(sp[j]=="work1006") {work[i].innerHTML+=",프리랜서"}
         if(sp[j]=="work1007") {work[i].innerHTML+=",파트"}
      }
      

      
                  
   }
  }






   
   

   





 
  


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
      
   function popupOpen(recruitmentNo){
     var popupX = (window.screen.width / 2) - (1450 / 2);
     var popupY= (window.screen.height /2) - (600 / 2);
     window.open('applyUser.do?recruitmentNo='+recruitmentNo, '지원현황', 'status=no, location=no, height=600, width=1450, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
   };
   
   
   $.trim($("#edu").val())
 </script>
</body>
</html>