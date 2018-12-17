package kr.co.jobstory.mypage.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.jobstory.mypage.user.service.UserApplyService;
import kr.co.jobstory.repository.domain.Apply;
import kr.co.jobstory.repository.domain.User;

@Controller
@RequestMapping("/user")
public class UserApplyListController {
	
	@Autowired
	private UserApplyService service;
	
	@RequestMapping("/applyList.do")
	public ModelAndView apply(HttpSession session) {
		User user = (User)session.getAttribute("user");
		ModelAndView mav = new ModelAndView("user/applyList");
		mav.addObject("applyList", service.apply(user.getMemberNo()));
		return mav;
	}

	
	@RequestMapping("/delete.do")
	public String delete(HttpSession session,int applyNo) {
		service.applyDelete(applyNo);
		return "redirect:applyList.do";
	}
}
