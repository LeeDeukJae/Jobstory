package kr.co.jobstory.main.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.jobstory.main.service.SearchService;
import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.Scrap;

@Controller
@RequestMapping("/main")
public class SearchController {
	
		@Autowired
		SearchService service;
	
	   @RequestMapping("main_login.do")
	   public void mainForm() {
	      System.out.println("mainForm() invoked");
	   }
	   @RequestMapping("main_logout.do")
	   public void mainForm2() {
	      System.out.println("mainForm() invoked");
	   }
	   @RequestMapping("main.do")
	   public void mainForm3() {
	      System.out.println("mainForm() invoked");
	   }
	   @RequestMapping("company_detail.do")
	   public void mainForm4() {
	      System.out.println("mainForm() invoked");
	   }

	   @RequestMapping("/search.do")
	   @ResponseBody
	   public Map<String, Object> selectJobList(
			   @RequestParam(value = "experienceIdList[]", defaultValue="") List<String> experienceIdList,
			   @RequestParam(value = "locationIdList[]", defaultValue="") List<String> locationIdList,
			   @RequestParam(value = "educationIdList[]", defaultValue="") List<String> educationIdList,
			   @RequestParam(value = "companyIdList[]", defaultValue="") List<String> companyIdList,
			   @RequestParam(value = "jobIdList[]", defaultValue="") List<String> jobIdList,
			   @RequestParam(value = "workIdList[]", defaultValue="") List<String> workIdList,
			   @RequestParam(value = "memberNo", defaultValue="") int memberNo) {
		   
		   
		   System.out.println("selectJobList() invoked");
		   
		   System.out.println("memberNo : " + memberNo);

		   
		   Map<String, Object> map = new HashMap<String, Object>();
		   map.put("experienceIdList", experienceIdList);
		   map.put("locationIdList", locationIdList);
		   map.put("educationIdList", educationIdList);
		   map.put("companyIdList", companyIdList);
		   map.put("jobIdList", jobIdList);
		   map.put("workIdList", workIdList);
		   map.put("memberNo", memberNo);
		   
		   List<Recruitment> recruitmentList = service.selectRecruitmentByCode(map);
		   
		   System.out.println("------------------------------ [experienceId] ------------------------------");
		   for(String experienceId : experienceIdList) {
			   System.out.println(experienceId);
		   }
		   System.out.println("------------------------------ [locationId] ------------------------------");
		   for(String locationId : locationIdList) {
			   System.out.println(locationId);
		   }
		   System.out.println("------------------------------ [educationId] ------------------------------");
		   for(String educationId : educationIdList) {
			   System.out.println(educationId);
		   }
		   System.out.println("------------------------------ [companyId] ------------------------------");
		   for(String companyId : companyIdList) {
			   System.out.println(companyId);
		   }
		   System.out.println("------------------------------ [jobId] ------------------------------");
		   for(String jobId : jobIdList) {
			   System.out.println(jobId);
		   }
		   System.out.println("------------------------------ [workId] ------------------------------");
		   for(String workId : workIdList) {
			   System.out.println(workId);
		   }
		   
		   System.out.println("------------------------------ [리스트] ------------------------------");
		   int count1 = 0;
		   List<Recruitment> list = new ArrayList<Recruitment>();

		   for(Recruitment r : recruitmentList) {
			   count1++;
			   String workId = r.getWorkId();
			   System.out.println(count1 + ". " + workId);
			   if(workId.contains("work1001")) {
				   System.out.println("정규직");
				   workId = workId.replaceAll("work1001", "정규직");
			   }
			   if(workId.contains("work1002")) {
				   System.out.println("계약직");
				   workId = workId.replaceAll("work1002", "계약직");
			   }
			   if(workId.contains("work1003")) {
				   System.out.println("인턴");
				   workId = workId.replaceAll("work1003", "인턴");
			   }
			   if(workId.contains("work1004")) {
				   System.out.println("전환형 인턴");
				   workId = workId.replaceAll("work1004", "전환형 인턴");
			   }
			   r.setWorkId(workId.replace(",", "/"));
			   
			   System.out.println("치환 후 : " + r.getWorkId());
			   list.add(r);
		   };
		   
		   for(Recruitment r : recruitmentList) {
			   System.out.println(r.getTitle() + " : " + r.getScrapNo());
		   }
		   
		   Map<String, Object> resultMap = new HashMap<String, Object>();
		   resultMap.put("recruitmentList", list);
		   return resultMap;
	   }
	   
	   @RequestMapping("/scrapDelete.do")
	   @ResponseBody
	   public void scrapDelete(Scrap scrap) {
		   System.out.println("recruitmentNo : " + scrap.getMemberNo());
		   System.out.println("memberNo : " + scrap.getMemberNo());
		   service.deleteScrap(scrap);
	   }
	   
}
