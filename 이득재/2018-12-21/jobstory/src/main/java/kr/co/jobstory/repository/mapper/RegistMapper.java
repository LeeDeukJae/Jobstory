package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.Apply;
import kr.co.jobstory.repository.domain.ResumeStandard;
import kr.co.jobstory.repository.domain.User;

public interface RegistMapper {
	List<ResumeStandard> registResumeList(int memberNo);
	void registVolunteer(int resumeNo,int recruitmentNo);
	User selectRegistByNo(int memberNo, int recruitmentNo);
}
