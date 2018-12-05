package kr.co.jobstory.mypage.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.jobstory.mypage.user.service.CommunResumeService;
import kr.co.jobstory.repository.domain.InterBoard;
import kr.co.jobstory.repository.domain.ResumeBoard;

@Controller
@RequestMapping("/community")
public class CommunityResumeController {
	
	@Autowired
	private CommunResumeService service;
	
	@RequestMapping("/boardResume.do")
	public void list(Model model) throws Exception {
		System.out.println("list() invoked");
		List<ResumeBoard> list = service.list();
		for ( ResumeBoard R : list ) {
			System.out.println(R.getBoardNo());
			System.out.println(R.getRegDate());
		}
		model.addAttribute("list", service.list());
	}

	
	
}
