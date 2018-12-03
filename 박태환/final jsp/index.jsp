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
	<h1>
		<a href="<c:url value="/main/main_logout_search.do" />">main 로그인 상태</a>
	</h1>
	<h1>
		<a href="<c:url value="/admin/mypage_admin.do" />">마이페이지_어드민</a>
	</h1>
	<h1>
		<a href="<c:url value="/company/mypage_company.do" />">마이페이지_기업</a>
	</h1>
	<h1>
		<a href="<c:url value="/company/mypage_company_member_support.do" />">마이페이지_기업_입사지원자 목록</a>
	</h1>
	<h1>
		<a href="<c:url value="/company/mypage_company_detail_main.do" />">마이페이지_기업_채용공고 디테일 페이지</a>
	</h1>
	<h1>
		<a href="<c:url value="/company/mypage_company_recruitmentWrite.do" />">마이페이지_기업_채용공고 등록</a>
	</h1>
	<h1>
		<a href="<c:url value="/user/mypage_user_resumeList.do" />">마이페이지_유저_이력서 목록</a>
	</h1>
	<h1>
		<a href="<c:url value="/user/mypage_user_applyList.do" />">마이페이지_유저_등록한 기업리스트</a>
	</h1>
	<h1>
		<a href="<c:url value="/user/mypage_user_calendar.do" />">마이페이지_유저_나만의 공채달력</a>
	</h1>
	<h1>
		<a href="<c:url value="/user/mypage_user_calendar.do" />">커뮤니티(진행중)</a>
	</h1>
	<h1>
		<a href="<c:url value="/user/mypage_user_calendar.do" />">계산기(진행중)</a>
	</h1>
</body>
</html>