package kr.co.jobstory.mypage.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.Apply;
import kr.co.jobstory.repository.domain.CompReviewBoard;
import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.RecruitmentImg;
import kr.co.jobstory.repository.mapper.CompanyMapper;

@Service
public class CompanyServiceImpl implements CompanyService{
	@Autowired
	private CompanyMapper mapper;
	
	@Override
	public void regist(Recruitment recruitment) {
		mapper.regist(recruitment);
	}
	
	@Override
	public void registImg(RecruitmentImg img) {
		mapper.registImg(img);
	}
	
	@Override
	public Integer recmNo() {
		return mapper.recmNo();
	}
	
	@Override
	public List<Recruitment> recList(int memberNo) {
		return mapper.recList(memberNo);
	}
	
	@Override
	public List<RecruitmentImg> recImg(int recruitmentNo) {
		return mapper.recImg(recruitmentNo);
	}
	@Override
	public Recruitment recDetail(int recruitmentNo) {
		return mapper.recDetail(recruitmentNo);
	}
	
	@Override
	public Recruitment recUpdate(int recruitmentNo) {
		return mapper.recUpdate(recruitmentNo);
	}
	
	@Override
	public void updateRec(Recruitment recruitment) {
		mapper.updateRec(recruitment);
		
	}
	
	@Override
	public void updateRecImg(RecruitmentImg img) {
		mapper.updateRecImg(img);
		
	}
	
	@Override
	public List<RecruitmentImg> updateImgNo(int recruitmentNo) {
		return mapper.updateImgNo(recruitmentNo);
	}
	
	@Override
	public List<Apply> apply(int recruitmentNo) {
		return mapper.apply(recruitmentNo);
	}
	
	@Override
	public void applyDelete(int applyNo) {
		mapper.applyDelete(applyNo);
		
	}
	
	
	@Override
	public List<CompReviewBoard> avg(String id) {
		return mapper.avg(id);
	}
	
	@Override
	public List<CompReviewBoard> avg2(String name) {
		return mapper.avg2(name);
	}
	
}
