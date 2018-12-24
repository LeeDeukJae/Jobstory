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
<script src="<c:url value="/js/sweetalert2.all.min.js"/>"></script>
<title>면접 후기 게시판</title>
<style>
.seungjae{
    position: relative;
    bottom: 0px;
    width: 10%;
    background: #fff;
    text-align: right;
    font-family: 'Noto Sans SC', sans-serif;
    font-weight: bold;
    left: 695px;
}
#comment {
   border-radius: 10px;
   width: 900px;
   height: 50px;
   left: 400px;
   top: 380px;
   border: 1px solid #c6c6c6;
   box-shadow: 
       0px 2px 10px rgba(0,0,0,0.1), 
       0px 10px 20px rgba(0,0,0,0.2), 
       0px 5px 10px 1px rgba(0,0,0,0.4);
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
    border: none;
    border-top: 1px solid #c6c6c6;
    color: #999999;
    text-align: center;
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
  box-shadow: 
    0px 2px 10px rgba(0,0,0,0.1), 
    0px 10px 20px rgba(0,0,0,0.2), 
    0px 5px 10px 1px rgba(0,0,0,0.4);
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
    text-align: center;
    font-size: 25px;
    color: #999999;
    margin-bottom: -25px;
}
#detailcn{
  font-size: 13px;
  color: #9b9b9b;
  text-align: right;
  margin-left: 20px;
  margin-right: 20px;
}

#contentside{
max-height: 50px;

}
#commentReg{
  text-align: center;
}

#siren{
  text-align: center;
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
.swal2-popup {
    display: none;
    position: relative;
    flex-direction: column;
    justify-content: center;
    width: 32em;
    max-width: 100%;
    padding: 1.25em;
    border-radius: .3125em;
    background: #fff;
    font-family: inherit;
    font-size: 1.5rem;
    box-sizing: border-box;
}

#backbtn {
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
    position: absolute;
    left: 908px;
    top: 378px;
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
            <span> 작성자: ${board.writer} &nbsp;&nbsp;&nbsp;</span>
            <span> 작성일:<fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd" /></span>&nbsp;&nbsp;&nbsp;
            <span> 난이도 : <c:if test="${board.level==1}">
                  쉬움
                  </c:if> <c:if test="${board.level==2}">
                  보통
                  </c:if> <c:if test="${board.level==3}">
                  어려움
                  </c:if><br><br>
            </span>
               <span>조회수:${board.viewCnt}</span>&nbsp;&nbsp;&nbsp;
               <span id="rc">추천수: 152</span>&nbsp;&nbsp;&nbsp;
               <span id="rc">
                  면접시기:<c:if test="${board.applyDate==1}">상반기</c:if> 
                         <c:if test="${board.applyDate==2}">하반기</c:if>
               </span>
            </p>
         </div>
      </div>
      <hr>
      <div id="contents">
         <p>${board.content}
         <br><br>
         <div id="siren">
            <button id="btn1"><img src="<c:url value="/img/like.png" />" id="likeicon">추천</button>      
            <button id="btn2"><img src="<c:url value="/img/siren.JPG" />" id="sirenicon" />신고</button>   
         </div>
      </div>
      </div>
      <div style="margin-left: 73%;margin-top: -1%;">
         <br>
         <span id="updatebutton" ><a href="updateForm.do?no=${board.boardNo}" class="btn btn-primary" role="button">수정하기</a></span> 
         <a href='delete.do?no=${board.boardNo}' class="btn btn-primary" role="button" id="deletebutton">삭제</a>
         <c:if test="${user.id == 'admin'}">
			<button id="backbtn" type="button" onclick=	"history.back();" class="btn btn-primary">이전</button>
		</c:if>    
        <!--  <a href='list.do' class="btn btn-primary" role="button" id="deletebutton">뒤로가기</a> -->
      </div>
      <hr>
      <div id="commentReg">         
            <textarea id="comment" name="content" style="top: 53px;"></textarea>
            <br><br>
            <button type="button" class="btn btn-success" id="regComment" class="modify"
               style="margin-left: 82%;margin-top: -1.5%;">댓글 등록</button>
      </div>
         <div id="tt">	
           <c:forEach var="c" items="${comment}">
              <div>
                 <p style="display:none">${c.commentNo}</p>
                 <span id="cWriter">${c.commentWrite}</span>
                 <span id="cContent" style="margin-left:15px">${c.commentContent}</span>
                 <button id='commentUpdate'>수정</button>
                 <button id='commentDelete'>삭제</button>
              </div>
              
           </c:forEach>
         </div>
</div>
<%-- <c:if test="${user.id == 'admin'}">
<button id="backbtn" type="button" onclick="history.back();" class="btn btn-warning">이전</button>
</c:if>  --%>
<footer class="seungjae">
   <p>&copy; Job Story 2018</p>
</footer>
<script>
// 버튼에 click 이벤트를 설정한다.
// click 시 id가 msg인 input 창에 입력된 value 값을 
// div 태그의 innerText로 설정합니다.

   $("#regComment").click(function() {
      $.ajax({
         url:"insertComment.do",
         type:"POST",
         data:{"commentWrite":"${user.id}","commentContent":$("[name='content']").val(),"boardNo":"${board.boardNo}"},
         success: function (result) {
                  
            var html="";
            var lastResult="";
            for(var i=0; i<result.length; i++){
               html="<div>"
               html+="<p style='display:none'>"+result[i].commentNo+"</p>"
               html+="<span id='cWriter'>"+result[i].commentWrite+"</span>"
               html+="<span id='cContent' style='margin-left:15px'>"+result[i].commentContent+"</span>"
               html+=" <button id='commentUpdate'>수정</button>"
               html+=" <button id='commentDelete'>삭제</button>"
               html+="</div>"
               lastResult+=html;
            
            }
            $("#tt").html(lastResult) 
         },
         error: function () {
         }
      });
   })   
   
    $(document).on("click","#commentUpdate", function () {
       if("${user.id}"!=$(this).siblings("#cWriter").text()){
            alert("수정불가");
             return;
         }
       var commentNo=$(this).siblings("p").text();
       var boardNo="${board.boardNo}";
       if($(this).text()=="수정완료"){
          var content = $("input[name='content']").val();
          console.log(content);
             $.ajax({
               url:"updateComment.do",
               type:"POST",
               data:{   "boardNo":boardNo,
                     "commentNo":commentNo,
                     "commentContent":content
                   },
               success: function (result) {
                  var html="";
                  var lastResult="";
                  for(var i=0; i<result.length; i++){
                     html="<div>"
                     html+="<p style='display:none'>"+result[i].commentNo+"</p>"
                     html+="<span id='cWriter'>"+result[i].commentWrite+"</span>"
                     html+="<span id='cContent' style='margin-left:15px'>"+result[i].commentContent+"</span>"
                     html+=" <button id='commentUpdate'>수정</button>"
                     html+=" <button id='commentDelete'>삭제</button>"
                     html+="</div>"
                     lastResult+=html;
                  
                  }
                  $("#tt").html(lastResult); 

               },
               error: function () {
                  alert("에러")
               }
            });    
            $(this).html("수정")
          }
                  
       var updateC= $(this).siblings("#cContent").html("<input type='text' name='content'/>");
       $(this).html("수정완료");
                  
   })


   $(document).on("click","#commentDelete", function () {
      if("${user.id}"!=$(this).siblings("#cWriter").text()){
         alert("삭제불가");
          return;
          $("#form").submit();
      }
       var commentNo=$(this).siblings("p").text();
       var boardNo="${board.boardNo}";
             $.ajax({
               url:"deleteComment.do",
               type:"POST",
               data:{"commentNo":commentNo,"boardNo":boardNo},
               success: function (result) {
                  var html="";
                  var lastResult="";
                  for(var i=0; i<result.length; i++){
                     html="<div>"
                     html+="<p style='display:none'>"+result[i].commentNo+"</p>"
                     html+="<span id='cWriter'>"+result[i].commentWrite+"</span>"
                     html+="<span id='cContent' style='margin-left:15px'>"+result[i].commentContent+"</span>"
                     html+=" <button id='commentUpdate'>수정</button>"
                     html+=" <button id='commentDelete'>삭제</button>"
                     html+="</div>"
                     lastResult+=html;
                  
                  }
                  $("#tt").html(lastResult); 

               },
               error: function () {
                  alert("에러")
               }
            });    
            
   })

</script>

<!-- 추천파트 -->
<script>
/*     $(".rec").click(function(){
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
   recnumber();    */
   
   $("#btn2").click(function () {
      if("${user.id}"!="${board.writer}"){
         Swal({
              title: '신고 하시겠습니까?',
              text: "허위신고시 제제될수 있습니다.",
              type: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: '네'
            }).then((result) => {
              if (result.value) {
                 $.ajax({
                     url:"interviewReportSelect.do",
                     type:"POST",
                     data:{"sender":"${user.id}","boardNo":"${board.boardNo}"},
                     success: function(result){
                        if(result=='success'){
                           $.ajax({
                              url:"interviewReport.do",
                              type:"POST",
                              data:{"sender":"${user.id}","boardNo":"${board.boardNo}"},
                              success: function(result){
                                 if(result=='success'){
                                    Swal(
                                             '신고 완료!',
                                             '해당 게시글이 신고 되었습니다',
                                             'success'
                                           )
                                 } 
                              }
                           })

                        } else{
                           Swal({
                                type: 'error',
                                title: '신고 불가',
                                text: '이미 신고된 게시물 입니다',
                                footer: '<a href></a>'
                              })
                           return;
                        }
                     }
                  })
                               
                 
                
              }

            })
      } else{
         Swal({
              type: 'error',
              title: '신고 불가',
              text: '자신의 글을 신고할 수 없습니다',
              footer: '<a href></a>'
            })
      }
      
   })
    
</script>
</body>
</html>