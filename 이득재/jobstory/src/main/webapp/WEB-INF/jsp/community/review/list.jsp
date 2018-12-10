<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	text-decoration: none !important;
}
.writebutton {
    margin-left: 55%;
    margin-top: -2%;
}
.ball {
    position: absolute;
    width: 70px;
    height: 70px;
    border-radius: 70px;
    background: -webkit-linear-gradient(top, rgb(194, 248, 243) 0%,rgb(0, 142, 142) 99%);
    background: -moz-linear-gradient(top, rgba(187,187,187,1) 0%,rgba(119,119,119,1) 99%);
    background: linear-gradient(top, rgba(187,187,187,1) 0%,rgba(119,119,119,1) 99%);
    box-shadow: inset 0px -8px 20px 2px rgba(255, 255, 255, 0.4), inset 0px -17px 20px 0px rgba(13, 51, 92, 0.4), 0 0 1px #1f2429;
    margin-top: -34px;
    margin-left: 15px;
}
.ball-text {
    z-index: 888;
    color: black;
    margin-left: 19px;
    margin-top: 17px;
    font-weight: 900;
    font-size: x-large;
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
		  <li role="presentation"><a href="<c:url value="/community/interview/list.do"/>">면접 후기</a></li>
		  <li role="presentation" class="active"><a href="<c:url value="/community/review/list.do"/>">기업 후기</a></li>
		  <li role="presentation"><a href="<c:url value="/community/myself/list.do"/>">자소서 첨삭</a></li>
		</ul>
		<div class="writebutton">
			<button type="button" class="btn btn-success"><a href='../review/writeForm.do'>
				기업평가 작성
			</button>
		</div>		
    
	</div> 
    
	<!-- 커뮤니티 테이블 -->
	<div id="pattern" class="pattern">
		<ul class="list">			
		  <c:forEach var="comreview" items="${list}">
			<li>
			<a href='detail.do?no=${comreview.no}' class="inner">
				<div class="li-img">
					<div class="ball-wrapper">
					    <div class="ball">
						    <div class="ball-text">
						    	3.5
						    </div>					    
					    </div>
					    <div class="ball-shadow"></div>
					</div>
				</div>
				<div class="li-text">
					<input type="hidden" value="게시글 번호">
					<h2 class="li-head">${comreview.title}</h2>
				</div>
				<div class="li-text2">
					<p class="li-writer">이득재</p>
					<p class="dd">조회수 : ${comreview.viewCnt}5</p>
				</div>
				<div class="li-text3">
					<p class="dd">작성일 : 2018-11-19</p>
				</div>
			</a>
			</li>
		  </c:forEach>	
		</ul>
	</div>
	<nav>
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
	
	</nav>

	<footer class="seungjae">
        <p>&copy; Job Story 2018</p>
    </footer>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>