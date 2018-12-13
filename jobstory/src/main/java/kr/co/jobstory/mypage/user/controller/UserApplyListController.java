package kr.co.jobstory.mypage.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserApplyListController {
	
	@RequestMapping("/applyList.do")
	public void applyList() {
		System.out.println("applyList() invoked.");
	}
	
	@RequestMapping("/aaa.do")
	public void aaa() {
		System.out.println("applyList() invoked.");
	}
}
