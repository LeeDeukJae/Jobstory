package kr.co.jobstory.mypage.user.service;

import java.util.Map;

import kr.co.jobstory.repository.domain.interviewRecom;



public interface QNABoardService {

	// 추천여부 확인
	int recomExist(interviewRecom recom);
	// 추천수 카운트
	int recomCount(int no);
	// 추천
	int insertRecom(interviewRecom recom);
	int deleteRecom(interviewRecom recom);

}
