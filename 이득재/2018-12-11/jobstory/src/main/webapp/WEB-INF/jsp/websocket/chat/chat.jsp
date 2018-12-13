<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="<c:url value='/resources/chat/chat.css' />" />
<style>

</style>
</head>
<body>

<div class="chat_main">
<div class="chat">
  <div class="chat_header">
    병찬
    <div class="chat_status">ONLINE</div>
  </div>
  
  <div class="chat_s"></div>

  <div class="chat_input">
    <input id="message" placeholder="Type here..." class="chat_text">
    <button id="sendBtn" class="chat_submit fa fa-send">↵</button>
  </div>
</div>
</div>

<script>
	var ws;
	$(document).ready(function() {
		<%-- // 팝업 창 크기를 HTML 크기에 맞추어 자동으로 크기를 조정하는 함수. --%>
		var strWidth;
		var strHeight;
		//innerWidth / innerHeight / outerWidth / outerHeight 지원 브라우저
		if ( window.innerWidth && window.innerHeight && window.outerWidth && window.outerHeight ) {
			strWidth = $('.chat_main').outerWidth() + (window.outerWidth - window.innerWidth);
			strHeight = $('.chat_main').outerHeight() + (window.outerHeight - window.innerHeight);
		}
		else {
			var strDocumentWidth = $(document).outerWidth();
			var strDocumentHeight = $(document).outerHeight();

			window.resizeTo ( strDocumentWidth, strDocumentHeight );

			var strMenuWidth = strDocumentWidth - $(window).width();
			var strMenuHeight = strDocumentHeight - $(window).height();

			strWidth = $('.chat_main').outerWidth() + strMenuWidth;
			strHeight = $('.chat_main').outerHeight() + strMenuHeight;
		}
		//resize
		window.resizeTo( strWidth+15, strHeight+15 );
		
		ws = new WebSocket('ws://192.168.0.21/11_spring2/chat.do');
		ws.onopen = function() {
	        console.log('연결 성공');
	    };
	    ws.onmessage = function(evt) {
            $(".chat_s").append('<div class="chat_bubble-1">' + evt.data + '</div>');
	    };
	    ws.onerror = function(evt) {
	    	console.dir(evt.data)
	    };
	    ws.onclose = function() {
	    	console.log("연결을 끊었습니다.");
	        console.log('close');
	    };
		
		$('#sendBtn').click(function() { 
			send(); 
		});
		
	    $('#message').keypress(function(event){
		    var keycode = (event.keyCode ? event.keyCode : event.which);
		    if(keycode == '13'){
		         send();
		    }
		    event.stopPropagation();
		});
	});
	
	function send() {
	    var $msg = $("#message");
	    var sendMsg = $msg.val();
	    ws.send(sendMsg);
	    $msg.val("");
	    $(".chat_s").append('<div class="chat_bubble-2">' + sendMsg + '</div>');
	}
</script>
</body>
</html>