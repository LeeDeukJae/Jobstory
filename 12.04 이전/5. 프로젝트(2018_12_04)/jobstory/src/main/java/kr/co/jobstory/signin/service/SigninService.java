package kr.co.jobstory.signin.service;

import kr.co.jobstory.repository.domain.Company;
import kr.co.jobstory.repository.domain.User;

public interface SigninService {
	void social(User user);
	String selectId(String id);
	User selectUser(User user);
	Company selectCompany(int memberNo);
}
