<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/mainLogout.jsp" />
<link href="<c:url value="/css/mypage_user.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.1/css/bulma.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
<c:import url="/common/mypageUserMenu.jsp" />
<style>
html {
	background-color: white;
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

.btn {
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

.btn-info {
	background-color: rgb(79, 185, 159);
	color: white;
}

.btn-info:hover {
	background-color: rgb(6, 133, 135);
	color: rgb(242, 177, 52);
}

.following {
	margin-top: 25px;
	font-weight: bold;
}
.myscrap {
    border-collapse: collapse;
    margin-top: 4%;
    margin-left: 15%;
    border-spacing: 0;
    width: 70%;
    font-weight: 600;
}
.myscrap tr {
	text-align: center;
	font-size: 12px;
	height: 40px;
}
.myscrap tr:hover {
	background-color: rgb(242, 177, 52, 0.2);
}

.myscrap td {
	text-align: center;
	vertical-align: middle;
}

.myscrap th {
/* 	background-color: rgb(79, 185, 159); */
	height: 40px;
	color: #4a4a4a;
	text-align: center;
	vertical-align: middle;
	border-bottom: 1px solid rgb(206, 206, 206);
}

.myscrap img {
	height: 30px;
	vertical-align: middle;
}

.seungjae {
	position: absolute;
	bottom: -100px;
	width: 100%;
	height: 10;
	background: #fff;
	text-align: right;
	right: -15%;
}
.title {
	position: relative;
	/* border: 1px solid black; */
	color: rgb(79, 185, 159);
	font-weight: bold;
}

.tabs #scrap {
	-ms-flex-align: center;
	align-items: center;
	color: #ffffff;
}
.tabs li #scrap {
	color: rgb(242, 177, 52);
	font-weight: bold;
	border-bottom: 1px solid #ffffff;
}
.tabs #scrap:hover {
	color: rgb(242, 177, 52);
	border-bottom-color: #ffffff;
	text-decoration: none;
}
</style>
</head>
<body>
<table class="myscrap">
        <thead>
        	<tr>
        	<td colspan="9" id="scrap-cnt" style="text-align: left;top: 40px;position: relative;left: 8px;font-weight: 600;"'>
				총 ${scrapPage.resumeCnt} 건
        	</td>
        	</tr>
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
        <tbody id="scrap-list">    
           	<c:forEach var="s" items="${scrapList}">
           		<tr>
	            	<td><img src="../img/noun_Star_2044877-03.png" id="scrap${s.scrapNo}" flag-data="true" /></td>
	                <td>${s.name}</td>
<%-- 	                <td><a href="?recruitmentNo=${s.recruitmentNo}&endData=${s.endDate}">${s.title}</a></td> 2019-01-03 23:59:59 --%>
	                <td><a href="?recruitmentNo=${s.recruitmentNo}&endData=<fmt:formatDate value="${s.endDate}" pattern="yyyy-MM-dd hh:mm:ss"/>">${s.title}</a></td>
	                <td>${s.experienceTitle}</td>
	                <td>${s.educationTitle}</td>
	                <td>${s.workTitle}</td>
	                <td>${s.addr}</td>
	                <td>~ <fmt:formatDate value="${s.endDate}" pattern="MM/dd"/></td>
	            </tr>
           	</c:forEach>  
        </tbody>
    </table>
    <nav>
		<ul class="pagination">
			<li <c:if test="${scrapPage.prev eq false}">class="disabled"</c:if> >
				<a href="${scrapPage.beginPage - 1}" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
				</a>
			</li>
			<c:forEach var="s" begin="${scrapPage.beginPage}" end="${scrapPage.endPage}">
					<li <c:if test="${s == 1}">class="active" data-current="true"</c:if>><a href="${s}">${s}</a></li>
<%-- 					<li <c:if test="${pageAttach.pageNo == i}">class="active" data-current="true"</c:if> ><a href="${i}">${i}</a></li> --%>
			</c:forEach>
			<li <c:if test="${scrapPage.next eq false}">class="disabled"</c:if> >
				<a href="${scrapPage.endPage + 1}" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		</ul>
	</nav>
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
      </script>
       <script>
		var endPage = ${scrapPage.endPage};
		var beginPage = ${scrapPage.beginPage};
       
        /* 스크랩 삭제 */
        $(".myscrap > tbody").on("click", "tr > td:nth-child(1) > img", function () {
            var memberNo = "${user.memberNo}";
            var scrapId = $(this).attr("id");
            var scrapNo = scrapId.substring(5);
            alert($(this).attr("id"));
            console.log("scrapNo : ",scrapNo);
            console.log("memberNo : ", memberNo);
            
            $.ajax({
            	url: "scrapDelete.do",
            	data: {
            		"scrapNo": scrapNo,
            		"memberNo": memberNo
            	},
            	type: "POST"
            }).done(function (data) {
            	alert("성공");
            	console.log(data);
            	
            	var scrapList = data.scrapList;
        		console.log(scrapList);
        		
        		var html = "";
        		for (var i = 0 ; i < scrapList.length ; i++) {
        			html += '<tr>'
        				+ '<td><img src="../img/noun_Star_2044877-03.png" id="scrap'+ scrapList[i].scrapNo +'" flag-data="true" /></td>'
        				+ '<td>' + scrapList[i].name + '</td>'
        				+ '<td><a href="?recruitmentNo='+ scrapList[i].recruitmentNo +'&endData='+ scrapList[i].paramParsingEndDate +'" >' + scrapList[i].title + '</a></td>'
        				+ '<td>' + scrapList[i].experienceTitle + '</td>'
        				+ '<td>' + scrapList[i].educationTitle + '</td>'
        				+ '<td>' + scrapList[i].workTitle + '</td>'
        				+ '<td>' + scrapList[i].addr + '</td>'
        				+ '<td>~' + scrapList[i].viewParsingEndDate + '</td>'
        				+ '</tr>'
        		}
        		$("#scrap-list").html(html);
        		$(".pagination > li[data-current=true]").removeAttr("class").removeAttr("data-current");
            	$(".pagination > li:nth-child(2)").attr("class", "active").attr("data-current","true");
        		$("#scrap-cnt").text("총 " + data.scrapPage.resumeCnt + " 건");
        		endPage = data.scrapPage.endPage;
        		beginPage = data.scrapPage.beginPage;
            }).fail(function () {
            	
            });
            
        });        
        
        /* 스크랩 리스트 페이징 */
        $(".pagination").on("click", "li > a", function (e) {
        	e.preventDefault();
        	var pageNo = $(this).attr("href");
        	var memberNo = ${user.memberNo};
			console.log("pageNo : ", pageNo);
			console.log("memberNo : ", memberNo);
			
			if(pageNo < beginPage){
				alert("게시물 없음");
				return false;
			}
			if(pageNo > endPage) {
				alert("게시물 없음");
				return false;
			}
			
			$(".pagination > li[data-current=true]").removeAttr("class").removeAttr("data-current");
        	$(this).parent().attr("class", "active").attr("data-current","true");
        	
        	$.ajax({
        		url: "scrapPage.do",
        		data: {
        			"memberNo": memberNo,
        			"pageNo": pageNo
        		},
        		type: "POST"
        	}).done(function (data) {
        		alert("성공");
        		console.log(data);
        		var scrapList = data.scrapList;
        		console.log(scrapList);
        		var html = "";
        		for (var i = 0 ; i < scrapList.length ; i++) {
        			html += '<tr>'
        				+ '<td><img src="../img/noun_Star_2044877-03.png" id="scrap'+ scrapList[i].scrapNo +'" flag-data="true" /></td>'
        				+ '<td>' + scrapList[i].name + '</td>'
        				+ '<td><a href="?recruitmentNo='+ scrapList[i].recruitmentNo +'&endData='+ scrapList[i].paramParsingEndDate +'" >' + scrapList[i].title + '</a></td>'
        				+ '<td>' + scrapList[i].experienceTitle + '</td>'
        				+ '<td>' + scrapList[i].educationTitle + '</td>'
        				+ '<td>' + scrapList[i].workTitle + '</td>'
        				+ '<td>' + scrapList[i].addr + '</td>'
        				+ '<td>~' + scrapList[i].viewParsingEndDate + '</td>'
        		}
        		$("#scrap-list").html(html);
        		endPage = data.scrapPage.endPage;
        		beginPage = data.scrapPage.beginPage;
        	}).fail(function () {
        		alert("실패");
        	})
        });
        
        /* 스크랩 채용공고 디테일 페이지 이동 */
        $("#scrap-list").on("click", "tr > td > a", function (e) {
        	e.preventDefault();
        	console.log("채용공고 디테일 페이지 전달 데이터 : ", $(this).attr("href"));
        	location.href = "<c:url value='/company/detail.do'/>"+$(this).attr("href");
        })
    </script>
</body>
</html>