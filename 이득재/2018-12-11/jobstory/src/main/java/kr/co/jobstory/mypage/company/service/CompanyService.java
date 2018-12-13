package kr.co.jobstory.mypage.company.service;

import java.util.List;

import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.RecruitmentImg;

public interface CompanyService {
	void regist(Recruitment recruitment);
	void registImg(RecruitmentImg img);
	Integer recmNo();
	List<Recruitment> recList(int memberNo);
	List<RecruitmentImg> recImg(int recruitmentNo);
	Recruitment recDetail(int recruitmentNo);
}
