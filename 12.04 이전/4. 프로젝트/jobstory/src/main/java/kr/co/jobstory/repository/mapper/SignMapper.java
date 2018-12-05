package kr.co.jobstory.repository.mapper;

import kr.co.jobstory.repository.domain.Company;
import kr.co.jobstory.repository.domain.User;

public interface SignMapper {
	//회원가입
	void insertMember(User user);
	void insertCompany(Company company);
	int selectNo(String id);
	String selectId(String id);
	
	
	//로그인
	User selectUser(User user);
	
}
