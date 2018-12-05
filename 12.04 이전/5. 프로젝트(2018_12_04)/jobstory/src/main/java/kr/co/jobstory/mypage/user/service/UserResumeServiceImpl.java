package kr.co.jobstory.mypage.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.ResumeCollege;
import kr.co.jobstory.repository.domain.ResumeCompany;
import kr.co.jobstory.repository.domain.ResumeHighschool;
import kr.co.jobstory.repository.domain.ResumePhoto;
import kr.co.jobstory.repository.domain.ResumeStandard;
import kr.co.jobstory.repository.mapper.ResumeMapper;

@Service
public class UserResumeServiceImpl implements UserResumeService{

	@Autowired
	ResumeMapper mapper;

	@Override
	public List<ResumeStandard> selectResumeList() {
		return mapper.selectResumeList();
	}

	@Override
	public ResumeStandard selectResumeCnt() {
		return mapper.selectResumeCnt();
	}

	@Override
	public void deleteResume(int resumeNo) {
		mapper.deleteResume(resumeNo);
	}

	@Override
	public void insertResume(ResumeStandard rStandard) {
		mapper.insertResume(rStandard);
	}

	@Override
	public void insertResumePhoto(ResumePhoto rPhoto) {
		mapper.insertResumePhoto(rPhoto);
	}

	@Override
	public void insertResumeHighschool(ResumeHighschool rHighschool) {
		mapper.insertResumeHighschool(rHighschool);
	}

	@Override
	public void insertResumeCollege(ResumeCollege rCollege) {
		mapper.insertResumeCollege(rCollege);
	}

	@Override
	public void insertResumeExperience(ResumeCompany rCompany) {
		mapper.insertResumeExperience(rCompany);
	}

	@Override
	public ResumeStandard selectResumeStandardByNo(int resumeNo) {
		return mapper.selectResumeStandardByNo(resumeNo);
	}

	@Override
	public ResumeHighschool selectResumeHighschoolByNo(int resumeNo) {
		return mapper.selectResumeHighschoolByNo(resumeNo);
	}

	@Override
	public ResumeCollege selectResumeCollegeByNo(int resumeNo) {
		return mapper.selectResumeCollegeByNo(resumeNo);
	}

	@Override
	public ResumeCompany selectResumeCompanyByNo(int resumeNo) {
		return mapper.selectResumeCompanyByNo(resumeNo);
	}

	@Override
	public ResumePhoto selectResumePhotoByNo(int resumeNo) {
		return mapper.selectResumePhotoByNo(resumeNo);
	}

	@Override
	public void updateResumeStandard(ResumeStandard rStandard) {
		mapper.updateResumeStandard(rStandard);
	}

	@Override
	public void updateResumeHighschool(ResumeHighschool rHighschool) {
		mapper.updateResumeHighschool(rHighschool);
	}

	@Override
	public void updateResumeCollege(ResumeCollege rCollege) {
		mapper.updateResumeCollege(rCollege);
	}

	@Override
	public void updateResumeCompany(ResumeCompany rCompany) {
		mapper.updateResumeCompany(rCompany);
	}

	@Override
	public void updateResumePhoto(ResumePhoto rPhoto) {
		mapper.updateResumePhoto(rPhoto);
	}
	
	
	
	
	
	
	
	
}
