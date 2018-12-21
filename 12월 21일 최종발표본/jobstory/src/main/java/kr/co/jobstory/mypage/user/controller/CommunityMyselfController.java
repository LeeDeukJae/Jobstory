package kr.co.jobstory.mypage.user.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.jobstory.mypage.user.service.CommunityMyselfService;
import kr.co.jobstory.repository.domain.CommunityPage;
import kr.co.jobstory.repository.domain.MyselfBoard;
import kr.co.jobstory.repository.domain.MyselfUpload;

@Controller
@RequestMapping("/community/myself")
public class CommunityMyselfController {
	
	@Autowired
	private CommunityMyselfService service;
	
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
		ModelAndView mav = new ModelAndView("community/myself/detail");
		mav.addObject("board", service.detail(no));
		System.out.println("ff"+service.fileUpload(no));
		mav.addObject("filelist", service.fileUpload(no));
		
		for(MyselfUpload m : service.fileUpload(no)) {
			System.out.println("오리네임오리네임오리네임" +m.getOriName());
		}
		
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
	public String insertBoard(MyselfBoard board, MyselfUpload upload)throws Exception{
		System.out.println("넘어오는값"+board);
		System.out.println("잡 :"+board.getJobId());
		service.insertBoard(board);
		int boardNo = board.getBoardNo();
		System.out.println("boardNo : " + boardNo);
		String fileName="";
		for(MultipartFile file : upload.getAttach()) {
			if(file.isEmpty()==true)continue;
			file.transferTo(new File(context.getRealPath("/attach/community/myself"),file.getOriginalFilename()));		
			fileName = file.getOriginalFilename();
			upload.setBoardNo(boardNo);
			upload.setSerName(fileName);
			upload.setOriName(fileName);
			upload.setSerPath("/attach/community/myself");
			upload.setFileSize((int)file.getSize());
			service.uploadBoard(upload);
		
		}		
		
		
		return "redirect:list.do";
	}
	
	@RequestMapping("/updateForm.do")
	public ModelAndView updateForm(int no) {
		ModelAndView mav = new ModelAndView("community/myself/updateForm");
		mav.addObject("board",service.detail(no));
		return mav;
	}
	
	@RequestMapping("/update.do")
	public String updateBoard(MyselfBoard board,MyselfUpload upload)throws Exception{
		
		service.updateBoard(board);
		int boardNo = board.getBoardNo();
		System.out.println("boardNo : " + boardNo);
		String fileName="";
		for(MultipartFile file : upload.getAttach()) {
			if(file.isEmpty()==true)continue;
			file.transferTo(new File(context.getRealPath("/attach/community/myself"),file.getOriginalFilename()));		
			fileName = file.getOriginalFilename();
			upload.setBoardNo(boardNo);
			upload.setSerName(fileName);
			upload.setOriName(fileName);
			upload.setSerPath("/attach/community/myself");
			upload.setFileSize((int)file.getSize());
			service.uploadBoard(upload);
	}
		return "redirect:detail.do?no="+board.getBoardNo();
	}
	
	
	
	
	
	
	
	 @RequestMapping("/download")
	 public void download(String path, String oriName,HttpServletRequest request, HttpServletResponse response) throws Exception{
				 
//		 String fullPath = path + "\\" + fileName;
		 
//		 System.out.println(path);
//		 System.out.println(sysName);
		 
		 String uploadPath = "c:/app/tomcat-work/wtpwebapps/jobstory";
         
	     File file = new File(uploadPath + path, oriName);
	     
	     if(file.isFile() == false) {
	    	 System.out.println("파일이 존재하지 않습니다.");
	    	 return;
	     }
//	     	System.out.println("DownloadView --> file.getPath() : " + file.getPath());
//	        System.out.println("DownloadView --> file.getName() : " + file.getName());
	        response.setContentType("application/download; utf-8");
	        response.setContentLength((int)file.length());
//	        oriName = new String(file.getName().getBytes("utf-8"));
	        response.setHeader("Content-Disposition", "attachment;filename=" + oriName);
	        response.setHeader("Content-Transfer-Encoding", "binary");
	         
	        OutputStream out = response.getOutputStream();
	        FileInputStream fis = null;
	         
	        try {

	            fis = new FileInputStream(file);
	             
	            FileCopyUtils.copy(fis, out);
	             
	             
	        } catch(Exception e){
	             
	            e.printStackTrace();
	             
	        }finally{
	             
	            if(fis != null){
	                 
	                try{
	                    fis.close();
	                }catch(Exception e){}
	            }
	             
	        }// try end;
	         
	        out.flush();
	 }
	
	//D:\app\tomcat-work\wtpwebapps\jobstory\attach\community\myself
	//자소서 첨삭 경로
	
	
//	@RequestMapping("/interviewwrite.do")
//	public String insertBoard(InterBoard board) {
//		service.insertBoard(board);
//		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "boardInterview.do";
//	
//	}
	
	//확장자 구하는 메소드

  private static String getExtension(String fileName) {
        int dotPosition = fileName.lastIndexOf('.');
    
    if (dotPosition != -1 && fileName.length() - 1 > dotPosition) {
        return fileName.substring(dotPosition + 1);
    } else {
        return "";
        }
   }
}
















