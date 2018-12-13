package kr.co.jobstory.mypage.user.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.jobstory.mypage.user.service.UserScrapService;
import kr.co.jobstory.repository.domain.ResumePage;
import kr.co.jobstory.repository.domain.Scrap;

@Controller
@RequestMapping("/user")
public class UserScrapController {
	
	@Autowired
	UserScrapService service;
	
	@RequestMapping("/scrap.do")
	public Model scrap(int memberNo, @RequestParam(value="pageNo", defaultValue="1") int pageNo, Model model) {
		System.out.println("scrap() invoked.");
		
		int scrapCnt = service.selectScrapListCnt(memberNo).getScrapCnt();
		
		ResumePage page = new ResumePage(pageNo, scrapCnt, 10, 5);
		
		Map<String, Object> scrapMap = new HashMap<String, Object>();
		scrapMap.put("memberNo", memberNo);
		scrapMap.put("page", page);
		
		List<Scrap> scrapList = service.selectScrapList(scrapMap);
		
		System.out.println("memberNo : " + memberNo);
		System.out.println("pageNo : " + pageNo);

		for(Scrap scrap : scrapList) {
			String[] addr = scrap.getAddr().split(" ");
			scrap.setAddr(addr[0]+ " " + addr[1]);
		}
		
		model.addAttribute("scrapList", scrapList);
		model.addAttribute("scrapPage", page);
		return model;
	}
	
	@RequestMapping("/scrapPage.do")
	@ResponseBody
	public Map<String, Object> scrapPage(int pageNo, int memberNo) {
		System.out.println("scrapPage(int pageNo, int memberNo) invoked");
		System.out.println("pageNo : " + pageNo);
		System.out.println("memberNo : " + memberNo);
		
		int scrapCnt = service.selectScrapListCnt(memberNo).getScrapCnt();
		
		ResumePage page = new ResumePage(pageNo, scrapCnt, 10, 5);
		
		Map<String, Object> scrapMap = new HashMap<String, Object>();
		scrapMap.put("memberNo", memberNo);
		scrapMap.put("page", page);
		List<Scrap> scrapList = service.selectScrapList(scrapMap);
		int count = 0;
		SimpleDateFormat viewSdf = new SimpleDateFormat("MM/dd");
		SimpleDateFormat paramSdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		for(Scrap s : scrapList) {
			count++;
			System.out.println(count + ". end Date : " + s.getEndDate());
			System.out.println(count + ". end Date : " + viewSdf.format(s.getEndDate()));
			System.out.println(count + ". end Date : " + paramSdf.format(s.getEndDate()));
			s.setViewParsingEndDate(viewSdf.format(s.getEndDate()));
			s.setParamParsingEndDate(paramSdf.format(s.getEndDate()));
		}
		
		Map<String, Object> resultMap = new HashMap<String, Object> ();
		resultMap.put("scrapList", scrapList);
		resultMap.put("scrapPage", page);
		
		return resultMap;
	}
	
	@RequestMapping("/scrapDelete.do")
	@ResponseBody
	public Map<String, Object> deleteScrap(int scrapNo, int memberNo) {
		System.out.println("deleteScrap(int scrapNo, int memberNo) invoked");
		System.out.println("scrapNo : " + scrapNo);
		System.out.println("memberNo : " + memberNo);
		
		service.deleteScrap(scrapNo);
		
		ResumePage page = new ResumePage(1, service.selectScrapListCnt(memberNo).getScrapCnt(), 10, 5);
		
		
		Map<String, Object> scrapMap = new HashMap<String, Object>();
		scrapMap.put("memberNo", memberNo);
		scrapMap.put("page", page);
		
		List<Scrap> scrapList= service.selectScrapList(scrapMap);
		int count = 0;
		SimpleDateFormat viewSdf = new SimpleDateFormat("MM/dd");
		SimpleDateFormat paramSdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		for(Scrap s : scrapList) {
			count++;
			System.out.println(count + ". end Date : " + s.getEndDate());
			System.out.println(count + ". end Date : " + viewSdf.format(s.getEndDate()));
			System.out.println(count + ". end Date : " + paramSdf.format(s.getEndDate()));
			s.setViewParsingEndDate(viewSdf.format(s.getEndDate()));
			s.setParamParsingEndDate(paramSdf.format(s.getEndDate()));
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("scrapList", scrapList);
		map.put("scrapPage", page);
		
		
		return map;
	}
	
}
