package kr.co.jobstory.mypage.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.jobstory.mypage.admin.service.AdminService;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	@RequestMapping("mypage.do")
	public ModelAndView mypage() {
		ModelAndView mav = new ModelAndView("admin/mypage");
		mav.addObject("wait", service.waitBoard());
		mav.addObject("report", service.reportBoard());
		return mav;
		
	}
	
	@RequestMapping("success")
	public String success(int no) {
		service.success(no);
		return "redirect:mypage.do";
	}
	
	@RequestMapping("delete")
	public String delete(int boardNo) {
		service.reportDelete(boardNo);
		return "redirect:mypage.do";
	}
}
