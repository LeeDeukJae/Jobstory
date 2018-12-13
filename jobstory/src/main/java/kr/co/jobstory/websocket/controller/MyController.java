package kr.co.jobstory.websocket.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.jobstory.repository.domain.User;

@Controller
public class MyController {
   @GetMapping("/websocket/test01.do")
   public void test01() {}

   @GetMapping("/websocket/test02.do")
   public void test02() {}
   
   @GetMapping("/websocket/test03.do")
   public void test03() {}

   @GetMapping("/websocket/chatting.do")
   public void test04() {}
   
   @PostMapping("/websocket/login.do")
   @ResponseBody
   public String login(HttpSession session, User m) {
	   session.setAttribute("user", m);
	   return m.getId();
   }

   @GetMapping("/websocket/logout.do")
   @ResponseBody
   public String logout(HttpSession session) {
	   session.invalidate();
	   return "success";
   }

   @GetMapping("/websocket/websocket.do")
   public String index() {
      return "websocket/index";
   }
   
   @GetMapping("/websocket/chat.do")
   public String chat() {
	   return "websocket/chat/chat";
   }
}
