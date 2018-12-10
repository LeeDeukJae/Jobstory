package kr.co.jobstory.mypage.user.service;

import java.util.List;
import java.util.Map;

import kr.co.jobstory.repository.domain.Page;
import kr.co.jobstory.repository.domain.ResumeAttachFile;
import kr.co.jobstory.repository.domain.ResumeCollege;
import kr.co.jobstory.repository.domain.ResumeCompany;
import kr.co.jobstory.repository.domain.ResumeHighschool;
import kr.co.jobstory.repository.domain.ResumePhoto;
import kr.co.jobstory.repository.domain.ResumeStandard;

public interface UserResumeService {
	
	/**
	 * 이력서 관리
	 */
	List<ResumeStandard> selectResumeList(Map map);
	ResumeStandard selectResumeCnt(int memberNo);
	void deleteResume(int rNo);
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
	
	/**
	 * 첨부파일 관리
	 */
	List<ResumeAttachFile> selectAttachList(int memberNo);
	int selectAttachCnt(int memberNo);
	void insertAttach(ResumeAttachFile resumeAttachFile);
	void deleteAttach(int fileNo);
}
