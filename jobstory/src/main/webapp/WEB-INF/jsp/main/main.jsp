<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:if test="${empty user}">
<c:import url="/common/mainLogin.jsp" />
</c:if>
<c:if test="${not empty user}">
<c:import url="/common/mainLogout.jsp" />
</c:if>
<link href="<c:url value="/css/search.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/mainbanner.css"/>" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script> 
<script src="<c:url value="/js/sweetalert2.all.min.js"/>"></script>
<style>
*{
	font-family: 'Noto Sans SC', sans-serif;	
}
.seungjae {
    position: absolute;
    bottom: -470px;
    width: 50%;
    height: 10;
    background: #fff;
    text-align: center;
    left: 25%;
}
</style>
</head>
<body>

<!-- 메인 배너 -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="first-slide" src="../img/mainbanner/job1.png" alt="First slide">
                    <div class="carousel-caption">
                        <h1>2018 넥슨 신입 프로그래머 모집</h1>
                        <p><br>나이불문, 연령불문!! <br> <code>http://www.nexon.co.kt</code> <br><br> 당신의 꿈과 열정을 넥슨에 바치세요! <br> 2018년 12월 26일까지 원서 마감!!</p>
                    </div>
            </div>
            <div class="item">
                <img class="second-slide" src="../img/mainbanner/job2.png" alt="Second slide">
                    <div class="carousel-caption">
                        <h1>비트캠프 2019 UI/UX 강연회</h1>
                        <p><br>자세한 내용은 비트캠프 홈페이지로 문의하세요.<br><br><code>http://www.bitcamp.co.kt</code></p>
                    </div>
            </div>
            <div class="item">
                <img class="third-slide" src="../img/mainbanner/job3.png" alt="Third slide">
                    <div class="carousel-caption">
                        <h1>잡스토리 자소서 특강</h1>
                        <p><br>전국 자소서 전문가의 1:1 첨삭지도<br><br>온라인 / 오프라인 가능</p>
                    </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    
	<!-- 채용공고 리스트 -->    
	<div class="main-title">채용공고리스트</div>
    <div class="all-container">
        <form>
            <div class="category-container">
                <div id="ex-container">
                    <div class="category-title">경력</div>
                    <ul class="category-content">
                        <li>
                            <input type="checkbox" id="pre-ex" name="experienceId" value="exper1001" />
                            <label for="pre-ex" class="category-label" title="신입">신입</label>
                        </li>
                        <li>
                            <input type="checkbox" id="ex" name="experienceId" value="exper1002"/>
                            <label for="ex" class="category-label" title="경력">경력</label>
                        </li>
                        <li>
                            <input type="checkbox" id="none-ex" name="experienceId" value="exper1003"/>
                            <label for="none-ex" class="category-label" title="경력무관">경력무관</label>
                        </li>
                    </ul>
                </div>
                <div id="location-container">
                    <div class="category-title">지역</div>
                    <ul class="category-content">
                        <li>
                            <input type="checkbox" id="seoul" name="locationId" value="locat1001"/>
                            <label for="seoul" class="category-label">서울</label>
                        </li>
                        <li>
                            <input type="checkbox" id="busan" name="locationId" value="locat1002"/>
                            <label for="busan" class="category-label">부산</label>
                        </li>
                        <li>
                            <input type="checkbox" id="incheon" name="locationId" value="locat1003"/>
                            <label for="incheon" class="category-label">인천</label>
                        </li>
                        <li>
                            <input type="checkbox" id="daegu" name="locationId" value="locat1004"/>
                            <label for="daegu" class="category-label">대구</label>
                        </li>
                        <li>
                            <input type="checkbox" id="daejeon" name="locationId" value="locat1005"/>
                            <label for="daejeon" class="category-label">대전</label>
                        </li>
                        <li>
                            <input type="checkbox" id="gwangju" name="locationId" value="locat1006"/>
                            <label for="gwangju" class="category-label">광주</label>
                        </li>
                        <li>
                            <input type="checkbox" id="ulsan" name="locationId" value="locat1007"/>
                            <label for="ulsan" class="category-label">울산</label>
                        </li>
                        <li>
                            <input type="checkbox" id="kyunggi" name="locationId" value="locat1008"/>
                            <label for="kyunggi" class="category-label">경기</label>
                        </li>
                        <li>
                            <input type="checkbox" id="kyungbook" name="locationId" value="locat1009"/>
                            <label for="kyungbuk" class="category-label">경북</label>
                        </li>
                        <li>
                            <input type="checkbox" id="kyungnam" name="locationId" value="locat1010"/>
                            <label for="kyungnam" class="category-label">경남</label>
                        </li>
                        <li>
                            <input type="checkbox" id="jeonbuk" name="locationId" value="locat1011"/>
                            <label for="jeonbuk" class="category-label">전북</label>
                        </li>
                        <li>
                            <input type="checkbox" id="jeonnam" name="locationId" value="locat1012"/>
                            <label for="jeonnam" class="category-label">전남</label>
                        </li>
                        <li>
                            <input type="checkbox" id="chungbuk" name="locationId" value="locat1013"/>
                            <label for="chungbuk" class="category-label">충북</label>
                        </li>
                        <li>
                            <input type="checkbox" id="chungnam" name="locationId" value="locat1014"/>
                            <label for="chungnam" class="category-label">충남</label>
                        </li>
                        <li>
                            <input type="checkbox" id="gangwon" name="locationId" value="locat1015"/>
                            <label for="gangwon" class="category-label">강원</label>
                        </li>
                        <li>
                            <input type="checkbox" id="jeju" name="locationId" value="locat1016"/>
                            <label for="jeju" class="category-label">제주</label>
                        </li>
                        <li>
                            <input type="checkbox" id="sejong" name="locationId" value="locat1017"/>
                            <label for="sejong" class="category-label">세종</label>
                        </li>
                        <li>
                            <input type="checkbox" id="foreign" name="locationId" value="locat1018"/>
                            <label for="foreign" class="category-label">해외</label>
                        </li>
                    </ul>
                </div>
                <div id="edu-container">
                    <div class="category-title">학력</div>
                    <ul class="category-content">
                        <li>
                            <input type="checkbox" id="highschool" name="educationId" value="educa1001" />
                            <label for="highschool" class="category-label" title="고등학교">고등학교 졸업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="college-2" name="educationId" value="educa1002" />
                            <label for="college-2" class="category-label" title="대학(2,3년)">대학교 졸업(2,3년)</label>
                        </li>
                        <li>
                            <input type="checkbox" id="college-4" name="educationId" value="educa1003" />
                            <label for="college-4" class="category-label" title="대학(4년)">대학교 졸업(4년)</label>
                        </li>
                        <li>
                            <input type="checkbox" id="master-doctorate" name="educationId" value="educa1004" />
                            <label for="master-doctorate" class="category-label" title="석박사">석·박사 졸업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="none-edu" name="educationId" value="educa1005" />
                            <label for="none-edu" class="category-label" title="학력무관">학력무관</label>
                        </li>
                    </ul>
                </div>
                <div id="company-container">
                    <div class="category-title">기업형태</div>
                    <ul class="category-content">
                        <li>
                            <input type="checkbox" id="large-company" name="companyId" value="compa1001" />
                            <label for="large-company" class="category-label" title="대기업">대기업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="strong-medium" name="companyId" value="compa1002"/>
                            <label for="strong-medium" class="category-label" title="중견기업">중견기업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="public-company" name="companyId" value="compa1003"/>
                            <label for="public-company" class="category-label" title="공사·공기업">공사·공기업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="KOSDAQ" name="companyId" value="compa1004"/>
                            <label for="KOSDAQ" class="category-label" title="코스닥">코스닥</label>
                        </li>
                        <li>
                            <input type="checkbox" id="KOSPI" name="companyId" value="compa1005"/>
                            <label for="KOSPI" class="category-label" title="코스피">코스피</label>
                        </li>
                        <li>
                            <input type="checkbox" id="foreign-company" name="companyId" value="compa1006"/>
                            <label for="foreign-company" class="category-label" title="외국계(법인/투자)">외국계(법인/투자)</label>
                        </li>
                        <li>
                            <input type="checkbox" id="samll-company" name="companyId" value="compa1007"/>
                            <label for="samll-company" class="category-label" title="중소기업">중소기업</label>
                        </li>
                    </ul>
                </div>
                <div id="bussiness-type-container">
                    <div class="category-title">업종</div>
                    <ul class="category-content">
                        <li>
                            <input type="checkbox" id="business" name="jobId" value="job1001"/>
                            <label for="business" class="category-label" title="경영·사무">경영·사무</label>
                        </li>
                        <li>
                            <input type="checkbox" id="distribution" name="jobId" value="job1002"/>
                            <label for="distribution" class="category-label" title="유통·무역">유통·무역</label>
                        </li>
                        <li>
                            <input type="checkbox" id="sales" name="jobId" value="job1003"/>
                            <label for="sales" class="category-label" title="영업·고객상담">영업·고객상담</label>
                        </li>
                        <li>
                            <input type="checkbox" id="manufacture" name="jobId" value="job1004"/>
                            <label for="manufacture" class="category-label" title="생산·제조">생산·제조</label>
                        </li>
                        <li>
                            <input type="checkbox" id="IT" name="jobId" value="job1005"/>
                            <label for="IT" class="category-label" title="IT·인터넷">IT·인터넷</label>
                        </li>
                        <li>
                            <input type="checkbox" id="design" name="jobId" value="job1006"/>
                            <label for="design" class="category-label" title="디자인">디자인</label>
                        </li>
                        <li>
                            <input type="checkbox" id="specialized" name="jobId" value="job1007"/>
                            <label for="specialized" class="category-label" title="전문직">전문직</label>
                        </li>
                        <li>
                            <input type="checkbox" id="education" name="jobId" value="job1008"/>
                            <label for="education" class="category-label" title="교육">교육</label>
                        </li>
                        <li>
                            <input type="checkbox" id="media" name="jobId" value="job1009"/>
                            <label for=""media"" class="category-label" title="미디어">미디어</label>
                        </li>
                        <li>
                            <input type="checkbox" id="publicEnterprise" name="jobId" value="job1010"/>
                            <label for="publicEnterprise" class="category-label" title="특수계층·공공">특수계층·공공</label>
                        </li>
                        <li>
                            <input type="checkbox" id="construction" name="jobId" value="job1011"/>
                            <label for="construction" class="category-label" title="건설">건설</label>
                        </li>
                        <li>
                            <input type="checkbox" id="service" name="jobId" value="job1012"/>
                            <label for="service" class="category-label" title="서비스">서비스</label>
                        </li>
                        <li>
                            <input type="checkbox" id="medical" name="jobId" value="job1013"/>
                            <label for="medical" class="category-label" title="의료">의료</label>
                        </li>
                        <li>
                            <input type="checkbox" id="others" name="jobId" value="job1014"/>
                            <label for="others" class="category-label" title="기타">기타</label>
                        </li>
                    </ul>
                </div>
                <div id="bussiness-type-container">
                    <div class="category-title">근무형태</div>
                    <ul class="category-content">
                        <li>
                            <input type="checkbox" id="permanent" name="workId" value="work1001" />
                            <label for="permanent" class="category-label" title="정규직">정규직</label>
                        </li>
                        <li>
                            <input type="checkbox" id="contract" name="workId" value="work1002" />
                            <label for="contract" class="category-label" title="계약직">계약직</label>
                        </li>
                        <li>
                            <input type="checkbox" id="intern" name="workId" value="work1003" />
                            <label for="intern" class="category-label" title="인턴">인턴</label>
                        </li>
                        <li>
                            <input type="checkbox" id="convertible-intern" name="workId" value="work1004" />
                            <label for="convertible-intern" class="category-label" title="전환형인턴">전환형 인턴</label>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="btn-container">
                <input type="button" id="initialization-btn" value="선택 초기화">
                <input type="button" id="searching" value="선택한 조건으로 검색">
            </div>
        </form>
        <div class="list-container">
            <table>
                <thead>
                    <tr>
                        <th> </th>
                        <th>기업명</th>
                        <th>형태</th>
                        <th>채용공고</th>
                        <th>경력</th>
                        <th>학력</th>
                        <th>근무 형태</th>
                        <th>지역</th>
                        <th>마감일</th>
                    </tr>
                </thead>
                <tbody id="list-result">
                </tbody>
            </table>
        </div>
        <nav>
            <ul class="pagination">
                <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
                </li>
            </ul>
        </nav>
    </div>
    
    <footer class="seungjae">
        <p>&copy; Job Story 2018</p>
    </footer>
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
    <script>
    /* 스크랩 기능 */
    $(".list-container > table > tbody").on("click", "tr > td:nth-child(1) > img", function () {
        var scrapFlag = $(this).attr("flag-data");
        var recruitmentNo = $(this).attr("id");
        
        if(scrapFlag == "true"){
            /* 스크랩 삭제 */
            $(this).attr("src", "../img/noun_Star_2044877-02.png")
                   .attr("flag-data", "false");
            $.ajax({
            	url: "<c:url value='/main/scrapDelete.do' />",
            	type: "POST",
            	data: {
            		"recruitmentNo":recruitmentNo,
            		"memberNo": '${user.memberNo}'
            		}
            }).done(function (data) {
            	console.log(data);
            }).fail(function () {
            });
        } else if (scrapFlag == "false") {
           /* 스크랩 삽입 */
            $(this).attr("src", "../img/noun_Star_2044877-03.png")
                   .attr("flag-data", "true");
            $.ajax({
            	url: "<c:url value='/user/scrapWrite.do' />",
            	type: "POST",
            	data: {
            		"recruitmentNo": recruitmentNo,
            		"memberNo": '${user.memberNo}'
            		}
            }).done(function (data) {
            	console.log(data);
            }).fail(function () {
            })
        }
    });
    
    
	$("#searching").click(function() {	
		
		var experienceId = $("input[name=experienceId]:checked");
		var locationId = $("input[name=locationId]:checked");
		var educationId = $("input[name=educationId]:checked");
		var companyId = $("input[name=companyId]:checked");
		var jobId = $("input[name=jobId]:checked");
		var workId = $("input[name=workId]:checked");
		
		var experienceIdList = [];
		var locationIdList = [];
		var educationIdList = [];
		var companyIdList = [];
		var jobIdList = [];
		var workIdList = [];
		
		console.log("experienceId : ", experienceId.val());
		console.log("locationId : ", locationId.val());
		console.log("educationId : ", educationId.val());
		console.log("companyId : ", companyId.val());
		console.log("jobId : ", jobId.val());
		console.log("workId : ", workId.val());
		
		experienceId.each(function () {
			experienceIdList.push($(this).val());
		});
		locationId.each(function () {
			locationIdList.push($(this).val());
		});
		educationId.each(function () {
			educationIdList.push($(this).val());
		});
		companyId.each(function () {
			companyIdList.push($(this).val());
		});
		jobId.each(function () {
			jobIdList.push($(this).val());
		});
		workId.each(function () {
			workIdList.push($(this).val());
		});
		
		console.log(experienceIdList);
		console.log(locationIdList);
		console.log(educationIdList);
		console.log(companyIdList);
		console.log(jobIdList);
		console.log(workIdList);
		
		let timerInterval
		
		Swal({
		  title: '맞춤 공고 검색중입니다.',
		  html: '<strong></strong>',
		  timer: 1000,
		  onBeforeOpen: () => {
		    Swal.showLoading()
		    timerInterval = setInterval(() => {
		      Swal.getContent().querySelector('strong')
		        .textContent = Swal.getTimerLeft()
		    }, 1000)
		  },
		  onClose: () => {
		    clearInterval(timerInterval)
		  }
		}).then((result) => {
		  if (
		    // Read more about handling dismissals
		    result.dismiss === Swal.DismissReason.timer
		  ) {
		    console.log('I was closed by the timer')
		  }
			$.ajax({
				url: "search.do",
				data: {
					"experienceIdList": experienceIdList,
					"locationIdList": locationIdList,
					"educationIdList": educationIdList,
					"companyIdList": companyIdList,
					"jobIdList": jobIdList,
					"workIdList": workIdList,
					"memberNo": '${user.memberNo}'
				},
				type: "POST"
			}).done(function (data) {
				console.log(data);
				var html = "";
				
				for (var l = 0 ; l < data.recruitmentList.length ; l++) {
					html += '<tr>'
					if(data.recruitmentList[l].scrapNo != "0"){
						html += '<td><img src="../img/noun_Star_2044877-03.png" id="' + data.recruitmentList[l].recruitmentNo + '" flag-data="true" /></td>'
					}
					if(data.recruitmentList[l].scrapNo == "0"){
						html += '<td><img src="../img/noun_Star_2044877-02.png" id="' + data.recruitmentList[l].recruitmentNo + '" flag-data="false" /></td>'
					}
						 
					html += '<td><a href="../company/detail.do?recruitmentNo=' + data.recruitmentList[l].recruitmentNo + '&name=' + data.recruitmentList[l].name + '">' + data.recruitmentList[l].name + '</a></td>'	 
						 + '<td>' + data.recruitmentList[l].companyId + '</td>'
						 + '<td><a href="../company/detail.do?recruitmentNo=' + data.recruitmentList[l].recruitmentNo + '&name=' + data.recruitmentList[l].name + '">' + data.recruitmentList[l].title + '</a></td>'
						 + '<td>' + data.recruitmentList[l].experienceId + '</td>'
						 + '<td>' + data.recruitmentList[l].educationId + '</td>'
						 + '<td>' + data.recruitmentList[l].workId + '</td>'
						 + '<td>' + data.recruitmentList[l].addr2.substring(0,2) + '</td>'
						 + '<td>' + data.recruitmentList[l].endDate.substring(0,10) + '</td>'
				}
				
				$("#list-result").html(html);
				$(".list-container").css("visibility", "visible");

			}).fail(function () {
			});

		})
	});    
</script>
</body>
</html>