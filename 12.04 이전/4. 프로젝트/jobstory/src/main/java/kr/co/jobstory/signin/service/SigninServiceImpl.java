package kr.co.jobstory.signin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public void kakao(User user) {
		mapper.insertMember(user);		
	}
	
	@Override
	public User selectUser(User user) {	
		return mapper.selectUser(user);
	}
	
	
}
