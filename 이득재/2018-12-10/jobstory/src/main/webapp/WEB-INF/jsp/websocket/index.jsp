<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

</head>
<body>

<input type="text" id="message" name="message" />
<button id="sendBtn">전송</button>

<div>
	<input type="file" id="filename" />
	<button id="fileBtn">파일전송</button>
</div>
<div>
	<button id="fileBtn2">파일 받기</button>
</div>

<script type="text/javascript">

    // 보낼 수 있는 데이터는 String , Blob,  또는 ArrayBuffer 입니다. 
	var ws = null;
	var downloadFileName = 'abcd.jpg';
 	connect();
	function connect() {
		ws = new WebSocket('ws://localhost:8000/jobstory/file.do');
		ws.onopen = function() {
	        console.log('open');
	    };
	    ws.onmessage = function(evt) {
	    	if (evt.data instanceof Blob) {
                console.log('수신 데이터 타입:Blob');
                saveData(evt.data, downloadFileName);
                downloadFileName = '';
            } else {// 파일이 아닌 텍스트인 경우
            	console.log(evt.data);
            }
	    };
	    ws.onerror = function(evt) {
	    	console.dir(evt.data)
	    };
	    ws.onclose = function() {
	    	console.log("연결을 끊었습니다.");
	        console.log('close');
	    };
	}
	
	// 서버에서 전송된 데이터를 저장하기
    function saveData(blob, fileName) {
        var a = document.createElement("a");
        document.body.appendChild(a);
        a.style = "display: none";

        url = window.URL.createObjectURL(blob);
        a.href = url;
        a.download = fileName;
        a.click();
        window.URL.revokeObjectURL(url);
    };

	function send() {
	    var $msg = $("#message");
	    ws.send($msg.val());
	    $msg.val("");
	}
	
	function sendFile() {
	    var file = document.getElementById('filename').files[0];
	    ws.binaryData = "blob";
	    
	    ws.send('filename:' + file.name);
	    ws.send(file);
	    
	    console.log("파일 전송");
	}

	$(document).ready(function() {
	    $('#message').keypress(function(event){
	    var keycode = (event.keyCode ? event.keyCode : event.which);
	    if(keycode == '13'){
	         send();
	    }
	    event.stopPropagation();
	});

	$('#sendBtn').click(function() { 
		send(); 
	});
	
	$('#fileBtn').click(function() { 
		sendFile(); 
	});
	
	$('#fileBtn2').click(function() { 
		ws.send('filedown:');
	});
});
</script>

</body>
</html>