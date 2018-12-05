<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
 <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>


<script>
var naver_id_login = new naver_id_login("NnYGWxBPDA3XEamVWLoX", "http://localhost:8000/jobstory/sign/naverInfo.do");

// 네이버 사용자 프로필 조회
naver_id_login.get_naver_userprofile("naverSignInCallback()");
// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
function naverSignInCallback() {


  location.href='naver.do?id='+naver_id_login.getProfileData('id')+
        		 		'&name='+naver_id_login.getProfileData('name')+
        		 		'&pass=1234'+
        		 		'&authority='+1+
        		 		'&imgSerPath='+
        		 		'&imgOriName='+
        		 		'&imgSerName=admin.jpg';
  //여기서 location 해주면 될듯함
}

</script>
</body>
</html>