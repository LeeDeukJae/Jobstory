package kr.co.jobstory.mypage.company.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.jobstory.mypage.company.service.CompanyService;
import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.RecruitmentImg;

@Controller
@RequestMapping("company")
public class CompanyController {
	@Autowired
	private CompanyService service;
	
	@Autowired
	private ServletContext context;
	
	@RequestMapping("mypage_company.do")
	public ModelAndView mypage(int memberNo) throws ParseException {
		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd 23:59:59");
		List<Recruitment> list = service.recList(memberNo);
		ModelAndView mav = new ModelAndView("company/mypage_company");
		if(list.isEmpty()==true) {
			
		} else {
			mav.addObject("list", list);
		}
		
		return mav;
	}
	
	
	@RequestMapping("mypage_company_recruitmentWrite.do")
	public void recruitmentWrite() {}
	
	@RequestMapping("regist.do")
	public String regist(Recruitment recruitment,RecruitmentImg img, List<MultipartFile> attach) throws ParseException, IllegalStateException, IOException {
		
		Calendar cal = new GregorianCalendar(Locale.KOREA);
		String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
	    cal.setTime(new Date());
	    cal.add(Calendar.DAY_OF_YEAR, Integer.parseInt(recruitment.getDate())); // 일자를 더한다.
	    SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd 23:59:59");
	    String strDate = fm.format(cal.getTime());
	    recruitment.setEndDate(strDate);
	    service.regist(recruitment);
	    for(MultipartFile file : attach) {
			if(file.isEmpty()==true) continue; 
			System.out.println(file.getOriginalFilename());
			String newFileName = date+"_"+System.currentTimeMillis()+"."
	                 +file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
			img.setImgOriName(file.getOriginalFilename());
			img.setImgSerName(newFileName);
			img.setImgSerPath("/jobstory/profile/");
			file.transferTo(new File(context.getRealPath("/profile"),img.getImgSerName()));
			img.setRecruitmentNo(service.recmNo());    
		    service.registImg(img);
		}
	    
	    
	    return "redirect:mypage_company_recruitmentWrite";

	}
	
}
