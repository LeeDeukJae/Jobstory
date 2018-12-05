package kr.co.jobstory.mypage.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

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
			System.out.println(b.getBoardNo());
			System.out.println(b.getApplyDate());
			System.out.println(b.getRegDate());
		
		}
		model.addAttribute("list", service.list());
	}

	@RequestMapping("/interviewdetail.do")
	public ModelAndView detail(int no) {
		service.viewCnt(no);
		ModelAndView mav = new ModelAndView("community/interviewdetail");
		mav.addObject("board", service.detail(no));
		return mav;
	}
	
	@RequestMapping("/delete.do")
	public String delete(int no) throws Exception{
		service.deleteBoard(no);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "boardInterview.do";
	}
	
	@RequestMapping("/interviewwrite.do")
	public void writeForm() throws Exception {
	}
	
//	@RequestMapping("/interviewwrite.do")
//	public String insertBoard(InterBoard board) {
//		service.insertBoard(board);
//		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "boardInterview.do";
//	
//	}

	
	
	
	
	
}
















