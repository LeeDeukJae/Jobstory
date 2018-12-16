package kr.co.jobstory.signin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.jobstory.repository.domain.Company;
import kr.co.jobstory.repository.domain.LikeAndHate;
import kr.co.jobstory.repository.domain.User;
import kr.co.jobstory.signin.service.SigninService;

@Controller
@RequestMapping("sign")
public class SigninController {
	
	@Autowired
	private SigninService service;
	
	@RequestMapping("signInPage.do")
	public void signInPage() {}
	
	
	@RequestMapping("searchUser.do")
	@ResponseBody
	public User searchUser(User user,HttpSession session) {
		System.out.println(user.getPass());
		return service.selectUser(user);
	}
	
	@RequestMapping("loginUser.do")
	public String loginUser(User user,HttpSession session) {
		User login;
		login = service.selectUser(user);


		if(login.getAuthority()==1) {	
			List<LikeAndHate> like = service.like(login.getMemberNo());
			List<LikeAndHate> hate = service.hate(login.getMemberNo());
			if(like.isEmpty()) {
				session.setAttribute("like", 0);
			} else {
				session.setAttribute("like", like.size());
			}
			
			if(hate.isEmpty()) {
				session.setAttribute("hate", 0);
			} else {
				session.setAttribute("hate", hate.size());
			}

			session.setAttribute("user", login);	

			
		}else {
			session.setAttribute("user", login);
			Company company= service.selectCompany(login.getMemberNo());
			session.setAttribute("company", company);
		}
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/main/main.do";
	}
	
	
	
	@RequestMapping("kakao.do")
	public String kakao (User user ,HttpSession session) {
		String id = user.getId();
		User login;
		if(service.selectId(id)==null) {
			System.out.println(user.getName());
			service.social(user);
			login = service.selectUser(user);
			session.setAttribute("user", login);		
			return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/main/main.do";
		} else {
			
			try {
				login = service.selectUser(user);
			} catch (NullPointerException e) {
				return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/sign/signUpPage.do";
			}
			session.setAttribute("user", login);	
			return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/main/main.do";
		}
	}
	
	
	@RequestMapping("naverInfo.do")
	public void naverPage() {};
	
	
	@RequestMapping("naver.do")
	public String naver(User user,HttpSession session) {
		String id = user.getId();
		User login;
		if(service.selectId(id)==null) {
			System.out.println(user.getName());
			user.setImgSerPath("/jobstory/attach/profile/");
			service.social(user);
			login = service.selectUser(user);
			session.setAttribute("user", login);		
			return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/main/main.do";
		} else {
			
			try {
				login = service.selectUser(user);
			} catch (NullPointerException e) {
				return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/sign/signUpPage.do";
			}
			session.setAttribute("user", login);	
			return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/main/main.do";
		}
	}
}
