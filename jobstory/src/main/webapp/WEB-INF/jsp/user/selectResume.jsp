<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="<c:url value="/js/sweetalert2.all.min.js"/>"></script>
<!-- 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous"></script> 
<style>
body {
    font-family: 'Noto Sans KR', sans-serif;
    overflow: hidden;
}
form {
    position: absolute;
    top: 20px;
}
ul {
    position: relative;
    left: 115px;
    list-style: none;
}
#page1, #page2 {
    /* border: 1px solid black; */
}
.pagination {
    position: relative;
    /* border: 1px solid black; */
    left: 200px;
}
h4 {
    text-align: left;
    margin-left: 150px;
    margin-top: 15px;
    font-weight: 900;
    color: rgb(79,185,159);
    font-size: 40px;
}
hr {
   margin-top: 1rem;
    margin-bottom: 1rem;
    border: 0;
    border-top: 3px solid rgba(0,0,0,.1);
    width: 450px;
}
</style>
</head>
<body>
        <h4>이력서 선택</h4>
        <hr>
        <div>
            <ul>
               <c:forEach var="r" items="${list}">
                  <li>
                       <input style="display:none" type="text" name="resumeNo" value="${r.resumeNo}">
                       <input type="radio" name="title" id="title">
                       <label for="title">${r.title}</label>
                   </li>   
               </c:forEach>                
            </ul>
        </div>
       
        <button type="button" id="submit-btn" class="btn btn-success" style="margin-left: 195px;">제출</button>
        <button type="button" id="cancel-btn" class="btn btn-success">취소</button>


    <script>
      
        var recruitmentNo="${recruitmentNo}"
        $("#submit-btn").click(function () {
        	if($('input:radio[name="title"]').is(":checked")==false) {swal('이력서를 선택해 주세요 !');return;}
            swal({
              title: '이 기업에 지원합니다.',
              text: "이력서 꼼꼼히 작성하셨나요?",
              type: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: '예!'
            }).then((result) => {
              if (result.value) {
               var check = $('input:radio[id="title"]:checked');
               var resumeNo=check.siblings().val();
               console.log(resumeNo);
                 $.ajax({
                    url:"selectRegistByNo.do",
                      type:"post",
                      data:{"memberNo":"${user.memberNo}","recruitmentNo":recruitmentNo,},
                      success: function (result) {
                     if(result=="success"){
                        
                        $.ajax({
                          url:"regist.do",
                               type:"post",
                               data:{"recruitmentNo":recruitmentNo,"resumeNo":resumeNo},
                               success: function (result) {
                                if(result=="success"){
                                swal(
                                   '신청 완료!',
                                   '성공적인 취업을 기원합니다.',
                                   'success'
                                 )
                                }
                        
                               }
                        })
                      
                     } else{
                        Swal({
                          type: 'error',
                          title: '지원 불가',
                          text: '이미 지원하셨습니다!',
                          footer: '<a href></a>'
                        })
                     }
                         
                      }
                 });
               
              }
            })
          
        });
        
        $("#cancel-btn").click(function () {
			window.close();
		})
    </script>
</body>
</html>