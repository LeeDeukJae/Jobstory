package kr.co.jobstory.mypage.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.Scrap;
import kr.co.jobstory.repository.mapper.ScrapMapper;

@Service
public class UserScrapServiceImpl implements UserScrapService{

	@Autowired
	ScrapMapper mapper;
	
	@Override
	public List<Scrap> selectScrapList(Map<String, Object> scrapMap) {
		return mapper.selectScrapList(scrapMap);
	}

	@Override
	public Scrap selectScrapListCnt(int memberNo) {
		return mapper.selectScrapListCnt(memberNo);
	}
	
	
}
