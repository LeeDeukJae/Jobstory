<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/main_logout.jsp" />
<link href="<c:url value="/css/search.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/mainbanner.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet" type="text/css">
<!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
<script src="<c:url value="/js/sweetalert2.all.min.js"/>"></script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>     
<link rel="stylesheet" href="<c:url value="/css/flipTimer.css" />">
<script src="<c:url value="/js/jquery.flipTimer.js" />"></script>             

<style>
  .jumbotron {
    background-image: url("http://post.phinf.naver.net/MjAxNzEwMzBfMiAg/MDAxNTA5MzI3NjczOTA1.-zgWkj6-0_vMx268lQpozTXea4JNhSs7Kn1N8OmzyW0g._C05NyHgcjcqOwHvHfKlUUWyeaCdgqp9HTNs-_EppGMg.JPEG/IqnxW4h8vwZoz_8oSk9-6CkD3_zk.jpg");
    background-repeat: no-repeat;
    background-position: 750px;
    background-size: 350px;        
  }
#companydetailbtn1, #companydetailbtn2, #companydetailbtn3 {
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 23px;
    font-weight: 412px;
    line-height: 43px;
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
    border-radius: 10px;
    margin-left: 10px;
}
#companydetailbtn1, #companydetailbtn2, #companydetailbtn3:hover {
	color:white;
} 
/* .swal2-popup .swal2-title {
    font-size: 3em;
}  
.swal2-popup .swal2-content {
    font-size: 2.125em;
}  
.swal2-popup .swal2-styled.swal2-confirm {
    font-size: 15px;
    height: 45px;
    width: 6em;
}
.swal2-popup .swal2-footer {
    justify-content: center;
    margin: 1.25em 0 0;
    padding: 1em 0 0;
    border-top: 1px solid #eee;
    color: #545454;
    font-size: 1.5em;
}
.swal2-footer a:hover {
    text-decoration: none;
}
.swal2-popup {
    display: none;
    position: relative;
    flex-direction: column;
    justify-content: center;
    width: 32em;
    max-width: 100%;
    padding: 1.25em;
    border-radius: 5.3125em;
    background: #f9f9f9;
    font-family: inherit;
    font-size: 1.1rem;
    box-sizing: border-box;
}

.lead {
    font-size: 20px;
    margin-left: 10px;
}


.swal2-popup {
    display: none;
    position: relative;
    flex-direction: column;
    justify-content: center;
    width: 45em;
    max-width: 100%;
    padding: 4.25em;
    border-radius: 5.3125em;
    background: #f9f9f9;
    font-family: inherit;
    font-size: 1rem;
    box-sizing: border-box;
}
.swal2-popup .swal2-styled.swal2-cancel {
    justify-content: center;
    margin: 1.25em 0 0;
    padding: 1em 0 0;
    font-size: 1.5em;
} */
</style>
</head>
<body>
<div class="container">
    <div class="masthead">
      <hr>
      <nav>
        <ul class="nav nav-justified">
          <li class="active"><a href="#">기업정보</a></li>
          <li><a href="#">채용정보</a></li>
          <li><a href="#">별점정보</a></li>
            <li><a href="#">기업사진</a></li>
            <li><a href="#">약도</a></li>
          </ul>
        </ul>
      </nav>
    </div>
    
    <!-- Jumbotron -->
    <div class="jumbotron">
      <h1>인보험 손해사정</h1>
      <p class="lead">보험금 서면심사 서울, 광주
        신입 및 경력 채용공고</p><br>
        <p>
          <a id="companydetailbtn1" class="btn btn-lg btn-success" href="#" role="button">입사지원</a> 
          <a id="companydetailbtn2" class="btn btn-lg btn-warning" href="#" role="button">1:1 채팅</a>
          <a id="companydetailbtn3" class="btn btn-lg btn-info" href="<c:url value="/main/main_logout_search.do"/>" role="button">다른 공고 보기</a>
      	  <!--타이머 적용-->
        </p>
        <div class="flipTimer" style="text-align: center;">
        <span id="timertext">남은 시간 :</span> 
	       <div class="days"></div>
	       <span id="timertext">일</span>
	       <div class="hours"></div>
	       <span id="timertext">시</span>
	       <div class="minutes"></div>
	       <span id="timertext">분</span>
	       <div class="seconds"></div>
	       <span id="timertext">초</span>
		</div>
     </div>

      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-4">
          <h2 class="text-danger">담당업무</h2><br>
          <!-- <p class="text-danger">모집부문 및 자격요건</p> -->
          <p>보험금 지급심사(서면심사)</p>
          <p>청구보험금 심사 및 적정 보험금 산정, 지급</p><br>
          <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <h2 class="text-danger">지원자격</h2><br>
          <p>신입</p>
          <p>대학졸업(2,3년) 이상</p><br>
          <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
       </div>
        <div class="col-lg-4">
          <h2 class="text-danger">근무조건</h2><br>
          <p>서울전체</p>
          <p>정규직(수습기간)-3개월</p>
          <p>연봉 회사내규에 따름</p>
          <p>주 5일(월~금)</p>
          <p>사원, 주임, 대리</p><br>
          <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div>
	<script>
		$(document).ready(function() {
		    $('.flipTimer').flipTimer({ 
		    direction: 'down', 
		    // 날짜, 시간
		    date: 'December 26, 2018 18:00:00', 
		    callback: function() { 
		    	swal({
		    		  type: 'error',
		    		  title: '채용 종료',
		    		  text: '공고가 마감되었습니다.',
		    		  footer: '<a href="<c:url value="/main/main_logout_search.do"/>">다른 공고 보기</a>'
		    		})  	
		   	 }
		   });
		});
	
	  $("#companydetailbtn1").click(function(){
		  swal({
			  title: '이 기업에 지원합니다.',
			  text: "이력서 꼼꼼히 작성하셨나요?",
			  type: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: '예!'
			}).then((result) => {
			  if (result.value) {
			    swal(
			      '신청 완료!',
			      '성공적인 취업을 기원합니다.',
			      'success'
			    )
			  }
			})
	  });
	</script>
</body>
</html>