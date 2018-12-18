<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/mainLogout.jsp" />
<link href="<c:url value="/css/search.css"/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value="/css/mainbanner.css"/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value="/css/company_detail_star.css"/>"
	rel="stylesheet" type="text/css">
<!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
<script src="<c:url value="/js/sweetalert2.all.min.js"/>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">
</script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<script src="<c:url value="/js/jquery.flipTimer.js" />"></script>
<link rel="stylesheet" href="<c:url value="/css/flipTimer.css" />">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bf84638a5cf91c45cc3f86b96939daf1&libraries=services"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300" type="text/css" />

<style>
#companydetailbtn1, #companydetailbtn2, #companydetailbtn3,	#companydetailbtn4 {
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

/* #companydetailbtn1, #companydetailbtn2, #companydetailbtn3:hover {
	color: white;
}

#companydetailbtn4 {
	background-color: rgb(17, 47, 65);
	color: white;
}

#companydetailbtn4:hover {
	background-color: black;
	color: white;
} */
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
.container .jumbotron, .container-fluid .jumbotron {
	padding-right: 27px;
	padding-left: 60px;
	padding-top: 18px;
	margin-top: 78px;
}

#company-average {
	font-size: 25px;
	font-style: italic;
	margin-left: 10px;
	margin-bottom: -15px;
}

.jumbotron h1 {
	font-size: 63px;
	font-weight: 900;
	margin-top: 23px;
	margin-bottom: 20px;
}

.jumbotron .lead {
	margin-left: 10px;
}

.flexslider img {
	float: right;
	width: 300px;
	height: 300px;
	margin-top: 15px;
}

.jumbotron p {
	margin-bottom: 25px;
	font-size: 21px;
	font-weight: 600;
}

.bxslider img {
	width: 300px;
	height: 300px;
	float: right;
	margin-top: 3px;
}

.bx-wrapper {
	-moz-box-shadow: 0 0 5px #ccc;
	-webkit-box-shadow: 0 0 5px #ccc;
	box-shadow: 0 0 5px #ccc;
	border: 5px solid #fff;
	background: #fff;
	max-width: 300px;
	margin-top: -12px;
}
.row {
    display: flex;
    margin-left: -5px;
    margin-right: 1%;
}
.companymap {
    border: 3px groove;
    width: 300px;
    height: 225px;
    margin-top: 6%;
}
.companymap .addrmap {
	width: 293px;
    height: 195px;
}
.companymap .addrmap img {
	width: 293px;
    height: 195px;

}

.companymap #addrtext {
	font-size: 12px;
	overflow: hidden;
	margin: 5px;
}

.seungjae {
    position: absolute;
    bottom: -50px;
    left: 695px;
    width: 10%;
    height: 10;
    background: #fff;
    text-align: right;
}
.text-danger {
	border-bottom: 1px solid gray;
	line-height: inherit;
}
.jumbotron {
	color: #fff;
	background: linear-gradient(-45deg, #EE7752, #E73C7E, #23A6D5, #23D5AB);
	background-size: 400% 400%;
	-webkit-animation: Gradient 15s ease infinite;
	-moz-animation: Gradient 15s ease infinite;
	animation: Gradient 15s ease infinite;
}

@-webkit-keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

@-moz-keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

@keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

</style>
</head>
<body>

	<div class="container">
		<!-- Jumbotron -->
		<div class="jumbotron">
			<div class="home__slider"
				style="width: 300px; height: 300px; float: right;">
				<div class="bxslider">
					<c:forEach var="img" items="${recImg}">
						<div>
							<img src="${img.imgSerPath}/${img.imgSerName}" alt="그림1">
						</div>
					</c:forEach>
					<!-- <div>
						<img src="../img/kakao/bit3.jpg" alt="그림3">
					</div> -->
				</div>
			</div>

			<h3 id="company-average">
				기업 평점 :
				<div class="ratingpark" data-vote="0">
					<div class="star hidden">
						<span class="full" data-value="0"></span> <span class="half"
							data-value="0"></span>
					</div>
					<div class="star">
						<span class="full" data-value="1"></span> <span class="half"
							data-value="0.5"></span> <span class="selected"></span>
					</div>
					<div class="star">
						<span class="full" data-value="2"></span> <span class="half"
							data-value="1.5"></span> <span class="selected"></span>
					</div>
					<div class="star">
						<span class="full" data-value="3"></span> <span class="half"
							data-value="2.5"></span> <span class="selected"></span>
					</div>
					<div class="star">
						<span class="full" data-value="4"></span> <span class="half"
							data-value="3.5"></span> <span class="selected"></span>
					</div>
					<div class="star">
						<span class="full" data-value="5"></span> <span class="half"
							data-value="4.5"></span> <span class="selected"></span>
					</div>
				</div>
				
				
				<h1>${detail.name}</h1>
				<p class="lead">${detail.title}(${detail.staffCnt} 명)</p>
				<br>
				<p>
					<c:if test="${user.authority==1 || empty user}">
						<a id="companydetailbtn1" class="btn btn-lg btn-success" href="#" role="button" onclick="resumeSelect()">입사지원</a>					
					</c:if>
					<c:if test="${user.authority==2}">					
					</c:if>
					<c:if test="${user.authority==1 }">
					<a id="companydetailbtn2" class="btn btn-lg btn-success" href="javascript:void plusFriendChat();" role="button">1:1 채팅</a>					
					</c:if>
					<c:if test="${user.authority==2 }">
					<a id="companydetailbtn2" class="btn btn-lg btn-success" href="javascript:void companyKakao();" role="button">1:1 채팅</a>					
					</c:if>
					<a id="companydetailbtn3" class="btn btn-lg btn-success" onclick="popupOpen()" role="button" >네비게이션</a> 
					<c:if test="${user.authority==2 && user.memberNo==detail.memberNo}">
					 	<a id="companydetailbtn3" class="btn btn-lg btn-success" 
					    	href="<c:url value="update.do?recruitmentNo=${detail.recruitmentNo}"/>" role="button">공고 수정 하기</a>   
					  </c:if> 
					  
					 <c:if test="${user.authority==2 && user.memberNo==detail.memberNo}">
						<a id="companydetailbtn3" class="btn btn-lg btn-success" 
					    href="<c:url value="mypage.do"/>" role="button">다른 공고 보기</a> 
					 </c:if> 
					 <a id="companydetailbtn4" class="btn btn-lg btn-success" onclick="chart(${detail.recruitmentNo})" 
					     role="button">지원자 현황</a>
					   
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
				<h2 class="text-danger">업종</h2>
				<br>
				<!-- <p class="text-danger">모집부문 및 자격요건</p> -->
				<p>-&nbsp;&nbsp;${detail.companyId}</p>
				<p>-&nbsp;&nbsp;${detail.jobId}</p>
				<br>
				<!-- <p>
					<a class="btn btn-primary" href="#" role="button">더보기
						&raquo;</a>
				</p> -->
			</div>
			<div class="col-lg-4">
				<h2 class="text-danger">지원자격</h2>
				<br>
				<p id="experience">-&nbsp;&nbsp;${detail.experienceId}</p>
				<p id="education">-&nbsp;&nbsp;${detail.educationId}</p>
				<c:if test="${empty detail.license}">
				
				</c:if>
				<c:if test="${not empty detail.license}">
				<p id="license">-&nbsp;&nbsp;${detail.license}</p>
				
				</c:if>
				<p id="gender"></p>
				<p id="age">-&nbsp;&nbsp;${detail.minAge}~${detail.maxAge}</p>
							

				<br>
				<!-- <p>
					<a class="btn btn-primary" href="#" role="button">더보기
						&raquo;</a>
				</p> -->
			</div>
			<div class="col-lg-4">
				<h2 class="text-danger">근무조건</h2>
				<br>
				<p class="workId">-&nbsp;&nbsp;${detail.workId}</p>
				<p>-&nbsp;&nbsp;근무일 :${detail.workDayId}</p>
				<p>-&nbsp;&nbsp;${detail.salary}</p>
				<br>
				<!-- <p>
					<a class="btn btn-primary" href="#" role="button">더보기
						&raquo;</a>
				</p> -->
			</div>
			<div class="col-lg-4">
				<h2 class="text-danger">사업장 주소</h2>
				<div class="companymap">
					<div class="addrmap">
						<div id="map" style="width:293px;height:195px;"></div>
					</div>
					<span id="addrtext">${detail.addr2}</span>
				</div>
			</div>
		</div>
		<p id="endDate"style="display:none;">${detail.endDate}</p>
		<footer class="seungjae">
          <p>&copy; Job Story 2018</p>
        </footer>
	

	
	<script>
	
	
	
	
	
	/*마감일 표시*/
	var end = $("#endDate").text().split("-");
	console.log(end);
    var end2 = end[2].split(" ");
    if(end[1]=="01"){end[1]="January"}
    if(end[1]=="02"){end[1]="February"}
    if(end[1]=="03"){end[1]="March"}
    if(end[1]=="04"){end[1]="April"}
    if(end[1]=="05"){end[1]="May"}
    if(end[1]=="06"){end[1]="Jun"}
    if(end[1]=="07"){end[1]="July"}
    if(end[1]=="08"){end[1]="August"}
    if(end[1]=="09"){end[1]="September"}
    if(end[1]=="10"){end[1]="October"}
    if(end[1]=="11"){end[1]="November"}
    if(end[1]=="12"){end[1]="December"}
    
    console.log("년 :"+end[0])
    console.log("월 :"+end[1])
    console.log("일 :"+end2[0])
    
    // yyyy-MM-dd hh:mm
    
    var result = end[1] +' '+end2[0]+' '+end[0]+' '+'00:00:00'
    console.log(result);
    //var result='January 01 2019 18:00:00';
        
		$(document).ready(function() {
			
		    $('.flipTimer').flipTimer({ 
		    direction: 'down', 
		    // 날짜, 시간
		    date: result, 
		    callback: function() { 
		    	swal({
		    		  type: 'error',
		    		  title: '채용 종료',
		    		  text: '공고가 마감되었습니다.',
		    		  footer: '<a href="<c:url value="mypage.do"/>">다른 공고 보기</a>'
		    		})  
		    		
		    		$(".swal2-confirm").click(function () {
		    			console.log("${user.authority}")
						if("${user.authority}"==2&&"${user.memberNo}"=="${detail.memberNo}"){
							return;
						} else {
							location.href='<c:url value="/main/main.do"/>'
						}
					})
		    		
		   	 }
		   });
		});
	
	  $("#companydetailbtn1").click(function(){
		  /* swal({
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
			}) */
			resumeSelect();
	  });
	  
	  /*디테일 내용 표시*/
	  var work = document.querySelectorAll(".workId");
		for ( var i = 0; i < work.length; i++ ) {
			var sp = work[i].innerHTML.split(",");
			work[i].innerHTML="";
			for(var j=0; j<sp.length; j++) {
				if(j==0){
					console.log(sp[j]);
					if(sp[j]=="-&nbsp;&nbsp;work1001") {work[i].innerHTML="-&nbsp;&nbsp;정규직"}
					if(sp[j]=="-&nbsp;&nbsp;work1002") {work[i].innerHTML="-&nbsp;&nbsp;계약직"}
					if(sp[j]=="-&nbsp;&nbsp;work1003") {work[i].innerHTML="-&nbsp;&nbsp;인턴"}
					if(sp[j]=="-&nbsp;&nbsp;work1004") {work[i].innerHTML="-&nbsp;&nbsp;전환형인턴"}
					if(sp[j]=="-&nbsp;&nbsp;work1005") {work[i].innerHTML="-&nbsp;&nbsp;아르바이트"}
					if(sp[j]=="-&nbsp;&nbsp;work1006") {work[i].innerHTML="-&nbsp;&nbsp;프리랜서"}
					if(sp[j]=="-&nbsp;&nbsp;work1007") {work[i].innerHTML="-&nbsp;&nbsp;파트"}	
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
		
	  	if("${detail.gender}"=='b'){$("#gender").text("- 남녀무관")};
	  	if("${detail.gender}"=='m'){$("#gender").text("- 남자")};
	  	if("${detail.gender}"=='f'){$("#gender").text("- 여자")};
		
	</script>


	<script>
	
	/*기업 평점 매기기*/
	var starClicked = false;

	$(function() {



	  $('.half').hover(function() {
	    if (starClicked == false) {
	      setHalfStarState(this)
	    }

	  })

	  $('.full').hover(function full() {
	    if (starClicked == false) {
	      setFullStarState(this)
	    }
	  })

	})

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

	/* function calculateAverage() {
	  var average = 0

	  $('.ratingpark').each(function() {
	    average += $(this).data('vote')
	  })

	  $('.js-average').text((average/ $('.ratingpark').length).toFixed(1))
	} */
	
	
	function aniremove(avg) {
		if(avg==0) {
			setTimeout(function() {
				$("[data-value='0']").parent().children('.selected').removeClass('is-animated');
				$("[data-value='0']").parent().children('.selected').removeClass('pulse');
			    }, 1000);
			    starClicked = true;	
			    setFullStarState($("[data-value='0']"));	
		}
		if(avg>=1&&avg<1.5) {
			setTimeout(function() {
				$("[data-value='1']").parent().children('.selected').removeClass('is-animated');
				$("[data-value='1']").parent().children('.selected').removeClass('pulse');
			    }, 1000);
			    starClicked = true;	
			    setFullStarState($("[data-value='1']"));	
		}
		if(avg>=2&&avg<2.5) {
			setTimeout(function() {
				$("[data-value='2']").parent().children('.selected').removeClass('is-animated');
				$("[data-value='2']").parent().children('.selected').removeClass('pulse');
			    }, 1000);
			    starClicked = true;	
			    setFullStarState($("[data-value='2']"));	
		}
		if(avg>=3&&avg<3.5) {
			setTimeout(function() {
				$("[data-value='3']").parent().children('.selected').removeClass('is-animated');
				$("[data-value='3']").parent().children('.selected').removeClass('pulse');
			    }, 1000);
			    starClicked = true;	
			    setFullStarState($("[data-value='3']"));	
		}
		if(avg>=4&&avg<4.5) {
			setTimeout(function() {
				$("[data-value='4']").parent().children('.selected').removeClass('is-animated');
				$("[data-value='4']").parent().children('.selected').removeClass('pulse');
			    }, 1000);
			    starClicked = true;	
			    setFullStarState($("[data-value='4']"));	
		}
		if(avg==5) {
			setTimeout(function() {
				$("[data-value='5']").parent().children('.selected').removeClass('is-animated');
				$("[data-value='5']").parent().children('.selected').removeClass('pulse');
			    }, 1000);
			    starClicked = true;	
			    setFullStarState($("[data-value='5']"));	
		}
		if(avg==0.5) {
			setTimeout(function() {
				$("[data-value='0.5']").parent().children('.selected').removeClass('is-animated');
				$("[data-value='0.5']").parent().children('.selected').removeClass('pulse');
			    }, 1000);
			    starClicked = true;	
			    setFullStarState($("[data-value='0.5']"));	
		}
		if(avg==1.5) {
			setTimeout(function() {
				$("[data-value='1.5']").parent().children('.selected').removeClass('is-animated');
				$("[data-value='1.5']").parent().children('.selected').removeClass('pulse');
			    }, 1000);
			    starClicked = true;	
			    setFullStarState($("[data-value='1.5']"));	
		}
		if(avg==2.5) {
			setTimeout(function() {
				$("[data-value='2.5']").parent().children('.selected').removeClass('is-animated');
				$("[data-value='2.5']").parent().children('.selected').removeClass('pulse');
			    }, 1000);
			    starClicked = true;	
			    setFullStarState($("[data-value='2.5']"));	
		}
		if(avg==3.5) {
			setTimeout(function() {
				$("[data-value='3.5']").parent().children('.selected').removeClass('is-animated');
				$("[data-value='3.5']").parent().children('.selected').removeClass('pulse');
			    }, 1000);
			    starClicked = true;	
			    setFullStarState($("[data-value='3.5']"));	
		}
		if(avg==4.5) {
			setTimeout(function() {
				$("[data-value='4.5']").parent().children('.selected').removeClass('is-animated');
				$("[data-value='4.5']").parent().children('.selected').removeClass('pulse');
			    }, 1000);
			    starClicked = true;	
			    setFullStarState($("[data-value='4.5']"));	
		}
		
	}
  	 	
  	aniremove("${avg}");
	
	</script>
	
<script> 
 
/* 이미지 부분*/		
$(document).ready(function(){ 
 
    var main = $('.bxslider').bxSlider({ 
 
    mode: 'fade', 
 
    auto: true, //자동으로 슬라이드 
 
    controls : true,    //좌우 화살표    
 
    autoControls: true, //stop,play 
 
    pager:true, //페이징 
 
    pause: 3000, 
 
    autoDelay: 0,   
 
    slideWidth: 800, 
 
    speed: 500, 
 
    stopAutoOnclick:true
 
}); 
 
    
 
$(".bx-stop").click(function(){ // 중지버튼 눌렀을때 
 
    main.stopAuto(); 
 
    $(".bx-stop").hide(); 
 
    $(".bx-start").show(); 
 
    return false; 
 
}); 
 
 
 
$(".bx-start").click(function(){    //시작버튼 눌렀을때 
 
    main.startAuto(); 
 
    $(".bx-start").hide(); 
 
    $(".bx-stop").show(); 
 
    return false; 
 
}); 
 
 
 
  $(".bx-start").hide();    //onload시 시작버튼 숨김. 
 
});  

// 지도 api
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${detail.addr2}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new daum.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new daum.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${detail.name}</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});   

function popupOpen(){
	  var popupX = (window.screen.width / 2) - (1450 / 2);
	  var popupY= (window.screen.height /2) - (600 / 2);
	  window.open('http://map.daum.net/?sName=비트캠프강남센터&eName=${detail.addr2}', '지원현황', 'status=no, location=no, height=600, width=1450, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	};
	
	function chart(recruitmentNo){
		 var recruitmentNo=recruitmentNo;
		  var popupX = (window.screen.width / 2) - (1450 / 2);
		  var popupY= (window.screen.height /2) - (600 / 2);
		  window.open('chart.do?recruitmentNo='+recruitmentNo, '지원현황', 'status=no, location=no, height=600, width=1450, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
		};
		
	function resumeSelect(){
		  var popupX = (window.screen.width / 2) - (1450 / 2);
		  var popupY= (window.screen.height /2) - (600 / 2);
		  if("${user.memberNo}"==""){
			  swal('로그인 이후 이용해 주세요!');
		  } else {		  
		  window.open('<c:url value="/user/selectResume.do?memberNo=${user.memberNo}&recruitmentNo=${detail.recruitmentNo}"/>', '지원현황', 'status=no, location=no, height=600, width=1450, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
		  }
		};
	
	
	/*카카오 플러스친구*/

    Kakao.init('fad4558248b6a17bb496e467dac94896');
    function plusFriendChat() {
      Kakao.PlusFriend.chat({
        plusFriendId: '${detail.kakaoId}' // 플러스친구 홈 URL에 명시된 id로 설정합니다.
      });
    }
    
    function kakaoPlus() {
		$("#kakaoPlus").trigger("click");
	}
    
    function companyKakao(){
  	  var popupX = (window.screen.width / 2) - (1450 / 2);
  	  var popupY= (window.screen.height /2) - (600 / 2);
  	  window.open('https://center-pf.kakao.com/${detail.kakaoId}/chats' ,'카카오','status=no, location=no, height=600, width=1450, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
  	};    

</script>

</body>
</html>