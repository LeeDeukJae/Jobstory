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
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script> 
<style>
*{
	font-family: 'Noto Sans SC', sans-serif;	
}
.seungjae {
    position: absolute;
    bottom: -446px;
    width: 80%;
    height: 10;
    background: #fff;
    text-align: right;
    left: 18%;
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
                            <input type="checkbox" id="pre-ex"/>
                            <label for="pre-ex" class="category-label" title="신입">신입</label>
                        </li>
                        <li>
                            <input type="checkbox" id="ex"/>
                            <label for="ex" class="category-label" title="경력">경력</label>
                        </li>
                        <li>
                            <input type="checkbox" id="none-ex"/>
                            <label for="none-ex" class="category-label" title="경력무관">경력무관</label>
                        </li>
                    </ul>
                </div>
                <div id="location-container">
                    <div class="category-title">지역</div>
                    <ul class="category-content">
                        <li>
                            <input type="checkbox" id="seoul"/>
                            <label for="seoul" class="category-label">서울</label>
                        </li>
                        <li>
                            <input type="checkbox" id="busan"/>
                            <label for="busan" class="category-label">부산</label>
                        </li>
                        <li>
                            <input type="checkbox" id="incheon"/>
                            <label for="incheon" class="category-label">인천</label>
                        </li>
                        <li>
                            <input type="checkbox" id="daegu"/>
                            <label for="daegu" class="category-label">대구</label>
                        </li>
                        <li>
                            <input type="checkbox" id="daejeon"/>
                            <label for="daejeon" class="category-label">대전</label>
                        </li>
                        <li>
                            <input type="checkbox" id="gwangju"/>
                            <label for="gwangju" class="category-label">광주</label>
                        </li>
                        <li>
                            <input type="checkbox" id="ulsan"/>
                            <label for="ulsan" class="category-label">울산</label>
                        </li>
                        <li>
                            <input type="checkbox" id="kyunggi"/>
                            <label for="kyunggi" class="category-label">경기</label>
                        </li>
                        <li>
                            <input type="checkbox" id="kyungbook"/>
                            <label for="kyungbuk" class="category-label">경북</label>
                        </li>
                        <li>
                            <input type="checkbox" id="kyungnam"/>
                            <label for="kyungnam" class="category-label">경남</label>
                        </li>
                        <li>
                            <input type="checkbox" id="jeonbuk"/>
                            <label for="jeonbuk" class="category-label">전북</label>
                        </li>
                        <li>
                            <input type="checkbox" id="jeonnam"/>
                            <label for="jeonnam" class="category-label">전남</label>
                        </li>
                        <li>
                            <input type="checkbox" id="chungbuk"/>
                            <label for="chungbuk" class="category-label">충북</label>
                        </li>
                        <li>
                            <input type="checkbox" id="chungnam"/>
                            <label for="chungnam" class="category-label">충남</label>
                        </li>
                        <li>
                            <input type="checkbox" id="gangwon"/>
                            <label for="gangwon" class="category-label">강원</label>
                        </li>
                        <li>
                            <input type="checkbox" id="jeju"/>
                            <label for="jeju" class="category-label">제주</label>
                        </li>
                        <li>
                            <input type="checkbox" id="sejong"/>
                            <label for="sejong" class="category-label">세종</label>
                        </li>
                        <li>
                            <input type="checkbox" id="foreign"/>
                            <label for="foreign" class="category-label">해외</label>
                        </li>
                    </ul>
                </div>
                <div id="edu-container">
                    <div class="category-title">학력</div>
                    <ul class="category-content">
                        <li>
                            <input type="checkbox" id="highschool"/>
                            <label for="highschool" class="category-label" title="고등학교">고등학교 졸업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="college-2"/>
                            <label for="college-2" class="category-label" title="대학(2,3년)">대학교 졸업(2,3년)</label>
                        </li>
                        <li>
                            <input type="checkbox" id="college-4"/>
                            <label for="college-4" class="category-label" title="대학(4년)">대학교 졸업(4년)</label>
                        </li>
                        <li>
                            <input type="checkbox" id="master-doctorate"/>
                            <label for="master-doctorate" class="category-label" title="석박사">석·박사 졸업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="none-edu"/>
                            <label for="none-edu" class="category-label" title="학력무관">학력무관</label>
                        </li>
                    </ul>
                </div>
                <div id="company-container">
                    <div class="category-title">기업형태</div>
                    <ul class="category-content">
                        <li>
                            <input type="checkbox" id="large-company"/>
                            <label for="large-company" class="category-label" title="대기업">대기업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="strong-medium"/>
                            <label for="strong-medium" class="category-label" title="중견기업">중견기업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="public-company"/>
                            <label for="public-company" class="category-label" title="공사·공기업">공사·공기업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="KOSDAQ"/>
                            <label for="KOSDAQ" class="category-label" title="코스닥">코스닥</label>
                        </li>
                        <li>
                            <input type="checkbox" id="KOSPI"/>
                            <label for="KOSPI" class="category-label" title="코스피">코스피</label>
                        </li>
                        <li>
                            <input type="checkbox" id="foreign-company"/>
                            <label for="foreign-company" class="category-label" title="외국계(법인/투자)">외국계(법인/투자)</label>
                        </li>
                        <li>
                            <input type="checkbox" id="samll-company"/>
                            <label for="samll-company" class="category-label" title="중소기업">중소기업</label>
                        </li>
                    </ul>
                </div>
                <div id="bussiness-type-container">
                    <div class="category-title">업종</div>
                    <ul class="category-content">
                        <li>
                            <input type="checkbox" id="service"/>
                            <label for="service" class="category-label" title="서비스업">서비스업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="manufacturing"/>
                            <label for="manufacturing" class="category-label" title="제조업">제조업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="IT"/>
                            <label for="IT" class="category-label" title="IT">IT</label>
                        </li>
                        <li>
                            <input type="checkbox" id="finance"/>
                            <label for="finance" class="category-label" title="금융업">금융업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="media"/>
                            <label for="media" class="category-label" title="미디어">미디어</label>
                        </li>
                        <li>
                            <input type="checkbox" id="education"/>
                            <label for="education" class="category-label" title="교육업">교육업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="distribution"/>
                            <label for="distribution" class="category-label" title="유통업">유통업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="construction"/>
                            <label for="construction" class="category-label" title="건설업">건설업</label>
                        </li>
                        <li>
                            <input type="checkbox" id="others"/>
                            <label for="others" class="category-label" title="기타">기타</label>
                        </li>
                    </ul>
                </div>
                <div id="bussiness-type-container">
                    <div class="category-title">근무형태</div>
                    <ul class="category-content">
                        <li>
                            <input type="checkbox" id="permanent"/>
                            <label for="permanent" class="category-label" title="정규직">정규직</label>
                        </li>
                        <li>
                            <input type="checkbox" id="contract"/>
                            <label for="contract" class="category-label" title="계약직">계약직</label>
                        </li>
                        <li>
                            <input type="checkbox" id="intern"/>
                            <label for="intern" class="category-label" title="인턴">인턴</label>
                        </li>
                        <li>
                            <input type="checkbox" id="convertible-intern"/>
                            <label for="convertible-intern" class="category-label" title="전환형인턴">전환형 인턴</label>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="btn-container">
                <input type="button" value="선택 초기화">
                <input type="button" value="선택한 조건으로 검색">
            </div>
        </form>
        <div class="list-container">
            <table>
                <thead>
                    <tr>
                        <th> </th>
                        <th>기업명</th>
                        <th>채용공고</th>
                        <th>경력</th>
                        <th>학력</th>
                        <th>근무 형태</th>
                        <th>지역</th>
                        <th>마감일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><img src="../img/noun_Star_2044877-02.png" id="scrap1" flag-data="false" /></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                    <tr>
                        <td><img src="../img/noun_Star_2044877-03.png" id="scrap2" flag-data="true"/></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                        <tr>
                        <td><img src="../img/noun_Star_2044877-03.png" id="scrap3" flag-data="true"/></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                    <tr>
                        <td><img src="../img/noun_Star_2044877-02.png" id="scrap4" flag-data="false"/></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                    <tr>
                        <td><img src="../img/noun_Star_2044877-02.png" id="scrap4" flag-data="false"/></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                    <tr>
                        <td><img src="../img/noun_Star_2044877-02.png" id="scrap4" flag-data="false"/></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                    <tr>
                        <td><img src="../img/noun_Star_2044877-02.png" id="scrap4" flag-data="false"/></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                    <tr>
                        <td><img src="../img/noun_Star_2044877-02.png" id="scrap4" flag-data="false"/></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                    <tr>
                        <td><img src="../img/noun_Star_2044877-02.png" id="scrap4" flag-data="false"/></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                    <tr>
                        <td><img src="../img/noun_Star_2044877-02.png" id="scrap4" flag-data="false"/></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                    <tr>
                        <td><img src="../img/noun_Star_2044877-02.png" id="scrap4" flag-data="false"/></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                    <tr>
                        <td><img src="../img/noun_Star_2044877-02.png" id="scrap4" flag-data="false"/></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                    <tr>
                        <td><img src="../img/noun_Star_2044877-02.png" id="scrap4" flag-data="false"/></td>
                        <td>㈜비엔케이저축은행</td>
                        <td>입/경력직 채용 공고(마감일 상이)</td>
                        <td>신입 · 경력</td>
                        <td>학력무관</td>
                        <td>정규직</td>
                        <td>부산전체</td>
                        <td>~ 11/18(일)</td>
                    </tr>
                    
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
    $(".list-container > table > tbody > tr > td:nth-child(1) > img").click(function () {
        var scrapFlag = $(this).attr("flag-data");
        if(scrapFlag == "true"){
            /* alert("취소"); */
            $(this).attr("src", "../img/noun_Star_2044877-02.png")
                   .attr("flag-data", "false");
        } else {
           /*  alert("스크랩"); */
            $(this).attr("src", "../img/noun_Star_2044877-03.png")
                   .attr("flag-data", "true");
        }
    })
    </script>
</body>
</html>