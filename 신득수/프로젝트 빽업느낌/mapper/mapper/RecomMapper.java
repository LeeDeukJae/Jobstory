package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.interviewRecom;

public interface RecomMapper {
	
	
	// 댓글 수 확인
	int commentCount(int no);
	
	// 답변선택하기
	void selectAnswerList(int no);
	void selectAnswerComment(int no);
	// 채택답변존재여부 확인
	int answerCount(int no);
	
	//추천여부 확인 0 or 1
	int recomExist(interviewRecom recom);
	// 추천수
	int recomCount(int no);
	int insertRecom(interviewRecom recom);
	int deleteRecom(interviewRecom recom);
}
