package kr.co.jobstory.repository.mapper;

import java.util.List;
import java.util.Map;

import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.Scrap;

public interface JobSearchMapper {
	List<Recruitment> selectRecruitmentByCode(Map<String, Object> map);
	void deleteScrap(Scrap scrap);
}
