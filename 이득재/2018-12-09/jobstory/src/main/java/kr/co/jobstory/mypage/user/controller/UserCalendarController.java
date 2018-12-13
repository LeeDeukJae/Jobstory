package kr.co.jobstory.mypage.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.jobstory.mypage.user.service.UserCalendarService;
import kr.co.jobstory.repository.domain.UserCalendar;

@Controller
@RequestMapping("/calendar")
public class UserCalendarController {
	
	@Autowired
	private UserCalendarService service;
	
	@RequestMapping("/list.do")
	public void list(Model model) throws Exception {
		model.addAttribute("list", service.list());
	}
	
	@RequestMapping("/userCalendar.do")
	public void showCalendar() {
		
	}


	@RequestMapping("/write.do")
	public String write(UserCalendar userCalendar) throws Exception {
		System.out.println(userCalendar.getContent());
		
		service.insertMemo(userCalendar);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX;
	}
	
}
