package kr.co.jobstory.main.service;

import java.util.List;
import java.util.Map;

import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.Scrap;

public interface SearchService {
	/**
	 * 채용공고 검색
	 * @param map
	 * @return
	 */
	List<Recruitment> selectRecruitmentByCode(Map<String, Object> map);
	
	/**
	 * 채용공고 스크랩 삭제
	 * @param scrap
	 */
	void deleteScrap(Scrap scrap);
}
