<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/mainLogout.jsp" />
<link href="<c:url value="/css/mypage_user.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.1/css/bulma.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
<c:import url="/common/mypageUserMenu.jsp" />
<script>
   if("${user.authority}"!=1||"${user}"==null){
      location.href='<c:url value="/main/main.do"/>'
   }
</script>
<style>
.tabs a {
   -ms-flex-align: center;
   align-items: center;
   color: #ffffff;
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
}

.tabs a {
   border-bottom: 1px solid #ffffff;
}

/*카드 부분*/
.card {
   box-shadow: 10px 0px 10px rgba(0, 0, 0, 0.2),
            0px 10px 20px rgba(0,0,0,0.2);
}
.card, .card-content {
   border:3px solid white;
}
.card:hover {
   animation-name: slideUp;
   -webkit-animation-name: slideUp;   

   animation-duration: 1s;   
   -webkit-animation-duration: 1s;

   animation-timing-function: ease;   
   -webkit-animation-timing-function: ease;

   visibility: visible !important;
}

@keyframes slideUp {
   0% {
      transform: translateY(0%);
   }
   50%{
      transform: translateY(-5%);
   }   
   100% {
      transform: translateY(0%);
   }   
}

@-webkit-keyframes slideUp {
   0% {
      -webkit-transform: translateY(0%);
   }
   50%{
      -webkit-transform: translateY(-5%);
   }   
   100% {
      -webkit-transform: translateY(0%);
   }   
}

.allcard {
    max-width: 1140px;
    margin-left: auto;
    margin-right: auto;
    overflow: scroll;
    height: 470px;
    margin-top: 120px;
    /* background-color: #dddddd; */
    border-width: 4px;
    border-style: inset;
    border-color: white;
}

.cardWrap {
   width: 25%;
   float: left;
   padding: 5px 15px;
   margin-top: 15px;
}

.cardWrap .card {
   width: 96%;
}

#cardImg {
    width: 235px;
    max-width: 235px;
    height: 237px;
    margin-left: -2px;
    margin-top: -1px;}

.card-image {
   width: 240px;
   height: 240px;
}

.card-content {
   height: 150px;
}

#listtitle {
    text-align: center;
    background-color: black;
    color: white;
    border-radius: 80px;
    font-size: 13px;
    line-height: 24px;
    margin-left: 1%;
    margin-top: -5%;
    clear: both;
    display: inline-block;
    padding-left: 12px;
    padding-right: 12px;
}

#listcontent {
   margin-left: 1%;
   font-size: 12px;
}

.card-btn {
   text-align: center;
}

.card-btn>button {
   width: 112px;
   padding: 6px 0;
   border: 1px solid white;
}

.container.myprofile .myprofile-options .tabs ul li.link a {
   margin-bottom: 20px;
   padding: 20px;
   background-color: rgb(79, 185, 159);
}
.title {
   position: relative;
   /* border: 1px solid black; */
   color: rgb(79, 185, 159);
   font-weight: bold;
}


.tabs #applyList {
   -ms-flex-align: center;
   align-items: center;
   color: #ffffff;
}
.tabs li #applyList {
   color: rgb(242, 177, 52);
   font-weight: bold;
   border-bottom: 1px solid #ffffff;
}
.tabs #applyList:hover {
   color: rgb(242, 177, 52);
   border-bottom-color: #ffffff;
   text-decoration: none;
}

.seungjae{
    position: absolute;
    bottom: -125px;
    width: 10%;
    background: #fff;
    text-align: right;
    font-family: 'Noto Sans SC', sans-serif;
    font-weight: bold;
    left: 695px;
}
.stampP{
    height: 77px;
    width: 180px;
    left: 26px;
    top: -60px;
    border-radius: 5px;
    position: relative;
    border: 5px solid green;
    -webkit-animation-name: pulse;
    animation-name: pulse;
    animation-delay: 0.5s;
    -webkit-animation-delay: 0.5s;
    -webkit-animation-duration: 0.5s;
    animation-duration: 0.5s;
    opacity: 0;
    -webkit-animation-fill-mode: forwards;
    animation-fill-mode: forwards;
    color: green;
    font-size: 40px;
    font-weight: 900;
    text-align: center;
}
.stampF{
    height: 77px;
    width: 180px;
    left: 26px;
    top: -60px;
    border-radius: 5px;
    position: relative;
    border: 5px solid red;
    -webkit-animation-name: pulse;
    animation-name: pulse;
    animation-delay: 0.5s;
    -webkit-animation-delay: 0.5s;
    -webkit-animation-duration: 0.5s;
    animation-duration: 0.5s;
    opacity: 0;
    -webkit-animation-fill-mode: forwards;
    animation-fill-mode: forwards;
    color: red;
    font-size: 40px;
    font-weight: 900;
    text-align: center;
}

@-webkit-keyframes pulse{
  0%{
    opacity: 0;
  }
  10%{
    opacity:.50;
    transform-origin: 50% 50%;
    transform: rotate(-2deg) scale(5);
    transition: all .3s cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
  100%{
    opacity:1;
    transform: rotate(-15deg) scale(1);
  }
}
#applybtn {
    display: inline-block;
    padding: 6px 30px;
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

</style>
</head>
<body>
   
<!-- 각 메뉴 휘하 내용 -->   
<p id="listCount" style="display:none">${fn:length(applyList)} </p>
<div class="allcard">
   
   <c:forEach var="a" items="${applyList}">
      
      <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
          <c:if test="${a.fnp eq 'w'}">
                <img id="cardImg" alt='' src='${a.user.imgSerPath}/${a.user.imgSerName}'>
             </c:if>
             <c:if test="${a.fnp eq 'p'}">
                <img id="cardImg" alt='' src='${a.user.imgSerPath}/${a.user.imgSerName}'> 
                <div class="stampP">합&nbsp;격</div>

             </c:if>
             <c:if test="${a.fnp eq 'f'}">
                <img id="cardImg" alt='' src='${a.user.imgSerPath}/${a.user.imgSerName}'>
                <div class="stampF">불&nbsp;합&nbsp;격</div>
             </c:if> 
                        

          </div>  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">${a.recruitment.name}</p>
                  <p id="listcontent">지원현황 : ${a.count}명</p>
                  <p id="listcontent">접수일자 : <fmt:formatDate value="${a.regDate}" pattern="yyyy-MM-dd" /></p>
                  <p id="listcontent" class="endDate">발표일자 : ${a.recruitment.endDate}</p>
              </div>
          </div>
          <div class="card-btn">
              <a href='<c:url value="/company/detail.do?recruitmentNo=${a.recruitmentNo}&name=${a.recruitment.name}"/>'><button id="applybtn" type="button" class="btn btn-primary">공고보기</button></a>
              <a href='<c:url value="delete.do?&applyNo=${a.applyNo}"/>'><button id="applybtn" type="button" class="btn btn-danger">삭제하기</button></a>
          </div>
      </div>
    </div>
   
   </c:forEach>
    
    
    
  </div>   
  
  <footer class="seungjae">
   <p>&copy; Job Story 2018</p>
</footer>
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
        
        
        var result= $("p[class='endDate']").text().split(" ");
        var count = $("#listCount").text();
        
        for(var i=0; i<count; i++) {
           
        }
        
      </script>
</body>
</html>