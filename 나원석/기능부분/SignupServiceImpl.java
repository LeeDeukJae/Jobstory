package kr.co.jobstory.signin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.Company;
import kr.co.jobstory.repository.domain.User;
import kr.co.jobstory.repository.mapper.SignMapper;

@Service
public class SignupServiceImpl implements SignupService{
	@Autowired
	private SignMapper mapper;
	
	
	@Override
	public void signUpMember(User user) {
		mapper.insertMember(user);	
	}
	
	@Override
	public void signUpCompany(Company company) {
		mapper.insertCompany(company);
		
	}
	
	@Override
	public Integer selectNo(String id) {
		return mapper.selectNo(id);
		
	}
}
