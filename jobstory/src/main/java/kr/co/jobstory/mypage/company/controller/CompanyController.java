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
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.jobstory.mypage.company.service.CompanyService;
import kr.co.jobstory.repository.domain.CompReviewBoard;
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
		List<CompReviewBoard> list2 = service.avg(user.getId());
		double avg=0;
		for(CompReviewBoard comp: list2) {
			avg+=comp.getAverage();
		}
		avg= avg/list2.size();
		avg=Math.round(avg*100)/100.0;

		avg=Math.round(avg*10)/10.0;

		ModelAndView mav = new ModelAndView("company/mypage");
		if(list.isEmpty()==true) {
			mav.addObject("avg", avg);
		} else {
			mav.addObject("list", list);
			mav.addObject("avg", avg);
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
	public ModelAndView detail(int recruitmentNo,double avg) {
		Recruitment detail = service.recDetail(recruitmentNo);
		List<RecruitmentImg> recImg = service.recImg(recruitmentNo);
		ModelAndView mav = new ModelAndView("company/detail");
		mav.addObject("detail", detail);
		mav.addObject("recImg", recImg);
		mav.addObject("avg", avg);
		return mav;
		
	}
	
	@RequestMapping("update.do")
	public ModelAndView update(int recruitmentNo,double avg) {
		Recruitment detail = service.recUpdate(recruitmentNo);
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String to = transFormat.format(detail.getRegDate());
		
		String regDate2 = to;


		System.out.println(to);
		List<RecruitmentImg> recImg = service.recImg(recruitmentNo);
		ModelAndView mav = new ModelAndView("company/recruitmentUpdate");
		mav.addObject("detail", detail);
		mav.addObject("regDate2", regDate2);
		mav.addObject("recImg", recImg);
		mav.addObject("avg", avg);
		return mav;
		
	}
	
	@RequestMapping("updateApply.do")
	public String updateRec(double avg,String[] workId2,HttpSession session,Recruitment recruitment,RecruitmentImg img, List<MultipartFile> attach) throws ParseException, IllegalStateException, IOException {		
		Calendar cal = new GregorianCalendar(Locale.KOREA);
		String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
	    cal.setTime(new Date());
	    cal.add(Calendar.DAY_OF_YEAR, Integer.parseInt(recruitment.getDate())); // 일자를 더한다.
	    SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd 23:59:59");
	    String strDate = fm.format(cal.getTime());
	    recruitment.setEndDate(strDate);
	    String workId = "";
	    for(int i=0;i<workId2.length;i++) {
	    	if(i==workId2.length-1) {
	    		workId +=workId2[i];
	    	}else {
	    		workId +=workId2[i]+",";
	    		
	    	}
	    }

	    recruitment.setWorkId(workId);
	    service.updateRec(recruitment);
	    List<RecruitmentImg> imgList = service.updateImgNo(recruitment.getRecruitmentNo());
	    int i=0;
	    for(MultipartFile file : attach) {
			if(file.isEmpty()==true) continue; 
			String newFileName = "company"+date+"_"+System.currentTimeMillis()+"."
	                 +file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
			img.setImgOriName(file.getOriginalFilename());
			img.setImgSerName(newFileName);
			file.transferTo(new File(context.getRealPath("/img"),img.getImgSerName()));
			

			if(i>imgList.size()-1) {
				img.setImgSerPath("/jobstory/img/");
				img.setRecruitmentNo(recruitment.getRecruitmentNo());
				service.registImg(img);
				
			} else {
				img.setImgNo(imgList.get(i).getImgNo());
				service.updateRecImg(img);
				
			}
		    i++;
		}
	    
	    return "redirect:detail.do?recruitmentNo=" + recruitment.getRecruitmentNo()+"&avg="+avg;

	}
	
	
	@RequestMapping("applyUser.do")
	public ModelAndView apply(int recruitmentNo) {
		ModelAndView mav = new ModelAndView("company/applyUser");
		mav.addObject("list", service.apply(recruitmentNo));
		
		return mav;
	}
	
	@RequestMapping("applyDelete.do")
	public String applyDelete(int applyNo,int recruitmentNo) {
		service.applyDelete(applyNo);
		
		return "redirect:applyUser.do?recruitmentNo="+recruitmentNo;
	}
	
}
