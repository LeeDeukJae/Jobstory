<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="<c:url value="/css/member_support_card.css"/>" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script> 
</head>
<body>
<div class="allcard">
	<c:if test="${empty list}">
		<h2 style="text-align: center">지원자가 없습니다 </h2>
	</c:if>
	<c:if test="${not empty list}">
		<c:forEach var="c" items="${list}">
		 <div class="cardWrap">
        <div class='card'>
          <div class='card-image'>
              <img id="cardImg" alt='' src='${c.resumePhoto.serPath}/${c.resumePhoto.serName}'>
          </div>
  
          <div class='card-content'>
              <div class='content'>
                  <p id="listtitle">${c.resumeStandard.educationId}</p>
                  <p id="listcontent">이름 : ${c.resumeStandard.name}</p>
                  <p id="listcontent">지원일자 : <fmt:formatDate value="${c.regDate}" pattern="yyyy-MM-dd" /></p>
                  <p id="listcontent">주소: ${c.resumeStandard.addr}</p>
              </div>
          </div>
          <div class="card-btn">
             
              <a href='<c:url value="/user/resumeDetail.do?resumeNo=${c.resumeNo}&recruitmentNo=${c.recruitmentNo}"/>' class="btn btn-primary" role="button">이력서</a>
              <a href='<c:url value="applyDelete.do?applyNo=${c.applyNo}&recruitmentNo=${c.recruitmentNo}"/>' class="btn btn-danger" role="button">삭제하기</a>
             <!--  <button type="button" class="btn btn-danger">삭제하기</button> -->
          </div>
      </div>
    </div>
	
	
	</c:forEach>
	</c:if>
	
   
    
    
  </div>
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
    
</body>
</html>