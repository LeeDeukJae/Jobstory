<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>      
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
<!-- Sweet Alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.js"
           integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
           crossorigin="anonymous"></script>  
<c:import url="/common/mypageUserMenu.jsp" />

<style>
@import url(https://fonts.googleapis.com/css?family=BenchNine:700);
.snip1535 {
  background-color: #c47135;
  border: none;
  color: #ffffff;
  cursor: pointer;
  display: inline-block;
  font-family: 'BenchNine', Arial, sans-serif;
  outline: none;
  position: relative;
  text-transform: uppercase;
  font-weight: 700;
}
.snip1535:before,
.snip1535:after {
  border-color: transparent;
  -webkit-transition: all 0.25s;
  transition: all 0.25s;
  border-style: solid;
  border-width: 0;
  content: "";
  height: 24px;
  position: absolute;
  width: 24px;
}
.snip1535:before {
  border-color: #c47135;
  border-right-width: 2px;
  border-top-width: 2px;
  right: -5px;
  top: -5px;
}
.snip1535:after {
  border-bottom-width: 2px;
  border-color: #c47135;
  border-left-width: 2px;
  bottom: -5px;
  left: -5px;
}
.snip1535:hover,
.snip1535.hover {
  background-color: #c47135;
}
.snip1535:hover:before,
.snip1535.hover:before,
.snip1535:hover:after,
.snip1535.hover:after {
  height: 100%;
  width: 100%;
}

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

/* 이력서 리스트 */
.all-container {
    z-index: -1;
    position: absolute;
    width: 800px;
    top: 385px;
    left: 565px;
}

.head-container {
	left: -19%;
	position: relative;
	/* border: 1px solid black; */
	margin-bottom: -8%;
}

.title {
	position: relative;
	/* border: 1px solid black; */
	color: rgb(79, 185, 159);
	font-weight: bold;
}

.title>h1 {
	position: relative;
	left: 10px;
	font-weight: bold;
}

#content-container {
	position: relative;
	/* border: 1px solid black; */
	display: flex;
}

#img-container {
	position: relative;
	/* border: 1px solid black; */
	left: 30px;
}

#img-container>img {
    position: relative;
    top: -5px;
    left: -30px;
}

.list-container {
	position: relative;
	top: 50px;
}

.title-container {
	position: relative;
	top: 60px;
	/* border: 1px solid black; */
	display: flex;
	left: -20%;
}

.title-container>div {
	position: relative;
	top: 5px;
	left: 20px;
}

.title-container>#resume-btn {
	position: relative;
	left: 480px;
	width: 150px;
	height: 30px;
	background-color: rgb(79, 185, 159);
	color: white;
	border: 0px;
}

.title-container>#resume-btn:hover {
	background-color: rgb(6, 133, 135);
}

#resume-list {
	position: relative;
	top: 30px;
	width: 800px;
	/* border: 1px solid black; */
	text-align: center;
	border-collapse: collapse;
	right: 20%;
}

#resume-list>tbody {
	font-size: 13px;
}

#list-title {
	position: relative;
	top: 0px;
	font-weight: bold;
	font-size: 20px;
	color: rgb(79, 185, 159);
}

.list-count {
	position: relative;
	font-size: 13px;
	top: 5px;
	left: 30px;
}

.resume-pagination {
	position: relative;
	top: 100px;
	/* border: 1px solid black; */
}
ul.pagination {
    position: absolute;
    left: 41.9%;
    bottom: -80px;
    left: 13%;
}
.resume-pagination>span {
	position: relative;
	/* border: 1px solid black; */
	left: 250px;
}

.resume-pagination>span>span {
	font-size: 10px;
	/* border: 1px solid gray; */
	display: inline-block;
	width: 20px;
	height: 20px;
	margin: auto;
	text-align: center;
}

#resume-btn-container {
	position: relative;
	top: 90px;
	left: -206px;
	/* border: 1px solid black; */
}

#resume-btn-container>input {
	position: relative;
	left: 680px;
	width: 50px;
	height: 30px;
	color: gray;
	border: 1px solid gray;
	background-color: white;
	/* border: 1px solid black; */
}

#resume-btn-container>input:hover {
	color: rgb(6, 133, 135);
	border: 1px solid rgb(6, 133, 135);
}

.attach-pagination {
	position: relative;
	top: 200px;
	/* border: 1px solid black; */
}

.attach-pagination>span {
	position: relative;
	/* border: 1px solid black; */
	left: 250px;
}

.attach-pagination>span>span {
	font-size: 10px;
	/* border: 1px solid black; */
	display: inline-block;
	width: 20px;
	height: 20px;
	margin: auto;
	text-align: center;
}

.attach-container {
	position: relative;
	top: 150px;
}

#attach-list {
	position: relative;
	top: 30px;
	width: 800px;
	/* border: 1px solid black; */
	text-align: center;
	border-collapse: collapse;
	right: 20%;
}

#attach-list>tbody {
	font-size: 13px;
}

#attach-title {
	position: relative;
	top: 0px;
	font-weight: bold;
	font-size: 20px;
	color: rgb(79, 185, 159);
}

#attach-count {
	position: relative;
	font-size: 13px;
	top: 5px;
	left: 30px;
}

.title-container>#attach-btn {
	position: relative;
	left: 465px;
	width: 150px;
	height: 30px;
	background-color: rgb(79, 185, 159);
	color: white;
	border: 0px;
}

.title-container>#attach-btn:hover {
	background-color: rgb(6, 133, 135);
}

#attach-delete-btn {
	position: relative;
	top: 190px;
	/* border: 1px solid black; */
}

#attach-delete-btn>input {
	width: 50px;
	height: 30px;
	color: gray;
	border: 1px solid gray;
	background-color: white;
	margin-left: 67.5%;
}

#attach-delete-btn>input:hover {
	color: rgb(6, 133, 135);
	border: 1px solid rgb(6, 133, 135);
}

.download-btn {
	width: 75px;
	height: 30px;
	color: gray;
	border: 1px solid gray;
	background-color: white;
}

.download-btn:hover {
	color: rgb(6, 133, 135);
	border: 1px solid rgb(6, 133, 135);
}

.cover {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 99.85%;
	height: 200%;
	/* border: 1px solid black; */
	/* background-color: black; */
	opacity: 0.5;
	z-index: 1;
	visibility: hidden;
}

.attach-write-container {
	position: absolute;
	padding: 30px;
	top: 900px;
    left: 330px;
	width: 500px;
	height: 320px;
	border: 1px solid black;
	background-color: white;
	z-index: 2;
	visibility: hidden;
}

.attach-write-head {
	position: relative;
	display: flex;
	border-bottom: 1px solid rgb(173, 173, 173);
}

.attach-write-head>h2 {
	position: relative;
	font-size: 20px;
	font-weight: bold;
	top: -5px;
	left: 10px;
	color: rgb(79, 185, 159);
	vertical-align: middle;
}

.attach-write-head>span {
	position: relative;
	left: 79px;
	top: -16px;
}

.attach-write-head>span>img {
	position: relative;
	width: 20px;
	height: 20px;
}

.attach-write-head>div {
    position: relative;
    /* top: 31px; */
    left: 75px;
    font-size: 11px;
    color: gray;
    /* margin-bottom: 1%; */
    top: 3px;
    margin-left: -12%;
}

.attach-write-head>div>span {
	color: rgb(6, 133, 135);
	font-size: 11px;
	font-weight: bold;
}

#caution-content {
	position: relative;
	top: 10px;
}

#caution-content>pre {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 10px;
	color: gray;
	display: inline-block;
	overflow: visible;
	background-color: white;
	border: 0px;
	padding: 8px;
	margin-top: -10px;
}

#attach-content {
	position: relative;
	top: -15px;
	width: 100%;
	/* border: 1px solid gray; */
	border-collapse: collapse;
}

#attach-content>tbody>tr>td:first-child {
	text-align: center;
	/* background-color: #B22222; */
}

#attach-content>tbody>tr>td:nth-child(2) {
	/* background-color: blueviolet; */
	width: 300px;
}

#attach-content>tbody>tr>td {
	/* border: 1px solid gray; */
	vertical-align: middle;
}

#attach-content>tr>td>select {
	width: 200px;
	background-color: black;
}

#attach-btn-container {
	position: relative;
	left: 73px;
	top: 7px;
}

#attach-btn-container>button {
	width: 150px;
	height: 30px;
	background-color: rgb(79, 185, 159);
	color: white;
	border: 0px;
}

#attach-btn-container>button:hover {
	background-color: rgb(6, 133, 135);
}

.attach-input {
	position: relative;
	visibility: hidden;
	left: 50px;
	/* border: 1px solid black; */
}

.url-input {
	position: absolute;
	visibility: hidden;
	/* border: 1px solid black; */
	border-radius: 2px;
	width: 85%;
	height: 25px;
	top: 85px;
	left: 40px;
	color: rgb(17, 47, 65);
}

table[id=resume-list] td, table[id=resume-list] th, table[id=resume-list] td,
	table[id=resume-list] tr {
	text-align: center;
	vertical-align: middle;
}

table[id=attach-list] td, table[id=attach-list] th, table[id=attach-list] td,
	table[id=attach-list] tr {
	text-align: center;
	vertical-align: middle;
}

table[id=attach-list] th, table[id=resume-list] th {
	border-bottom: 1px solid rgba(128, 128, 128, 0.541);
}

th, tr {
	height: 40px;
}
.pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover {
    z-index: 2;
    color: #fff;
    cursor: default;
    background-color: rgb(79,185,159);
    border-color: rgb(79,185,159);
}
.seungjae {
    position: absolute;
    bottom: -390%;
    width: 100%;
    height: 10;
    background: #fff;
    text-align: right;
    right: -15%;
}
.tabs #resumeList {
	-ms-flex-align: center;
	align-items: center;
	color: #ffffff;
}
.tabs li #resumeList {
	color: rgb(242, 177, 52);
	font-weight: bold;
	border-bottom: 1px solid #ffffff;
}
.tabs #resumeList:hover {
	color: rgb(242, 177, 52);
	border-bottom-color: #ffffff;
	text-decoration: none;
}
.pagination li {
    margin: 0px -95px;
    margin-left: 96px;
}
ul.pagination {
    position: absolute;
    left: 41.9%;
    bottom: -80px;
    left: 100px;
}
.seungjae{
    position: absolute;
    bottom: -395px;
    width: 10%;
    background: #fff;
    text-align: right;
    font-family: 'Noto Sans SC', sans-serif;
    font-weight: bold;
    left: 700px;
}
#login-hr {
	background-color: #ffffff;	
}
</style>
</head>
<body>
<div class="attach-write-container">
        <div class="attach-write-head">
            <h2>첨부파일 등록</h2>
            <div><span>* </span> 는 필수 입력, 파일크기 개별파일 <span>30MB 중 100MB까지</span></div>
            <span><img src='<c:url value="/img/noun_X_2045322-01.png"/>' ></span>
        </div>
        <form id="attach-form">
            <table id="attach-content">
                <tr>
                    <td>
                        파일구분 <span style="color: red; font-size: 11px; font-weight: bold;"> *</span>
                    </td>
                    <td>
                        <select id="file-classification">
                            <option value="file1001">이력서</option>
							<option value="file1002">자기소개서</option>
							<option value="file1003">경력기술서</option>
							<option value="file1004">자격증</option>
							<option value="file1005">증명서</option>
							<option value="file1006">추천서</option>
							<option value="file1007">포트폴리오</option>
							<option value="file1008">기획서</option>
							<option value="file1009">동영상</option>
							<option value="file1010">음성	</option>
							<option value="file1011">기타	</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        파일찾기 <span style="color: red; font-size: 11px; font-weight: bold;"> *</span>
                    </td>
                    <td>
                        <input type="radio" checked="checked" name="file" id="file" value="file">
                        <label for="file">파일</label>    
                        <input type="radio" name="file" id="url" value="url">
                        <label for="url">URL</label>   
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="file" name="attach-file" id="" class="attach-input">
                        <input type="url" name="attach-url" id="" value="http://" class="url-input">
                    </td>
                </tr>
            </table>
            <div id="caution-content">
                <pre>
위조된 문서를 등록하여 취업활동에 이용시 법적 책임을 지게 될 수 있습니다.
(주)JobStory은 구직자가 등록한 문서에 대해 보증하거나 별도의 책임을 지지 않으며
첨부된 문서를신뢰하여 발생한 법적 분쟁에 책임을 지지 않습니다. (개인회원약관 제15조 관련)
                </pre>
            </div>
            <div id="attach-btn-container">
                <button id="attach-submit-btn">완료</button>
                <button id="attach-cancel-btn">취소</button>
            </div>
        </form>
    </div>
    <div class="cover">
    </div>
    <div class="all-container">
        <div class="head-container">
            <div>
                <div class="title">
                    <h1>이력서 현황</h1>
                </div>
                <div id="content-container">
                    <ul>
                        <li>이력서는 최대 10개까지 작성하여 등록 가능합니다.</li>
                        <li>지원하고자 하는 회사마다 이력서 내용을 다르게 하여 지원 가능합니다.</li>
                        <li>(입사지원을 한 후 이력서의 내용을 수정해도 이전에 지원한 이력서의 내용은 변경되지 않습니다.)</li>
                        <li>인재정보는 1개의 이력서만 공개 가능합니다.</li>
                    </ul>
                    <div id="img-container">
                        <!-- <img src="../별도UI/image/"/> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="list-container">
            <div class="title-container">
                <div id="list-title">이력서 리스트</div>
                <span id="resume-list-count" class="list-count">총 ${rCnt} 건</span>
                <button class="snip1535" id="resume-btn" type="button"/>이력서 등록</button>  
            </div>
            <form>
                <table id="resume-list">
                    <thead>
                        <th>선택</th>
                        <th>이력서 제목</th>
                        <th>최근수정일</th>
                        <th>다운로드</th>
                    </thead>
                    <tbody id="resume-list-result">
	                    <c:choose>
		                    	<c:when test="${pageResume.resumeCnt ne 0}">
				                    <c:forEach var="r" items="${rList}">
				                        <tr>
				                            <td>
				                                <input type="radio" name="resume" id="resume-title${r.resumeNo}" value="${r.resumeNo}">
				                            </td>
				                            <td><label for="resume-title${r.resumeNo}">${r.title}</label></td>
				                            <td>${r.regDate}</td>
				                            <td><input type="button" class="download-btn" id="download-btn${r.resumeNo}" value="다운로드" /></td>
				                        </tr>
		                    		</c:forEach>  
		                        </c:when>
		                        <c:when test="${pageResume.resumeCnt eq 0}">
		                        	<tr>
		                        		<td colspan="4">등록된 게시물이 존재하지 않습니다.</td>
		                        	</tr>
		                        </c:when>
	                    </c:choose>  
                    </tbody>
                </table>
            </form>
        </div>
        <div id="resume-btn-container">
            <input type="button" id="delete-btn" value="삭제" />
            <input type="button" id="modify-btn" value="수정" />
            <input type="button" id="show-btn" value="보기" />
        </div>
        <div class="resume-pagination">
        	<nav>
				<ul id="resume-pagination" class="pagination">
					<c:forEach var="i" begin="${pageResume.beginPage}" end="2">
						<li <c:if test="${pageResume.pageNo == i}">class="active" data-current="true" </c:if> ><a href="${i}" id="number-page" data-index="${i}" >${i}</a></li>
					</c:forEach>
				</ul>
			</nav>
        </div>
        <div class="attach-container">
            <div class="title-container">
                <div id="attach-title">첨부파일 리스트</div>
                <span id="attach-list-count" class="list-count">총 ${attachCnt} 건</span>
                <button class="snip1535" id="attach-btn" type="button"/>첨부파일 등록</button>  
            </div>
            <form>
                <table id="attach-list">
                    <thead>
                        <th><input type="checkbox" id="checkAll"/></th>
                        <th>항목</th>
                        <th>파일명</th>
                        <th>등록/수정일</th>
                        <th>용량</th>
                        <th>다운로드</th>
                    </thead>
                    <tbody id="attach-list-result">
                    	<c:choose>
                    		<c:when test="${not empty rAttachList}">
	                    		<c:forEach var="attach" items="${rAttachList}">
			                        <tr>
			                            <td>
			                            	<input type="checkbox" name="attach" id="attach-title${attach.fileNo}" value="${attach.fileNo}" data-index="${attach.fileNo}">
			                            </td>
			                            <td>${attach.fileId}</td>
			                            <td>
			                            	<c:if test="${not empty attach.oriName}">
			                            		<label for="attach-title${attach.fileNo}">${attach.oriName}</label>
			                            	</c:if>
			                            	<c:if test="${not empty attach.url}">
			                            		<label for="attach-title${attach.fileNo}"><a href="${attach.url}">${attach.url}</a></label>
			                            	</c:if>
			                            </td>
			                            <td>${attach.regDate}</td>
			                            <td>${attach.fileSize} KB</td>
			                            <td><input class="download-btn" id="download-btn${attach.fileNo}" type="button" value="다운로드" /></td>
			                        </tr>
	                    		</c:forEach>
                    		</c:when>
                    		<c:when test="${empty rAttachList}">
                    			<tr>
		                            <td colspan="6">등록된 게시물이 존재하지 않습니다.</td>
	                            </tr>
                    		</c:when>
                    	</c:choose>
                    </tbody>
                </table>
            </form>
        </div>
        <div id="attach-delete-btn">
            <input type="button" value="삭제" />
        </div>
        <div class="attach-pagination">
           <nav>
				<ul id="attach-pagination" class="pagination">
					<li <c:if test="${pageAttach.prev eq false}">class="disabled"</c:if> >
						<a href="${pageAttach.beginPage - 1}" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<c:forEach var="i" begin="${pageAttach.beginPage}" end="${pageAttach.endPage}">
						<li <c:if test="${pageAttach.pageNo == i}">class="active" data-current="true"</c:if> ><a href="${i}">${i}</a></li>
					</c:forEach>
					<li <c:if test ="${pageAttach.next eq false}">class="disabled"</c:if> >
						<a href="${pageAttach.endPage + 1}" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
					</li>
				</ul>
			</nav>
        </div>
    </div>
    
<footer class="seungjae">
   <p>&copy; Job Story 2018</p>
</footer>

	 <script>
	 	/* 첨부파일 다운로드 */
	 	$(".download-btn").click(function () {
	 		var attachNo = $(this).attr("id");
	 		alert(attachNo);
	 		location.href = "attachDownload.do?memberNo="+${user.memberNo}
	 	});
	 
		/* 첨부파일 페이징 처리 */
		var endPage = ${pageAttach.endPage};
		var beginPage = ${pageAttach.beginPage};
		
        $("#attach-pagination").on("click", "li > a", function (e) {
        	e.preventDefault();
        	var pageNo = $(this).attr("href");
    		alert(pageNo);
    		
    		if(pageNo == 0 || pageNo > '${pageAttach.lastPage}'){
    			alert("해당 게시물이 존재하지 않습니다.");
    			return false;
    		}
    		
    		$("#attach-pagination > li[data-current=true]").removeAttr("class").removeAttr("data-current");
        	$(this).parent().attr("class", "active").attr("data-current","true");
        	
        	$.ajax({
    			url: "attachFilePage.do",
    			data: {
    				"pageNo": pageNo,
    				"memberNo": "${user.memberNo}"
    			},
    			type: "POST"
    		}).done(function (data) {
    			var rAttachList = data.rAttachList;
    			var sh = $(document).scrollTop();
        		console.log("data : ", data);
        		console.log("현재 스크롤 위치 : ", sh);
        		console.log("data.rAttachList : ", rAttachList);

        		$(window).scrollTop(sh);
				
        		var html = "";
        		for( var i = 0 ; i < rAttachList.length ; i++ ){
        			html += "<tr>"
        				 + "<td>"
        				 + "<input type='checkbox' name='attach' id='attach-title" + rAttachList[i].fileNo +  "' value='" + rAttachList[i].fileNo + "'>"
        				 + "</td>"
       					 + "<td>" + rAttachList[i].fileId + "</td>"
       					 + "<td>";
        			if(rAttachList[i].oriName != null){
	   					html += "<label for='attach-title" + rAttachList[i].fileNo + "'>" + rAttachList[i].oriName + "</label>"
	   				};
	   				if(rAttachList[i].oriName == null){
	   					html += "<label for='attach-title" + rAttachList[i].fileNo + "'><a href='" + rAttachList[i].url + "'>"+ rAttachList[i].url +"</a></label>"
	   				};
       				html += "</td>"
       					 + "<td>" + rAttachList[i].regDate + "</td>"
       					 + "<td>" + rAttachList[i].fileSize + " KB</td>"
       					 + "<td>"
       					 + "<input class='download-btn' id='download-btn" + rAttachList[i].fileNo + "'type='button' value='다운로드' data-index='"+ rAttachList[i].fileNo +"'/>"
       					 + "</td>"
	       				 + "</tr>";
        		};
        		$("#attach-list-result").html(html);
				$("#attach-list-count").text("총 " + data.page.resumeCnt + " 건");
				console.log("endPage : ", endPage);
				console.log("beginPage : ", beginPage);
				console.log("pageNo : ", pageNo);

				if(pageNo > endPage){
					alert("탭 전환");
					var html = "";
					html += '<li>'
						 + '<a href="' + (data.page.beginPage-1) + '" aria-label="Previous">'
						 + '<span aria-hidden="true">&laquo;</span>'
						 + '</a>'
						 + '</li>';
						
					for (var i = data.page.beginPage ; i < data.page.endPage+1 ; i++ ){
						if(i == data.page.beginPage){
							html += '<li class="active" data-current="true">';
						} else {
							html += '<li>';
						}
						
						html += '<a href="'+ i + '">' + i + '</a>'
							 + '</li>'
					};
					html += '<li>'
						 + '<a href="' + (data.page.endPage+1) + '" aria-label="Next">'
						 + '<span aria-hidden="true">&raquo;</span>'
						 + '</a>'
						 + '</li>';
					$("#attach-pagination > li").remove();
					$("#attach-pagination").append(html);
					endPage = data.page.endPage;
					beginPage = data.page.beginPage;
					console.log(beginPage);
					console.log(endPage);
				} else if (pageNo < beginPage){
					var html = "";
					html += '<li>'
						 + '<a href="' + (data.page.beginPage-1) + '" aria-label="Previous">'
						 + '<span aria-hidden="true">&laquo;</span>'
						 + '</a>'
						 + '</li>';
						
					for (var i = data.page.beginPage ; i < data.page.endPage+1 ; i++ ){
						if(i == data.page.beginPage){
							html += '<li class="active" data-current="true">';
						} else {
							html += '<li>';
						}
						
						html += '<a href="'+ i + '">' + i + '</a>'
							 + '</li>'
					};
					html += '<li>'
						 + '<a href="' + (data.page.endPage+1) + '" aria-label="Next">'
						 + '<span aria-hidden="true">&raquo;</span>'
						 + '</a>'
						 + '</li>';
					$("#attach-pagination > li").remove();
					$("#attach-pagination").append(html);
					endPage = data.page.endPage;
					beginPage = data.page.beginPage;
					console.log(beginPage);
					console.log(endPage);
				}
    		}).fail(function () {
    			alert("실패");
    		})
        });

		/* [첨부파일] */
        /* 첨부파일 창 on, off */
        function attachWrite(flag) {
            $(".attach-write-container").css("visibility",flag);
            $(".cover").css("visibility", flag);
            $(".attach-input").css("visibility", flag);
        }
        
        /* 첨부파일 창 닫기 */
        $(".attach-write-head > span > img").click(function(){
            alert("close");
            attachWrite("hidden");
            $(".attach-input").css("visibility", "hidden");
            $(".url-input").css("visibility", "hidden");
        });
        
        /* 첨부파일 등록 버튼 */
        $("#attach-btn").click(function () {
            attachWrite("visible");
            $("html, body").animate({scrollTop:1300}, 400);
            // var scrollPosition = $("body").offset().top;
        });

        /* 첨부파일 제출 버튼 */
        $("#attach-submit-btn").click(function (e) {
            e.preventDefault();
            var formData = new FormData();
            
            var fileClassification = $("#file-classification").val();
            var fileFind = $("input[name=file]:checked").val();
            var fileContent = $("input[name=attach-file]")[0].files[0];
            var urlContent = $("input[name=attach-url]").val();
            
            if(fileFind == "file" && fileContent == null){
            	swal(
   			            '파일 미첨부',
   			            '파일을 첨부해주세요',
   			            'error'
   			        );
            	return false;
            } else if (fileFind == "url" && urlContent == "http://") {
            	swal(
   			            'URL 미입력',
   			            'URL 을 입력해주세요',
   			            'error'
   			        );
            	return false;
            }
            attachWrite("hidden");
            $(".attach-input").css("visibility", "hidden");
            $(".url-input").css("visibility", "hidden");
            
            
            console.log("파일 구분 : ", fileClassification);
            console.log("파일 찾기 : ", fileFind);
            console.log("파일 : ", fileContent);
            console.log("URL : ", urlContent);
            
            if(fileFind=="file"){
	            formData.append("file", fileContent);
            } else if(fileFind=="url") {
            	formData.append("url", urlContent);
            }
            formData.append("fileId", fileClassification);
            
            $.ajax({
            	url: "attachFileWrite.do",
            	type: "POST",
            	data: formData,
            	processData: false,
     			contentType: false,
            	beforeSend: function () {
            		
            	}
            }).done(function (data) {
            	console.log("data : ",  data);
            	var html = "";
        		for( var i = 0 ; i < data.attachList.length ; i++ ){
        			html += "<tr>"
        				 + "<td>"
        				 + "<input type='checkbox' name='attach' id='attach-title" + data.attachList[i].fileNo +  "' value='" + data.attachList[i].fileNo + "'>"
        				 + "</td>"
       					 + "<td>" + data.attachList[i].fileId + "</td>"
       					 + "<td>";
 					 if(data.attachList[i].oriName != null){
 						 html += "<label for='attach-title" + data.attachList[i].fileNo + "'>" + data.attachList[i].oriName + "</label>"
 					 };
 					 if (data.attachList[i].url != null){
 						html += "<label for='attach-title" + data.attachList[i].fileNo + "'><a href='" + data.attachList[i].url + "'>"+ data.attachList[i].url +"</a></label>"
 					 };
       				html += "</td>"
       					 + "<td>" + data.attachList[i].regDate + "</td>"
       					 + "<td>" + data.attachList[i].fileSize + " KB</td>"
       					 + "<td>"
       					 + "<input class='download-btn' id='download-btn" + data.attachList[i].fileNo + "'type='button' value='다운로드' data-index='"+ data.attachList[i].fileNo +"'/>"
       					 + "</td>"
	       				 + "</tr>";
        		};
        		$("#attach-list-result").html(html);
				$("#attach-list-count").text("총 " + data.attachCnt + " 건");
            }).fail(function () {
            	alert("실패");
            });
        });

        /* 첨부파일 취소 버튼 */
        $("#attach-cancel-btn").click(function (e) {
            e.preventDefault();
            alert("취소");
            attachWrite("hidden");
            $(".attach-input").css("visibility", "hidden");
            $(".url-input").css("visibility", "hidden");
        });
        
        /* 체크박스 전체 선택&해제 */
        $("#checkAll").click(function () {
            var checked = $(this).prop("checked");
            alert(checked);
            if(checked) {
                $("input[name=attach]").each(function () {
                    $(this).prop("checked", true);
                })
            } else {
                $("input[name=attach]").each(function () {
                    $(this).prop("checked", false);
                })
            }
        });

        /* 첨부파일 등록 - 파일 찾기 */
        $("input[name=file]").click(function () {
            var val = $("input[name=file]:checked").val();
            if(val=="file"){
                alert(val);
                $(".attach-input").css("visibility", "visible");
                $(".url-input").css("visibility", "hidden");
            } else if (val=="url") {
                alert(val);
                $(".attach-input").css("visibility", "hidden");
                $(".url-input").css("visibility", "visible");
            }
        });
        
        /* 첨부파일 삭제 */
        $("#attach-delete-btn > input").click(function () {

        	var deleteAttachFile = $("input[name=attach]:checked").serialize();
			console.log("deleteAttachFile : ", deleteAttachFile);
        	if(deleteAttachFile == "") {
        		swal(
   			            '파일 미선택',
   			            '삭제할 파일을 선택해주세요',
   			            'error'
   			        );
        		return false;
        	}
        	
        	$.ajax({
        		url: "attachFileDelete.do?memberNo=${user.memberNo}",
        		type: "POST",
        		data: deleteAttachFile,
				contentType: "application/x-www-form-urlencoded; charset=UTF-8"         		
        	}).done(function (data) {
        		alert("성공");
        		console.log(data);
        		
        		var html = "";
        		if(data.attachList != null){
	        		for( var i = 0 ; i < data.attachList.length ; i++ ){
	        			html += "<tr>"
	          				 + "<td>"
	          				 + "<input type='checkbox' name='attach' id='attach-title" + data.attachList[i].fileNo +  "' value='" + data.attachList[i].fileNo + "'>"
	          				 + "</td>"
	         					 + "<td>" + data.attachList[i].fileId + "</td>"
	         					 + "<td>";
	       				 if(data.attachList[i].oriName != null){
	       					 html += "<label for='attach-title" + data.attachList[i].fileNo + "'>" + data.attachList[i].oriName + "</label>"
	       				 };
	       				 if (data.attachList[i].url != null){
	       					html += "<label for='attach-title" + data.attachList[i].fileNo + "'><a href='" + data.attachList[i].url + "'>"+ data.attachList[i].url +"</a></label>"
	       				 };
	         				html += "</td>"
	         					 + "<td>" + data.attachList[i].regDate + "</td>"
	         					 + "<td>" + data.attachList[i].fileSize + " KB</td>"
	         					 + "<td>"
	         					 + "<input class='download-btn' id='download-btn" + data.attachList[i].fileNo + "'type='button' value='다운로드' data-index='"+ data.attachList[i].fileNo +"'/>"
	         					 + "</td>"
	             				 + "</tr>";
        			};
        		} else {
        			html +="<tr>"
         				 + "<td colspan='6'>"
          				 + "등록된 게시물이 존재하지 않습니다."
          				 + "</td>";
        		};

        		$("#attach-list-result").html(html);
				$("#attach-list-count").text("총 " + data.page.resumeCnt + " 건");
        		
        	}).fail(function () {
        		alert("실패");
        	})
        	
        });
        
        /* [이력서] */
        /* 이력서 등록 폼 이동 */
        $("#resume-btn").click(function () {
        	var rCnt = ${rCnt};
        	if(rCnt < 10){
                location.href="resumeWriteForm.do"
        	} else {
           		swal(
   			            '이력서 최대 개수를 초과하였습니다',
   			            '최대 10개까지 저장 가능',
   			            'error'
   			        );
        		return false;
        	}
            
        });
        
        /* 이력서 보기 */
        $("#show-btn").click(function () {
        	var selectResumeNo = $("input[name=resume]:checked").val();
        	console.log("resumeNo : " + selectResumeNo);
        	if(selectResumeNo == null){
        		swal(
			            '이력서를 선택해주세요',
			            '',
			            'error'
			        );
        		return false;
        	}
        	location.href="resumeDetail.do?resumeNo="+selectResumeNo;
        });
        
        /* 이력서 수정 */
        $("#modify-btn").click(function () {
        	var selectResumeNo = $("input[name=resume]:checked").val();
        	if(selectResumeNo == null){
        		swal(
			            '이력서를 선택해주세요',
			            '',
			            'error'
			        );
        		return false;
        	} else {
	        	location.href="resumeModifyForm.do?resumeNo="+selectResumeNo;
        		
        	}
        });
        
        /* 이력서 삭제 */
        $("#delete-btn").click(function () {
        	var selectResumeNo = $("input[name=resume]:checked").val();
        	if(selectResumeNo == null){
        		swal(
			            '이력서를 선택해주세요',
			            '',
			            'error'
			        );
        		return false;
        	}
        	$.ajax({
        		type: "POST",
        		url: "/jobstory/user/resumeDelete.do",
        		data: {"resumeNo": selectResumeNo}
        	}).done(function (data) {
        		alert("전송 성공");
        		var list = data.rList;
        		var cnt = data.cnt;
        		console.log(list);
        		console.log(cnt);
        		var html = "";
        		for( var i = 0 ; i < list.length ; i++ ){
        			html += "<tr>"
        				 + "<td>"
        				 + "<input type='radio' name='resume' id='resume-title" + list[i].resumeNo +  "' value='" + list[i].resumeNo + "'>"
        				 + "</td>"
       					 + "<td><label for='resume-title" + list[i].resumeNo + "'>" + list[i].title + "</label></td>"
       					 + "<td>" + list[i].regDate + "</td>"
       					 + "<td><input type='button' class='download-btn' id='download-btn" + list[i].resumeNo + "' value='다운로드' /></td>"
	       				 + "</tr>";
        		};
        		$("#resume-list-result").html(html);
				$("#resume-list-count").text("총 " + cnt + " 건");
				$("#resume-pagination > li[data-current=true]").removeAttr("class").removeAttr("data-current");
	        	$("#resume-pagination:nth-child(0)").attr("class", "active").attr("data-current","true");
        	}).fail(function () {
        		alert("전송 실패");
        	});
        });
        
        /* 이력서 번호 페이징 처리 */   
        $("#resume-pagination > li > a[id=number-page]").click(function (e) {
        	e.preventDefault();
        	var index = $(this).data("index");
        	console.log("index : ", index); 
        	$("#resume-pagination > li[data-current=true]").removeAttr("class").removeAttr("data-current");
        	$(this).parent().attr("class", "active").attr("data-current","true");

        	$.ajax({
        		url: "resumeListPage.do",
        		data: {
        			"pageNo": index,
        			"memberNo": "${user.memberNo}"
        		},
        		type: "POST"
        	}).done(function (data) {
        		var rList = data.resumeList;
        		console.log("data : ", data);
        		console.log("data.resumeList : ", rList);
				var html = "";
				if(rList.length == 0){
					html += "<tr>"
	       				 + "<td colspan='4'>"
	       				 + "등록된 게시물이 존재하지 않습니다."
	       				 + "</td>"
	       				 + "</tr>";
				} else {
					for( var i = 0 ; i < rList.length ; i++ ){
	        			html += "<tr>"
	        				 + "<td>"
	        				 + "<input type='radio' name='resume' id='resume-title" + rList[i].resumeNo +  "' value='" + rList[i].resumeNo + "'>"
	        				 + "</td>"
	       					 + "<td><label for='resume-title" + rList[i].resumeNo + "'>" + rList[i].title + "</label></td>"
	       					 + "<td>" + rList[i].regDate + "</td>"
	       					 + "<td><input type='button' class='download-btn' id='download-btn" + rList[i].resumeNo + "' value='다운로드' /></td>"
		       				 + "</tr>";
	        		};	
				};
				
				$("#resume-list-result").html(html);
        	}).fail(function () {
        		alert("실패");
        	})
        });

    </script>
</body>
</html>