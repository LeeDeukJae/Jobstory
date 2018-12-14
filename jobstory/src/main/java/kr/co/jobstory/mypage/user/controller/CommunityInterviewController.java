package kr.co.jobstory.mypage.user.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.jobstory.mypage.user.service.CommunityInterviewService;
import kr.co.jobstory.repository.domain.InterBoard;
import kr.co.jobstory.repository.domain.InterviewReport;
import kr.co.jobstory.repository.domain.CommunityPage;

@Controller
@RequestMapping("/community/interview")
public class CommunityInterviewController {
	
	@Autowired
	private CommunityInterviewService service;
	@Autowired
	   private ServletContext context;
	
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
		ModelAndView mav = new ModelAndView("community/interview/detail");
		mav.addObject("board", service.detail(no));
		return mav;
	}
	
	@RequestMapping("/delete.do")
	public String delete(int no) throws Exception{
		service.deleteBoard(no);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
	}
	
	
	
	@RequestMapping("/updateForm.do")
	public ModelAndView updateForm(int no) {
		ModelAndView mav = new ModelAndView("community/interview/updateForm");
		mav.addObject("board", service.detail(no));
		return mav;
	}
	
	@RequestMapping("/update.do")
	public String updateBoard(InterBoard board,List<MultipartFile> attach)throws Exception {
		System.out.println("업데이트 글번호"+ board.getBoardNo());
		String fileName="";
		for(MultipartFile file : attach) {
			if(file.isEmpty()==true)continue;
//			file.transferTo(new File("D:/app/tomcat-work/wtpwebapps/jobstory/attach/community/interview",file.getOriginalFilename()));		
			file.transferTo(new File(context.getRealPath("/attach/community/interview"),file.getOriginalFilename()));
			fileName += file.getOriginalFilename();
		}
		board.setSerName(fileName);
		board.setSerPath("/attach/community/interview");
		service.updateBoard(board);
		return "redirect:detail.do?no="+board.getBoardNo();
	}
	
	
	
	
	
	
	
	@RequestMapping("/writeForm.do")
	public void writeForm() throws Exception {
	}
	
	@RequestMapping("/writes.do")
	public String insertBoard(InterBoard board,List<MultipartFile> attach)throws Exception{
		
		System.out.println("넘어오는값"+board);
		
		String fileName="";
		for(MultipartFile file : attach) {
			if(file.isEmpty()==true)continue;
//			System.out.println("제목 :" + board.getTitle());
//			System.out.println("파일 이름 :" +file.getOriginalFilename());
			file.transferTo(new File(context.getRealPath("/attach/community/interview"),file.getOriginalFilename()));		
			fileName += file.getOriginalFilename();
		}
		board.setSerName(fileName);
		board.setSerPath("/attach/community/interview");
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
	@RequestMapping("interviewReportSelect.do")
	@ResponseBody
	public String reportSelect(InterviewReport report) {
		InterviewReport result=service.reportSelect(report);
		if(result==null) {
			return "success";
			
		}else {
			return "fail";
		}
		
	}
	
	@RequestMapping("interviewReport.do")
	@ResponseBody
	public String report(InterviewReport report) {
			service.report(report);
		return "success";
	}
	
	
	
}
















