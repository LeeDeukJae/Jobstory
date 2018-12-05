package kr.co.jobstory.mypage.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.jobstory.mypage.user.service.CommunityInterviewService;
import kr.co.jobstory.repository.domain.InterBoard;

@Controller
@RequestMapping("/community")
public class CommunityInterviewController {
	
	@Autowired
	private CommunityInterviewService service;
	
	@RequestMapping("/boardInterview.do")
	public void list(Model model) throws Exception {
		System.out.println("list() invoked");
		List<InterBoard> list = service.list();
		for ( InterBoard b : list ) {
			System.out.println(b.getboardNo());
			System.out.println(b.getApplyDate());
			System.out.println(b.getRegDate());
		}
		model.addAttribute("list", service.list());
	}

	
	
}
