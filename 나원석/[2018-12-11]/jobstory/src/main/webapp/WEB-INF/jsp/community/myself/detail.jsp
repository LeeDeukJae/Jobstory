<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:import url="/common/mainLogout.jsp" />
<link href="<c:url value="/css/search.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/mainbanner.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/community.css"/>" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script> 

<title>면접 후기 게시판</title>
<style>
#comment {
	border-radius: 10px;
	width: 900px;
	height: 50px;
	left: 400px;
	top: 380px;
	border: 1px solid #c6c6c6;
}

/* 작성된 댓글 */
#createdCmt {
	border-radius: 20px;
	width: 900px;
	height: 50px;
	top: 180px;
}

/* 수정, 삭제 버튼*/
.commentList {
	border-radius: 20px;
	top: 700px;
	left: 0px;
	width: 900px;
	text-align: center;
}

#insertCmt {
	border: 0px solid white;
	border-radius: 10px;
	background-color: #e5fff3;
	width: 100px;
	height: 30px;
	font-weight: bold;
}

/*댓글 작성 내용 */
#cmtCon {
	width: 70%;
	border-radius: 20px;
}
/*댓글 작성자 아이디 */
#cmtId {
	width: 10%;
	border-radius: 20px;
}

/*댓글 작성 버튼 */
#commentUpdate, #commentDelete {
	border: 0px solid white;
	border-radius: 10px;
	font-weight: bold;
	width: 60px;
	height: 25px;
    font-size: 12px;
}

/*작성된 댓글 내용 */
#cmtListCon{
    border-radius: 20px;
    width: 70%;   
}

#content {
	width:910px;
}

#content{
	text-align: center; 
}

#newComment{
    border-radius: 20px;
    border: 1px solid #aaa;
    width: 900px;
    height: 50px;
    left: 400px;
}
#commentP{
	font-weight: bold;
	color: blue;
	margin-left: 10px;
	float: left;
}

#commentC{
	margin:14px;
	
}
#upndel {
	margin:11px;

}

#toptitle, #contents{
    background-color: white;
    border: 1px solid #c6c6c6;
    padding: 10px;
    margin-top: -32px;
}
#contents{
	font-size: 15px;
    white-space: pre-line;
    border: none;
    border-top: 1px solid #c6c6c6;
    color: #999999;
}
h1{
    text-align: left;
    color: rgb(79, 185, 159);
}
#viewicon{
	width:10px;
	height: 10px;
	opacity: 0.5;
}
#toptitle{
  border-radius: 15px;
}
#container{
  max-width: 1250px;
  padding-top: 110px;
  padding-left: 20%;
  text-align: center;
}

#toptitle > h1 {
    width: 910px;
    height: 78px;
    border-radius: 10px;
    vertical-align: middle;
    font-weight: bold;
    text-align: left;
    font-size: 25px;
    color: #999999;
    margin-left: 20px;
    margin-bottom: -25px;
}
#detailcn{
  font-size: 13px;
  color: #9b9b9b;
  text-align: left;
  margin-left: 20px;
}

#contentside{
max-height: 50px;

}
#commentReg{
  text-align: center;
}

#siren{
  text-align: right;
}
#sirenicon,#likeicon{
  width: 20px;
  height: 20px;
}
hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    /* border-top: 1px solid #eee; */
}

</style>
</head>  
<body>
<div id="container">
	<div id="toptitle">
		<h1>${board.title}</h1>
		<div id="detailcn">
			<div>
				<p>
					<span> 작성자: ${user.id} &nbsp;</span><span> 작성일:<fmt:formatDate
					
					
							value="${board.regDate}" pattern="yyyy-MM-dd" />&nbsp;
				
				</p>
			</div>
		</div>
		<hr>
		<div id="contents">
			<p>${board.content}
			<div id="contentside">
				<span>조회수:${board.viewCnt}</span>
				<span id="rc">추천수: 152</span>
				<span id="rc">
					면접시기:<c:if test="${board.applyDate==1}">상반기</c:if> 
							 <c:if test="${board.applyDate==2}">하반기</c:if>
				</span>
			</div>
			<div id="siren">
				<button id="btn"><img src="<c:url value="/img/like.png" />" id="likeicon">추천</button>		
				<button id="btn"><img src="<c:url value="/img/siren.JPG" />" id="sirenicon" />신고</button>	
			</div>
		</div>
		</div>
		<div style="margin-left: 75%;margin-top: -1%;">
			<br>
			<span id="updatebutton" ><button type="button" class="btn btn-primary">수정</button></span> 
			<a href='delete.do?no=${board.boardNo}' class="btn btn-primary" role="button" id="deletebutton">삭제</a>	
		</div>
		<hr>
		<div id="commentReg">			
			<form id="commentAjax" action="insertComment.do" method="post">
				<textarea id="comment" name="content" style="top: 53px;"></textarea>
				<br><br>
				<button type="button" class="btn btn-success" id="regComment" class="modify"
					style="margin-left: 82%;margin-top: -2%;">댓글 등록</button>
			</form>
			<div class="tt"></div>
		</div>
</div>
<span class="pagination"></span>
<script>
// 버튼에 click 이벤트를 설정한다.
// click 시 id가 msg인 input 창에 입력된 value 값을 
// div 태그의 innerText로 설정합니다.
$("#regComment").click(function() {
	$(".tt").text($("#comment").val())
})
</script>

<!-- 추천파트 -->
<script>
    $(".rec").click(function(){
		var rUrl = "insertrecom";
		if (recExist == 1) {
			rUrl = "deleterecom";
		}
		$.ajax({
			url : '/jobstory/community/' + rUrl + '.do',
			data : {"no":numb, "id":nickname}
		}).done(function(){
			if (recExist == 0){
				alert("추천되었습니다.");
				recExist = 1;
				$(".rec").html("추천<span class='glyphicon glyphicon-heart' aria-hidden='true'></span>");
			} else {
				alert("추천이 취소되었습니다.")
				recExist = 0;
				$(".rec").html("추천<span class='glyphicon glyphicon-heart-empty' aria-hidden='true'></span>");
			}
			recnumber();
		});
		
	});
	
	function recnumber(){			
		$.ajax({
			url:"/cocain/board/qna/recomCount.do",
			data : "no="+numb
		}).done(function(result){
			$("#rc").html("추천 "+result);
		})
	};
	recnumber();	
    
</script>
</body>
</html>