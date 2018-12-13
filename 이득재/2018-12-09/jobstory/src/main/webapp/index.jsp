<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href='<c:url value="/sign/signInPage.do"/>'>이력서 리스트 관리 페이지 이동</a>
	<a href='<c:url value="/community/review/list.do"/>'>list로가자</a>
	<a href="<c:url value="/calendar/userCalendar.do"/>">달력으로 </a>
</body>
</html>