package kr.co.jobstory.mypage.company.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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
import org.springframework.core.annotation.SynthesizedAnnotation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.jobstory.mypage.company.service.CompanyService;
import kr.co.jobstory.repository.domain.Apply;
import kr.co.jobstory.repository.domain.CompReviewBoard;
import kr.co.jobstory.repository.domain.LikeAndHate;
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
	public ModelAndView detail(int recruitmentNo,String name) throws UnsupportedEncodingException {
		Recruitment detail = service.recDetail(recruitmentNo);
		List<RecruitmentImg> recImg = service.recImg(recruitmentNo);

		
		List<CompReviewBoard> list2 = service.avg2(name);
		
		double avg=0;
		for(CompReviewBoard comp: list2) {
			avg+=comp.getAverage();
		}
		avg= avg/list2.size();
		avg=Math.round(avg*100)/100.0;

		avg=Math.round(avg*10)/10.0;
		ModelAndView mav = new ModelAndView("company/detail");
		mav.addObject("detail", detail);
		mav.addObject("recImg", recImg);
		mav.addObject("avg",avg);
		return mav;
		
	}
	
	@RequestMapping("update.do")
	public ModelAndView update(int recruitmentNo) {
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
		return mav;
		
	}
	
	@RequestMapping("updateApply.do")
	public String updateRec(String[] workId2,HttpSession session,Recruitment recruitment,RecruitmentImg img, List<MultipartFile> attach) throws ParseException, IllegalStateException, IOException {		
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
	    System.out.println("이름:"+recruitment.getName());
	    String name=URLEncoder.encode(recruitment.getName(),"UTF-8");
	    recruitment.setName(name);
	    
	    return "redirect:detail.do?recruitmentNo=" + recruitment.getRecruitmentNo()+"&name="+recruitment.getName();

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
	
	@RequestMapping("applyPass.do")
	public String applyPass(int applyNo,int recruitmentNo) {
		service.applyPass(applyNo);
		return "redirect:applyUser.do?recruitmentNo="+recruitmentNo;
	}
	
	@RequestMapping("applyFail.do")
	public String applyFail(int applyNo,int recruitmentNo) {
		service.applyFail(applyNo);
		return "redirect:applyUser.do?recruitmentNo="+recruitmentNo;
	}
	
	@RequestMapping("likeAndHate.do")
	@ResponseBody
	public String likeAndHate(LikeAndHate likeAndHate) {
		if(likeAndHate.getLikeHate()==1) {
			if(service.selectLike(likeAndHate)!=null) {
				return "fail";
			};
			service.likeAndHate(likeAndHate);
			return "success";
		} else {
			if(service.selectHate(likeAndHate)!=null) {
				return "fail";
			};
			service.likeAndHate(likeAndHate);
			return "success";
		}
		
	}
	
	@RequestMapping("chart.do")
	public ModelAndView chart(int recruitmentNo) {
		ModelAndView mav = new ModelAndView("company/chart");
		List<Apply> list = service.chart(recruitmentNo);
		new SimpleDateFormat("yyyy-MM-dd");
		Calendar current = Calendar.getInstance();
		int currentYear  = current.get(Calendar.YEAR);
		double man=0;
		double woman=0;
		double ten=0;
		double twt=0;
		double trd=0;
		double fort=0;
		double high=0;
		double second=0;
		double fouth=0;
		double master=0;
		
		for(Apply a : list) {
						
			int year = Integer.parseInt(a.getResumeStandard().getBirth().split(". ")[0]);
			int age=currentYear-year+1;
			System.out.println("나이:"+age);
			if(age>=10&&age<20) {ten+=1;}
			if(age>=20&&age<30) {twt+=1;}
			if(age>=30&&age<40) {trd+=1;}
			if(age>=40) {fort+=1;}
			System.out.println("성별:"+a.getResumeStandard().getGender());
			if(a.getResumeStandard().getGender()==1) {man+=1;}
			if(a.getResumeStandard().getGender()==2) {woman+=1;}
			System.out.println("학력:"+a.getResumeStandard().getEducationId());
			if(a.getResumeStandard().getEducationId().equals("고등학교졸업")) {high+=1;}
			if(a.getResumeStandard().getEducationId().equals("대학교졸업(2,3년)")) {second+=1;}
			if(a.getResumeStandard().getEducationId().equals("대학교졸업(4년)")) {fouth+=1;}
			if(a.getResumeStandard().getEducationId().equals("석·박사졸업")) {master+=1;}
		}
		if(man!=0) {man=man/list.size()*100;}
		if(woman!=0) {woman=woman/list.size()*100;}
		
		if(ten!=0) {ten=ten/list.size()*100;}
		if(twt!=0) {twt=twt/list.size()*100;}
		if(trd!=0) {trd=trd/list.size()*100;}
		if(fort!=0) {fort=fort/list.size()*100;}
		
		if(high!=0) {high=high/list.size()*100;}
		if(second!=0) {second=second/list.size()*100;}
		if(fouth!=0) {fouth=fouth/list.size()*100;}
		if(master!=0) {master=master/list.size()*100;}
		
		System.out.println("남자:"+man);
		System.out.println("여자:"+woman);
		
		mav.addObject("man", man);
		mav.addObject("woman", woman);
		mav.addObject("count", list.size());
		mav.addObject("ten", ten);
		mav.addObject("twt", twt);
		mav.addObject("trd", trd);
		mav.addObject("fort", fort);
		mav.addObject("high", high);
		mav.addObject("second", second);
		mav.addObject("fouth", fouth);
		mav.addObject("master", master);
		return mav;
	}
	
}
