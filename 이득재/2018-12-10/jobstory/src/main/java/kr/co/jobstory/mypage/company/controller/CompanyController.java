package kr.co.jobstory.mypage.company.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.jobstory.mypage.company.service.CompanyService;
import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.RecruitmentImg;
import kr.co.jobstory.repository.domain.User;

@Controller
@RequestMapping("company")
public class CompanyController {
	@Autowired
	private CompanyService service;
	
	@Autowired
	private ServletContext context;
	
	@RequestMapping("mypage.do")
	public ModelAndView mypage(HttpSession session) throws ParseException {
		User user = (User)session.getAttribute("user");
		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd 23:59:59");
		List<Recruitment> list = service.recList(user.getMemberNo());
		ModelAndView mav = new ModelAndView("company/mypage");
		if(list.isEmpty()==true) {
			
		} else {
			mav.addObject("list", list);
		}
		
		return mav;
	}
	
	
	@RequestMapping("recruitmentWrite.do")
	public void recruitmentWrite() {}
	
	@RequestMapping("regist.do")
	public String regist(String[] workId2,HttpSession session,Recruitment recruitment,RecruitmentImg img, List<MultipartFile> attach) throws ParseException, IllegalStateException, IOException {
		Calendar cal = new GregorianCalendar(Locale.KOREA);
		String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
	    cal.setTime(new Date());
	    cal.add(Calendar.DAY_OF_YEAR, Integer.parseInt(recruitment.getDate())); // 일자를 더한다.
	    SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd 23:59:59");
	    String strDate = fm.format(cal.getTime());
	    recruitment.setEndDate(strDate);
	    String workId = "";
	    System.out.println("월크데이:" + recruitment.getWorkDayId());
	    for(int i=0;i<workId2.length;i++) {
	    	if(i==workId2.length-1) {
	    		workId +=workId2[i];
	    	}else {
	    		workId +=workId2[i]+",";
	    		
	    	}
	    }

	    recruitment.setWorkId(workId);
	    service.regist(recruitment);
	    for(MultipartFile file : attach) {
			if(file.isEmpty()==true) continue; 
			String newFileName = "company"+date+"_"+System.currentTimeMillis()+"."
	                 +file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
			img.setImgOriName(file.getOriginalFilename());
			img.setImgSerName(newFileName);
			img.setImgSerPath("/jobstory/img/");
			file.transferTo(new File(context.getRealPath("/img"),img.getImgSerName()));
			img.setRecruitmentNo(service.recmNo());    
		    service.registImg(img);
		}
	    
	    User user=(User)session.getAttribute("user");
	    return "redirect:mypage.do?memberNo=" + user.getMemberNo();

	}
	
	
	
	@RequestMapping("detail.do")
	public ModelAndView detail(int recruitmentNo,String endDate) {
		Recruitment detail = service.recDetail(recruitmentNo);
		System.out.println(detail.getJobId());
		List<RecruitmentImg> recImg = service.recImg(recruitmentNo);
		ModelAndView mav = new ModelAndView("company/detail");
		mav.addObject("detail", detail);
		mav.addObject("recImg", recImg);
		return mav;
		
	}
	
}
