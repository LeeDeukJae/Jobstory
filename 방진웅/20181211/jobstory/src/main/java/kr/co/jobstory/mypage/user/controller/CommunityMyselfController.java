package kr.co.jobstory.mypage.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.jobstory.mypage.user.service.CommunityMyselfService;
import kr.co.jobstory.repository.domain.MyselfBoard;
import kr.co.jobstory.repository.domain.CommunityPage;

@Controller
@RequestMapping("/community/myself")
public class CommunityMyselfController {
	
	@Autowired
	private CommunityMyselfService service;
	
	@RequestMapping("/list.do")
	public void list(Model model,@RequestParam(value = "pageNo", defaultValue = "1") int pageNo) throws Exception {
		CommunityPage page = new CommunityPage();
		page.setPageNo(pageNo);

		int count = service.listCount();
		int lastPage = (int) Math.ceil(count / 10d);

		// 페이지 블럭 시작
		int pageSize = 10;
		int currTab = (pageNo - 1) / pageSize + 1;
		// 11번 부터 2페이지가 되는것
		int beginPage = (currTab - 1) * pageSize + 1;
		int endPage = currTab * pageSize < lastPage ? currTab * pageSize : lastPage;

		model.addAttribute("beginPage", beginPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("pageNo", pageNo);
		// System.out.println(service.listNotice(page).size());
		model.addAttribute("list", service.list(page));
		model.addAttribute("count", service.listCount());
	}
	
	
	

	@RequestMapping("/detail.do")
	public ModelAndView detail(int no) {
		service.viewCnt(no);
		ModelAndView mav = new ModelAndView("community/myself/detail");
		mav.addObject("board", service.detail(no));
		return mav;
	}
	
	@RequestMapping("/delete.do")
	public String delete(int no) throws Exception{
		service.deleteBoard(no);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
	}
	
	
	@RequestMapping("/writeForm.do")
	public void writeForm() throws Exception {
	}
	
	@RequestMapping("/writes.do")
	public String insertBoard(MyselfBoard board,List<MultipartFile> attach)throws Exception{
		
		System.out.println("넘어오는값"+board);
		
		System.out.println("잡 :"+board.getJobId());
		service.insertBoard(board);
		return "redirect:list.do";
	}
	
	
	
//	@RequestMapping("/interviewwrite.do")
//	public String insertBoard(InterBoard board) {
//		service.insertBoard(board);
//		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "boardInterview.do";
//	
//	}

	
	
	
	
	
}
















