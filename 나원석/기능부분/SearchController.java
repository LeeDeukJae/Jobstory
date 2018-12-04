package kr.co.jobstory.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class SearchController {
	@RequestMapping("main_login.do")
	   public void mainForm() {
	      System.out.println("mainForm() invoked");
	   }
	   @RequestMapping("main_logout.do")
	   public void mainForm2() {
	      System.out.println("mainForm() invoked");
	   }
	   @RequestMapping("main_logout_search.do")
	   public void mainForm3() {
	      System.out.println("mainForm() invoked");
	   }
	   @RequestMapping("company_detail.do")
	   public void mainForm4() {
	      System.out.println("mainForm() invoked");
	   }

}
