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
	
	
	
	
	
	<!-- 웹소켓 -->
	<h2>웹소켓(WebSocket)</h2> 
	<a href="<c:url value="/websocket/test01.do" />">
		MyController(/websocket/test01.do)
	</a><br />	
	<!-- 주의 websocket/test02.jsp 파일의 내용에 웹소켓 호출 시 아이피 주소로 되어 있으므로
	     index10.jsp 페이지 호출시에 localhost 대신 아이피 주소를 넣어주어야 한다.
	 -->
	<a href="<c:url value="/websocket/test02.do" />">
		MyController(/websocket/test02.do)
	</a><br />	
	<a href="<c:url value="/websocket/test03.do" />">
		MyController(/websocket/test03.do)
	</a><br />
	<a href="<c:url value="/websocket/chatting.do" />">
		MyController(/websocket/chatting.do)
	</a><br />	
</body>
</html>