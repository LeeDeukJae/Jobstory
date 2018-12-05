package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.RecruitmentImg;

public interface CompanyMapper {
	void regist(Recruitment recruitment);	
	void registImg(RecruitmentImg img);
    Integer recmNo();
    List<Recruitment> recList(int memberNo);
}
