package kr.co.jobstory.mypage.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.jobstory.mypage.user.service.QNABoardService;
import kr.co.jobstory.repository.domain.interviewRecom;

@Controller
@RequestMapping("/community")
public class QNABoardController {

	@Autowired
	QNABoardService service;

    
    @RequestMapping("/insertrecom.do")
    @ResponseBody
    public int insertrecom(interviewRecom recom) {
//    	 System.out.println("댓글 " + recom);
//    	 model.addAttribute("recom", service.insertRecom(recom));
    	 service.insertRecom(recom);
    	 return service.recomExist(recom);
    }
    
    @RequestMapping("/deleterecom.do")
    @ResponseBody
    public int deleterecom(interviewRecom recom) {
//		model.addAttribute("recom", service.deleteRecom(recom));
		service.deleteRecom(recom);
    	return service.recomExist(recom);
    }
    
    // 추천수 카운트
    @RequestMapping("/recomCount.do")
    @ResponseBody
	public int recnumber(int no) {
		return service.recomCount(no);
	}
    
    // 추천 여부 확인 0 / 1
    @RequestMapping("/recomExist.do")
    @ResponseBody
	public int recExist(interviewRecom recom) {
		return service.recomExist(recom);
	}
    
}
