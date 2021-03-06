package kr.co.jobstory.mypage.user.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.jobstory.mypage.user.service.UserCalendarService;
import kr.co.jobstory.repository.domain.UserCalendar;

@Controller
@RequestMapping("/user")
public class UserCalendarController {
	
	@Autowired
	private UserCalendarService service;
	
	// List 기능
	@RequestMapping("/myCalendar.do")
	public Model list(Model model, UserCalendar userCalendar) throws Exception {		
		System.out.println("memberNo : " + userCalendar.getMemberNo());
		List<UserCalendar> calList = service.selectSaveCheck(userCalendar);
		for( UserCalendar u : calList )	{
			System.out.println("getCalendarDate : " + u.getCalendarDate());
			System.out.println("getContent : " + u.getContent());
		}
		Date todayCal = new Date(); // 오늘날짜
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd"); // 2018XXXX
		
		System.out.println("현재날짜 :" + sdf.format(todayCal));
		model.addAttribute("todayCal", sdf.format(todayCal));
		return model;
	}
	
//	@RequestMapping("/saveCheck.do")
//	@ResponseBody
//	public List<UserCalendar> saveCheck(UserCalendar userCalendar) {
//		
//		Date d = new Date();
//		Calendar c = Calendar.getInstance();
//		c.setTime(d);
//		
//		System.out.println("달력표시 : " + d);
//		return service.selectCalMemo(userCalendar);
//	}
	

	@RequestMapping("/detailCalendar.do")
	@ResponseBody
	public Map<String, Object> detailCalendar(UserCalendar userCalendar) {
		
		System.out.println("zzzz:" +userCalendar.getCalendarDate());
		return service.selectCalMemo(userCalendar);
	}



	@RequestMapping("/write.do")
	@ResponseBody
	public  Map<String, Object> write(UserCalendar userCalendar) throws Exception {
		System.out.println(userCalendar.getContent());
		System.out.println(userCalendar.getCalendarDate());
		System.out.println(userCalendar.getMemberNo());
		
		
		service.insertMemo(userCalendar);
		return service.selectCalMemo(userCalendar);
	}
	
	@RequestMapping("/deleteMemo.do")
	@ResponseBody
	public int delete(int memoNo) throws Exception{
		return service.deleteMemo(memoNo);
	}
	
}
