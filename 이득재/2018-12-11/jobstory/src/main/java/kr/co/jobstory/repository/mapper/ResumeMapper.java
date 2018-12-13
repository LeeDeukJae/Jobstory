package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.ResumeCollege;
import kr.co.jobstory.repository.domain.ResumeCompany;
import kr.co.jobstory.repository.domain.ResumeHighschool;
import kr.co.jobstory.repository.domain.ResumePhoto;
import kr.co.jobstory.repository.domain.ResumeStandard;

public interface ResumeMapper {

	List<ResumeStandard> selectResumeList();
	ResumeStandard selectResumeCnt();
	void deleteResume(int resumeNo);
	void insertResume(ResumeStandard rStandard);
	void insertResumePhoto(ResumePhoto rPhoto);
	void insertResumeHighschool(ResumeHighschool rHighschool);
	void insertResumeCollege(ResumeCollege rCollege);
	void insertResumeExperience(ResumeCompany rCompany);
	
	ResumeStandard selectResumeStandardByNo(int resumeNo);
	ResumeHighschool selectResumeHighschoolByNo(int resumeNo);
	ResumeCollege selectResumeCollegeByNo(int resumeNo);
	ResumeCompany selectResumeCompanyByNo(int resumeNo);
	ResumePhoto selectResumePhotoByNo(int resumeNo);
	
	void updateResumeStandard(ResumeStandard rStandard);
	void updateResumeHighschool(ResumeHighschool rHighschool);
	void updateResumeCollege(ResumeCollege rCollege);
	void updateResumeCompany(ResumeCompany rCompany);
	void updateResumePhoto(ResumePhoto rPhoto);
}
