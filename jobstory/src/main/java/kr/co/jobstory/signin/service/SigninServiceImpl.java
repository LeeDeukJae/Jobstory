package kr.co.jobstory.signin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.CompReviewBoard;
import kr.co.jobstory.repository.domain.Company;
import kr.co.jobstory.repository.domain.LikeAndHate;
import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.User;
import kr.co.jobstory.repository.mapper.SignMapper;

@Service
public class SigninServiceImpl implements SigninService{
	@Autowired
	private SignMapper mapper;
	
	@Override
	public String selectId(String id) {
		return mapper.selectId(id);		
	}
	
	@Override
	public void social(User user) {
		
		mapper.insertMember(user);		
	}
	
	@Override
	public User selectUser(User user) {	
		return mapper.selectUser(user);
	}
	
	@Override
	public Company selectCompany(int memberNo) {	
		return mapper.selectComp(memberNo);
	}
	
	@Override
	public List<LikeAndHate> like(int memberNo) {
		return mapper.like(memberNo);
	}
	
	@Override
	public List<LikeAndHate> hate(int memberNo) {
		return mapper.hate(memberNo);
	}
	
	@Override
	public List<CompReviewBoard> avg(String id) {
		return mapper.avg(id);
	}
	
	@Override
	public Integer recList(int memberNo) {
		return mapper.recList(memberNo);
	}
	
	
}
