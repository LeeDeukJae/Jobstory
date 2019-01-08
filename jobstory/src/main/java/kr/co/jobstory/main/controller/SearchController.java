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

	/**
	 * 채용공고 검색
	 * @param experienceIdList
	 * @param locationIdList
	 * @param educationIdList
	 * @param companyIdList
	 * @param jobIdList
	 * @param workIdList
	 * @param memberNo
	 * @return
	 */
	@RequestMapping("/search.do")
	@ResponseBody
	public Map<String, Object> selectJobList(
			@RequestParam(value = "experienceIdList[]", defaultValue = "") List<String> experienceIdList,
			@RequestParam(value = "locationIdList[]", defaultValue = "") List<String> locationIdList,
			@RequestParam(value = "educationIdList[]", defaultValue = "") List<String> educationIdList,
			@RequestParam(value = "companyIdList[]", defaultValue = "") List<String> companyIdList,
			@RequestParam(value = "jobIdList[]", defaultValue = "") List<String> jobIdList,
			@RequestParam(value = "workIdList[]", defaultValue = "") List<String> workIdList,
			@RequestParam(value = "memberNo", defaultValue = "") int memberNo) {

		System.out.println("selectJobList() invoked");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("experienceIdList", experienceIdList);
		map.put("locationIdList", locationIdList);
		map.put("educationIdList", educationIdList);
		map.put("companyIdList", companyIdList);
		map.put("jobIdList", jobIdList);
		map.put("workIdList", workIdList);
		map.put("memberNo", memberNo);

		List<Recruitment> recruitmentList = service.selectRecruitmentByCode(map);
		List<Recruitment> list = new ArrayList<Recruitment>();

		// 채용공고 경력사항 DB 문자 치환
		for (Recruitment r : recruitmentList) {
			String workId = r.getWorkId();
			if (workId.contains("work1001")) {
				workId = workId.replaceAll("work1001", "정규직");
			}
			if (workId.contains("work1002")) {
				workId = workId.replaceAll("work1002", "계약직");
			}
			if (workId.contains("work1003")) {
				workId = workId.replaceAll("work1003", "인턴");
			}
			if (workId.contains("work1004")) {
				workId = workId.replaceAll("work1004", "전환형 인턴");
			}
			if (workId.contains("work1005")) {
				workId = workId.replaceAll("work1005", "아르바이트");
			}
			if (workId.contains("work1006")) {
				workId = workId.replaceAll("work1006", "프리렌서");
			}
			if (workId.contains("work1007")) {
				workId = workId.replaceAll("work1007", "파트");
			}
			r.setWorkId(workId.replace(",", "/"));
			list.add(r);
		};

		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("recruitmentList", list);
		return resultMap;
	}

	/**
	 * 스크랩 채용공고 삭제
	 * @param scrap
	 */
	@RequestMapping("/scrapDelete.do")
	@ResponseBody
	public void scrapDelete(Scrap scrap) {
		service.deleteScrap(scrap);
	}

}
