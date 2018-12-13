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
<style>
html {
	height:100%;
	background-color: beige;
}
body {
	height:100%;
	background-color: beige;
}
/*카드 부분*/
.card {
	box-shadow: 10px 0px 10px rgba(0, 0, 0, 0.2),
				0px 10px 20px rgba(0,0,0,0.2);
}
.card, .card-content {
	border:3px solid white;
}
.card:hover {
	animation-name: expandUp;
	-webkit-animation-name: expandUp;	

	animation-duration: 0.7s;	
	-webkit-animation-duration: 0.7s;

	animation-timing-function: ease;	
	-webkit-animation-timing-function: ease;		

	visibility: visible !important;	
}

@keyframes expandUp {
	0% {
		transform: translateY(1%) scale(0.8) scaleY(0.8);
	}
	60%{
		transform: translateY(0%) scaleY(1.12);
	}
	75%{
		transform: translateY(3%);
	}	
	100% {
		transform: translateY(0%) scale(1) scaleY(1);
	}	
}

@-webkit-keyframes expandUp {
	0% {
		-webkit-transform: translateY(1%) scale(0.8) scaleY(0.8);
	}
	60%{
		-webkit-transform: translateY(0%) scaleY(1.12);
	}
	75%{
		-webkit-transform: translateY(3%);
	}	
	100% {
		-webkit-transform: translateY(0%) scale(1) scaleY(1);
	}	
}
	

.allcard {
    border: 1px solid beige;
}

.cardWrap {
	width: 25%;
	float: left;
	padding: 5px 15px;
	margin-top: 15px;
}

.cardWrap .card {
	width: 96%;
}

#cardImg {
    width: 235px;
    max-width: 235px;
    height: 237px;
    margin-left: 8px;
    margin-top: -1px;}

.card-image {
	width: 245px;
	height: 240px;
	background-color: white;
}

.card-content {
	height: 150px;
	background-color: white;
}

#listtitle {
    text-align: center;
    background-color: black;
    color: white;
    border-radius: 80px;
    font-size: 13px;
    line-height: 24px;
    margin-left: 1%;
    margin-top: -5%;
    clear: both;
    display: inline-block;
    padding-left: 12px;
    padding-right: 12px;
}

#listcontent {
	margin-left: 1%;
	font-size: 12px;
}

.card-btn {
	text-align: center;
	background-color: white;
}

.card-btn>button {
	width: 112px;
	padding: 6px 0;
	border: 1px solid white;
}

.container.myprofile .myprofile-options .tabs ul li.link a {
	margin-bottom: 20px;
	padding: 20px;
	background-color: rgb(79, 185, 159);
}
.title {
	position: relative;
	/* border: 1px solid black; */
	color: rgb(79, 185, 159);
	font-weight: bold;
}
.account-info {
  display: flex;
  justify-content: space-between;
  text-align: center;
  line-height: 0.1px;
}

.heart1 {
  color: red;
  font-size: 1.2em;
}

.heart2 {
  color: blue;
  font-size: 1.2em
}
.like {
    margin-left: 190px;
    margin-top: -235px;
}
.hate {
	margin-top: -235px;
    margin-right: 5px;
}
.btn-primary {
    color: #fff;
    background-color: #337ab7;
    border-color: #2e6da4;
    /* padding-bottom: 14px; */
    margin-bottom: 5px;
    width: 212px;
    margin-left: 4px;
}

.applyNull {
  	-webkit-animation-name: flash;
  	animation-name: flash;
  	animation-duration: 0.7s;	
	-webkit-animation-duration: 0.7s;

	animation-timing-function: ease;	
	-webkit-animation-timing-function: ease;

	visibility: visible !important;	
}

@-webkit-keyframes flash {
  from,
  50%,
  to {
    opacity: 1;
  }

  25%,
  75% {
    opacity: 0;
  }
}

@keyframes flash {
  from,
  50%,
  to {
    opacity: 1;
  }

  25%,
  75% {
    opacity: 0;
  }
}
</style> 
           
</head>
<body>
	<div class="allcard">
	<c:if test="${empty list}">
		<h2 class="applyNull" style="text-align: center;color: rgb(17,47,65);text-shadow: 3px 3px 0px #fff, 6px 6px 0px rgba(0, 0, 0, 0.3);font-size: 70px;font-weight: bold;margin-top: 15%;">지원자가 없습니다.</h2>
	</c:if>
	<c:if test="${not empty list}">
		<c:forEach var="c" items="${list}">
		 <div class="cardWrap">
        	<div class='card'>
	          <div class='card-image'>
	              <%-- <img id="cardImg" alt='' src='${c.resumePhoto.serPath}/${c.resumePhoto.serName}'> --%>
	              <img id="cardImg" alt='' src='../img/kakao/bit.jpg'>
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
	              <a href='<c:url value="/user/resumeDetail.do?resumeNo=${c.resumeNo}&recruitmentNo=${c.recruitmentNo}"/>' class="btn btn-primary" role="button">이력서 보기</a>
	          	  <br>	
	          	  <a href="#" class="btn btn-success" role="button">합격</a>	
	          	  <a href="#" class="btn btn-danger" role="button">불합격</a>	
	              <a href='<c:url value="applyDelete.do?applyNo=${c.applyNo}&recruitmentNo=${c.recruitmentNo}"/>' class="btn btn-warning" role="button">삭제하기</a>
	          </div>
			    <section class='account-info'>
			      <div class='like'>
			        <span class='heart1'>
			            <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
			        </span>              
			      </div>
			      <div class='hate'>
			        <span class='heart2'>
			            <span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>
			        </div>   
		   		 </section>	
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