<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>     
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:if test="${not empty user.id}">
   <c:import url="/common/mainLogout.jsp" />
</c:if>
<c:if test="${empty user.id}">
   <c:import url="/common/mainLogin.jsp" />
</c:if>
<link href="<c:url value="/css/search.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/mainbanner.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/community.css"/>" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script> 
<style>
*{
	font-family: 'Noto Sans SC', sans-serif;	
}
.seungjae{
    position: absolute;
    bottom: -900px;
    width: 10%;
    background: #fff;
    text-align: right;
    font-family: 'Noto Sans SC', sans-serif;
    font-weight: bold;
    left: 695px;
}
.item img {
	display: block;
	margin-left: auto;
	margin-right: auto;
}
.pagination {
    position: relative;
    top: -25px;
    left: 685px;
    /* border: 1px solid black; */
    color: skyblue;
}
.pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover {
    z-index: 2;
    color: #fff;
    cursor: default;
    background-color: rgb(79,185,159);
    border-color: rgb(79,185,159);
}
.nav-pills>li.active>a, .nav-pills>li.active>a:focus, .nav-pills>li.active>a:hover {
    color: #fff;
    background-color: rgb(79,185,159);
}
.btn-success {
    color: #fff;
    background-color: #5cb85c;
    border-color: #4cae4c;
}
a {
	text-decoration: none  !important;
}
.writebutton {
    margin-left: 55%;
    margin-top: -2%;
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
                <img class="first-slide" src="<c:url value="/img/community3.jpg"/>" alt="First slide">                   
            </div>
            <div class="item">
                <img class="second-slide" src="<c:url value="/img/community2.jpg"/>" alt="Second slide">                   
            </div>
            <div class="item">
                <img class="third-slide" src="<c:url value="/img/community1.jpg"/>" alt="Third slide">
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
    
	<!-- 커뮤니티 메뉴-->
	<div class="communityworld">
		<ul class="nav nav-pills">
		  <li role="presentation" class="active"><a href="<c:url value="/community/interview/list.do"/>">면접 후기</a></li>
		  <li role="presentation"><a href="<c:url value="/community/review/list.do"/>">기업 후기</a></li>
		  <li role="presentation"><a href="<c:url value="/community/myself/list.do"/>">자소서 첨삭</a></li>
		</ul>
		<div class="writebutton">
			<a href="writeForm.do" class="btn btn-primary" role="button">글쓰기</a>		
		</div>			
	</div>   
	
	<!-- 커뮤니티 테이블 -->
	<div id="pattern" class="pattern">
		<ul class="list">
		<c:forEach var="interview" items="${list}">          
			<li>
			      <a href="detail.do?no=${interview.boardNo}" class="inner">   
					<div class="li-img">
						<img src='<c:url value="${interview.serPath}/${interview.serName}"/>'alt="Image Alt Text" />
					</div>
				<div class="li-text">
						<input type="hidden" value="${interview.boardNo}">
						<h2 class="li-head">${interview.title}</h2>
					</div>
					<div class="li-text2">
						<p class="dd">작성자: ${interview.writer}</p>
						<p class="dd">조회수 :  ${interview.viewCnt}</p>
						<p class="dd">직 종 :
						<c:choose>
						<c:when test="${interview.jobId=='job1001'}">경영·사무</c:when>
						<c:when test="${interview.jobId=='job1002'}">유통·무역</c:when>
						<c:when test="${interview.jobId=='job1003'}">영업·고객상담</c:when>
						<c:when test="${interview.jobId=='job1004'}">생산·제조</c:when>
						<c:when test="${interview.jobId=='job1005'}">IT·인터넷</c:when>
						<c:when test="${interview.jobId=='job1006'}">디자인</c:when>
						<c:when test="${interview.jobId=='job1007'}">전문직</c:when>
						<c:when test="${interview.jobId=='job1008'}">교육</c:when>
						<c:when test="${interview.jobId=='job1009'}">미디어</c:when>
						<c:when test="${interview.jobId=='job1010'}">특수계층·공공</c:when>
						<c:when test="${interview.jobId=='job1011'}">건설</c:when>
						<c:when test="${interview.jobId=='job1012'}">서비스</c:when>
						<c:when test="${interview.jobId=='job1013'}">의료</c:when>
						<c:when test="${interview.jobId=='job1014'}">기타</c:when>
						</c:choose>
						</p>
					</div>
					<div class="li-text3">
						<p class="dd">작성일: <fmt:formatDate value="${interview.regDate}"
							pattern="yyyy-MM-dd" /></p>
						<p class="dd">면접난이도: 
								<c:if test="${interview.level==1}">
								쉬움
								</c:if>
								
								<c:if test="${interview.level==2}">
								보통
								</c:if>
								
								<c:if test="${interview.level==3}">
								어려움
								</c:if>						
						</p>
						<p class="dd">면접시기:<c:if test="${interview.applyDate==1}">
								상반기
								</c:if>
											<c:if test="${interview.applyDate==2}">
								하반기
								</c:if>
						</p>
					</div>
			</a>
			</li>
			
		
          
          </c:forEach>
            			
		</ul>
	</div>
	<nav>
		<ul class="pagination">
		<li><a
						<c:choose>
      <c:when test="${beginPage!=1}">href="list.do?pageNo=${beginPage-1}"</c:when>
      <c:otherwise>href="#"</c:otherwise>
	    </c:choose>
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					
					<c:forEach var="i" begin="${beginPage}" end="${endPage}">
						<li><a
							<c:choose>
   	<c:when test='${requestScope["javax.servlet.forward.request_uri"].substring(20) eq "/category.do"}'>
    href="<c:url value='category.do?pageNo=${i-1}&select=${result.select}&text=${result.text}' />"
    </c:when>
   	<c:when test='${requestScope["javax.servlet.forward.request_uri"].substring(20) eq "/list.do"}'>
    href="list.do?pageNo=${i}"
    </c:when>
    <c:otherwise>
     href="list.do?pageNo=${i}"
     </c:otherwise>
      </c:choose>>

								${i}</a></li>
					</c:forEach>

					<li><a
						<c:choose>
      <c:when test="${endPage != lastPage}"> href="list.do?pageNo=${endPage+1}" </c:when>
    	<c:otherwise>href="#"</c:otherwise>
    	</c:choose>
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
		</ul>		
	</nav>
<footer class="seungjae">
   <p>&copy; Job Story 2018</p>
</footer>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>