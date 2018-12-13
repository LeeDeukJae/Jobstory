package kr.co.jobstory.mypage.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserScrabController {
	
	@RequestMapping("/scrab.do")
	public void scrab() {
		System.out.println("scrab() invoked.");
	}
}
