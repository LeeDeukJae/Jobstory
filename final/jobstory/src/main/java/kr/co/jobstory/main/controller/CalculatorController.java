package kr.co.jobstory.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class CalculatorController {
 
	@RequestMapping("severanceCal.do")
	public void calculForm() {
		System.out.println("caculForm() invoke");
	}
}
