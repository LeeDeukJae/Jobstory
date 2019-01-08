package kr.co.jobstory.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.Scrap;
import kr.co.jobstory.repository.mapper.JobSearchMapper;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	JobSearchMapper mapper;
	
	@Override
	public List<Recruitment> selectRecruitmentByCode(Map<String, Object> map) {
		return mapper.selectRecruitmentByCode(map);
	}

	@Override
	public void deleteScrap(Scrap scrap) {
		mapper.deleteScrap(scrap);
	}
}
