<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:import url="/common/mainLogout.jsp" />
<link href="<c:url value="/css/search.css"/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value="/css/mainbanner.css"/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value="/css/community.css"/>" rel="stylesheet"
	type="text/css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<!-- 네이버 -->
<script type="text/javascript"
	src="/jobstory/resources/edite/js/HuskyEZCreator.js" charset="utf-8"></script>

<title>인터뷰 작성 페이지</title>
<script type="text/javascript" src="./js/HuskyEZCreator.js"
	charset="utf-8"></script>
<style>
#content h4 {
    text-align: center;
    font-size: 25px;
    font-weight: 600;
    margin-bottom: 27px;
    margin-left: -90px;
}

#title, #company, #choice, #interview, #interviewcnt {
    border-radius: 10px;
    width: 650px;
    float: right;
    margin-right: 8%;
    background-color: #eeeeee;
}

/*sprite with stars*/
#reviewStars-input input:checked ~ label, #reviewStars-input label,
	#reviewStars-input label:hover, #reviewStars-input label:hover ~ label
	{
	background:
		url('http://positivecrash.com/wp-content/uploads/ico-s71a7fdede6.png')
		no-repeat;
}

#reviewStars-input {
    overflow: hidden;
    margin-top: -35px;
    margin-right: 45px;
}

#reviewStars-input input {
	filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
	opacity: 0;
	width: 43px;
	height: 40px;
	position: absolute;
	top: 0;
	z-index: 0;
}

#reviewStars-input input:checked ~ label {
	background-position: 0 -40px;
	height: 40px;
	width: 43px;
}

#reviewStars-input label {
	background-position: 0 0;
	height: 40px;
	width: 43px;
	float: right;
	cursor: pointer;
	margin-right: 10px;
	position: relative;
	z-index: 1;
}

#reviewStars-input label:hover, #reviewStars-input label:hover ~ label {
	background-position: 0 -40px;
	height: 40px;
	width: 43px;
}

#content {
    font-size: 20px;
    margin-left: 21.5%;
    padding-left: 75px;
    padding-top: 15px;
    margin-top: 5%;
    border: 1px solid #c6c6c6;
    border-radius: 10px;
    width: 915px;
    color: #999999;
    height: 935px;
}

#profile {
	width: 100px;
    height: 100px;
}
#writebtn {
    margin-left: 540px;
    margin-top: 10px;
}
#jicjong {
    margin-left: 240px;
    margin-top: -61px;
}
.file-attach {
	margin-top: -35px;
}

.seungjae{
    position: absolute;
    bottom: -312px;
    width: 10%;
    background: #fff;
    text-align: right;
    font-family: 'Noto Sans SC', sans-serif;
    font-weight: lighter;
    left: 695px;
    font-size: 14px;
    color: black;
}
</style>
</head>
<body>
<div id="content">
	<h4>글쓰기</h4>

	<form method="post" id="frm" enctype="multipart/form-data" action="writes.do">
		<div id="board-write">
			<input type="hidden" name="writer" value="${user.id}">
		</div>
	<span id="search-img"> </span>
	<div>
		<span>제목:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> <input type="text" id="title" name="title" />
		<br><br>
		<span>지원 회사:&nbsp;</span> <input type="text" id="company" name="company" />
	</div>
	<br>
	<div style="width: 210px;">
		<span >지원시기: </span> <select id="search-category" name="applyDate">
			<option value="1">상반기</option>
			<option value="2">하반기</option>
		</select>
	</div>
	
	<br>
	
	<div id="jicjong">
		<span>직종 :</span> 
			<select id="job" name="jobId">
				<option value="job1001">경영·사무</option>
				<option value="job1002">유통·무역</option>
				<option value="job1003">영업·고객상담</option>
				<option value="job1004">생산·제조</option>
				<option value="job1005">IT·인터넷</option>
				<option value="job1006">디자인</option>
				<option value="job1007">전문직</option>
				<option value="job1008">교육</option>
				<option value="job1009">미디어</option>
				<option value="job1010">특수계층·공공</option>
				<option value="job1011">건설</option>
				<option value="job1012">서비스</option>
				<option value="job1013">의료</option>
				<option value="job1014">기타</option>
			</select>
	</div>
	
	<br>
	<!-- 자소서 첨부 -->
	<div class="file-attach">
		<br>
		<span>자소서 첨부</span> <input type="file" id="file-attach" name="attach"
			multiple="multiple" />
		   <a href="#this" name="delete" class="btn">삭제하기</a>
	</div>
	
	<textarea name="content" id="smarteditor" rows="10" cols="100" style="width: 766px; height: 412px;"></textarea>
	<br>
	<div id="writebtn">
		<input type="button" class="btn btn-warning" role="button" id="savebutton" value="등록" />
		<button type="button" class="btn btn-warning" href="list.do" role="button">목록으로</button>
	</div>
</form>
<footer class="seungjae">
    <p>&copy; Job Story 2018</p>
</footer>
<script>
    
    $("input[name=reviewStars]").on({
        "click" : function(){
          var star2 = $("input[name=reviewStars]:checked").val();
          console.log(star2)
        }
    
    });
</script>
<!-- 스마트에디터 -->
<script>
    var oEditors = []; // 개발되어 있는 소스에 맞추느라, 전역변수로 사용하였지만, 지역변수로 사용해도 전혀 무관 함. 
    $(document).ready(function() {
    // Editor Setting
    
    nhn.husky.EZCreator.createInIFrame({
    	oAppRef : oEditors,
    	// 전역변수 명과 동일해야 함. 
    	elPlaceHolder : "smarteditor", // 에디터가 그려질 textarea ID 값과 동일 해야 함. 
    	sSkinURI : "/jobstory/resources/edite/SmartEditor2Skin.html", // Editor HTML
    	fCreator : "createSEditor2", // SE2BasicCreator.js 메소드명이니 변경 금지 X 
    	htParams : { // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
    	bUseToolbar : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
    	bUseVerticalResizer : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
    	bUseModeChanger : true,
    	} 
    }); 
    // 전송버튼 클릭이벤트
    $("#savebutton").click(function(){ 
    	//if(confirm("저장하시겠습니까?")) { // id가 smarteditor인 textarea에 에디터에서 대입
    oEditors.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []); 
    // 이부분에 에디터 validation 검증
    if(validation()) { $("#frm").submit();
    } //} 
    }) 
    }); 
    // 필수값 Check 
    
	function validation(){ 
		oEditors.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []); 
		
		var contents = $.trim(oEditors[0].getContents()); 
		if(contents === '<p>&bnsp;</p>' || contents === ''){ // 기본적으로 아무것도 입력하지 않아도 값이 입력되어 있음. 
			
			alert("내용을 입력하세요."); 
			oEditors.getById['smarteditor'].exec('FOCUS');
			return false;
		} 
		
		return true; 
}   
</script>		

<script>
$("a[name='delete']").on("click",function(e){
    e.preventDefault();
    fn_fileDelete($(this));
})

  function fn_fileDelete(obj){
            obj.parent().remove();
        }
</script>

</body>
</html>