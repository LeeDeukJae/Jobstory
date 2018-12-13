package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.Apply;
import kr.co.jobstory.repository.domain.CompReviewBoard;
import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.RecruitmentImg;

public interface CompanyMapper {
	void regist(Recruitment recruitment);	
	void registImg(RecruitmentImg img);
    Integer recmNo();
    List<Recruitment> recList(int memberNo);
    List<RecruitmentImg> recImg(int recruitmentNo);
    Recruitment recDetail(int recruitmentNo);
    Recruitment recUpdate(int recruitmentNo);
    void updateRec(Recruitment recruitment);
    void updateRecImg(RecruitmentImg img);
    List<RecruitmentImg> updateImgNo(int recruitmentNo);
    List<Apply> apply(int recruitmentNo);
    void applyDelete(int applyNo);
    List<CompReviewBoard> avg(String id);
}
