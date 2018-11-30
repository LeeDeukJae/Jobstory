package kr.co.jobstory.signin.service;

import kr.co.jobstory.repository.domain.Company;
import kr.co.jobstory.repository.domain.User;

public interface SignupService {
	
	void signUpMember(User user);
	void signUpCompany(Company company);
	int selectNo(String id);
}
