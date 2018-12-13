package kr.co.jobstory.mypage.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserCalendarController {
	
	@RequestMapping("/myCalendar.do")
	public void myCalendar() {
		System.out.println("myCalendar() invoked.");
	}
}
