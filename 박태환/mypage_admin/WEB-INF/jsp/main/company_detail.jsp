<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/main_logout.jsp" />
<link href="<c:url value="/css/search.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/mainbanner.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC" rel="stylesheet">
<style>
  .jumbotron {
    background-image: url("http://post.phinf.naver.net/MjAxNzEwMzBfMiAg/MDAxNTA5MzI3NjczOTA1.-zgWkj6-0_vMx268lQpozTXea4JNhSs7Kn1N8OmzyW0g._C05NyHgcjcqOwHvHfKlUUWyeaCdgqp9HTNs-_EppGMg.JPEG/IqnxW4h8vwZoz_8oSk9-6CkD3_zk.jpg");
    background-repeat: no-repeat;
    background-position: 750px;
    background-size: 350px;        
  }
</style>
</head>
<body>
<div class="container">
    <div class="masthead">
      <hr>
      <nav>
        <ul class="nav nav-justified">
          <li class="active"><a href="#">기업정보</a></li>
          <li><a href="#">채용정보</a></li>
          <li><a href="#">별점정보</a></li>
            <li><a href="#">기업사진</a></li>
            <li><a href="#">약도</a></li>
          </ul>
        </ul>
      </nav>
    </div>
    
    <!-- Jumbotron -->
    <div class="jumbotron">
      <h1>인보험 손해사정</h1>
      <p class="lead">보험금 서면심사 서울, 광주
        신입 및 경력 채용공고</p><br>
        <p>
          <a class="btn btn-lg btn-success" href="#" role="button">입사지원</a> <a class="btn btn-lg btn-warning" href="#" role="button">1:1 채팅</a>
        </p>
      </div>

      <!--타이머 적용-->


      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-4">
          <h2 class="text-danger">담당업무</h2><br>
          <!-- <p class="text-danger">모집부문 및 자격요건</p> -->
          <p>보험금 지급심사(서면심사)</p>
          <p>청구보험금 심사 및 적정 보험금 산정, 지급</p><br>
          <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <h2 class="text-danger">지원자격</h2><br>
          <p>신입</p>
          <p>대학졸업(2,3년) 이상</p><br>
          <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
       </div>
        <div class="col-lg-4">
          <h2 class="text-danger">근무조건</h2><br>
          <p>서울전체</p>
          <p>정규직(수습기간)-3개월</p>
          <p>연봉 회사내규에 따름</p>
          <p>주 5일(월~금)</p>
          <p>사원, 주임, 대리</p><br>
          <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div>

</body>
</html>