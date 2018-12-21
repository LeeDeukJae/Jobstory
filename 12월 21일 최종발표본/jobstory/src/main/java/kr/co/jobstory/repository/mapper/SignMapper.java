package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.CompReviewBoard;
import kr.co.jobstory.repository.domain.Company;
import kr.co.jobstory.repository.domain.LikeAndHate;
import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.User;

public interface SignMapper {
	//회원가입
	void insertMember(User user);
	void insertCompany(Company company);
	Integer selectNo(String id);
	String selectId(String id);
	
	
	//로그인
	User selectUser(User user);
	Company selectComp(int memberNo);
	List<LikeAndHate> like(int memberNo);
	List<LikeAndHate> hate(int memberNo);
	List<CompReviewBoard> avg(String id);
	Integer recList(int memberNo);
	int volunteerList(int memberNo);
	
}
