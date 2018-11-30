package kr.co.jobstory.signin.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.jobstory.repository.domain.User;
import kr.co.jobstory.signin.service.SigninService;

@Controller
@RequestMapping("sign")
public class SigninController {
	
	@Autowired
	private SigninService service;
	
	@RequestMapping("signInPage.do")
	public void signInPage() {}
	
	@RequestMapping("kakao.do")
	public String kakao (User user ,HttpSession session) {
		String id = user.getId();
		User login;
		if(service.selectId(id)==null) {
			System.out.println(user.getName());
			service.kakao(user);
			login = service.selectUser(user);
			session.setAttribute("user", login);	
			return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/main/main_logout_search.do";
		} else {
			
			try {
				login = service.selectUser(user);
			} catch (NullPointerException e) {
				return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/sign/signUpPage.do";
			}
			session.setAttribute("user", login);	
			return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/main/main_logout_search.do";
		}
	}
}
