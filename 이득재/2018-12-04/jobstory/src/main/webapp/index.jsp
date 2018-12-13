<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 	<a href="/WEB-INF/jsp/community/companyReview/list.jsp">list로가자</a> -->
	<a href='<c:url value="/community/companyReview/list.do"/>'>list로가자</a>
	<a href='<c:url value="/main/main_logout_search.jsp"/>'>메인화면</a>
<!-- 	http://localhost:8000/jobstory/jsp/community/companyReview/list.jsp/ -->
<%-- 	<c:redirect url="/list.do"></c:redirect> --%>
</body>
</html>