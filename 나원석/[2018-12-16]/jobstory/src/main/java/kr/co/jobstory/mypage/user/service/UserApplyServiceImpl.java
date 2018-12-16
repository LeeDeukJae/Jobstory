package kr.co.jobstory.mypage.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.Apply;
import kr.co.jobstory.repository.domain.Scrap;
import kr.co.jobstory.repository.mapper.ApplyMapper;
import kr.co.jobstory.repository.mapper.ScrapMapper;

@Service
public class UserApplyServiceImpl implements UserApplyService{

	@Autowired
	private ApplyMapper mapper;
	
	@Override
	public List<Apply> apply(int memberNo) {
		return mapper.apply(memberNo);
	}
	
	
	@Override
	public void applyDelete(int applyNo) {
		mapper.applyDelete(applyNo);
		
	}
}
