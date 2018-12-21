package kr.co.jobstory.mypage.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.Apply;
import kr.co.jobstory.repository.domain.ResumeStandard;
import kr.co.jobstory.repository.domain.User;
import kr.co.jobstory.repository.mapper.RegistMapper;

@Service
public class UserRegistResumeServiceImpl implements UserRegistResumeService{
	@Autowired
	private RegistMapper mapper;
	
	@Override
	public List<ResumeStandard> registResumeList(int memberNo) {
		return mapper.registResumeList(memberNo);
	}
	
	@Override
	public void registVolunteer(int resumeNo, int recruitmentNo) {
		mapper.registVolunteer(resumeNo, recruitmentNo);
	}
	
	@Override
	public User selectRegistByNo(int memberNo, int recruitmentNo) {
		return mapper.selectRegistByNo(memberNo,recruitmentNo);
	}
}
