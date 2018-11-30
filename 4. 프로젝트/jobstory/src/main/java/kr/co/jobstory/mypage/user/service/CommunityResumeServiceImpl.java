package kr.co.jobstory.mypage.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.ResumeBoard;
import kr.co.jobstory.repository.mapper.ResumeMapper;

@Service
public class CommunityResumeServiceImpl implements CommunResumeService {
	@Autowired
	private ResumeMapper mapper;
	
	@Override
	public List<ResumeBoard> list(){		
	return mapper.selectBoard(); 
	}
	
}
