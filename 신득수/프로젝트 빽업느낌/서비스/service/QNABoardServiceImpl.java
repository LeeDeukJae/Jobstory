package kr.co.jobstory.mypage.user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.interviewRecom;
import kr.co.jobstory.repository.mapper.RecomMapper;

@Service
public class QNABoardServiceImpl  implements QNABoardService{

    @Autowired
    RecomMapper mapper;
    
	@Override
	public int recomExist(interviewRecom recom) {
		return mapper.recomExist(recom);
	}
	@Override
	public int insertRecom(interviewRecom recom) {
		return mapper.insertRecom(recom);
		
	}
	@Override
	public int deleteRecom(interviewRecom recom) {
		return mapper.deleteRecom(recom);
	}
	@Override
	public int recomCount(int no) {
		return mapper.recomCount(no);
	}


}
