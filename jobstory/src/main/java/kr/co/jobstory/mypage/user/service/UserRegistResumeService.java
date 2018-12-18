package kr.co.jobstory.mypage.user.service;

import java.util.List;

import kr.co.jobstory.repository.domain.Apply;
import kr.co.jobstory.repository.domain.ResumeStandard;
import kr.co.jobstory.repository.domain.User;

public interface UserRegistResumeService {
	List<ResumeStandard> registResumeList(int memberNo);
	void registVolunteer(int resumeNo,int recruitmentNo);
	User selectRegistByNo(int memberNo, int recruitmentNo);
}
