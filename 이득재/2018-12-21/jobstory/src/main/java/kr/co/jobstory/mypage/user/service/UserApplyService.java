package kr.co.jobstory.mypage.user.service;

import java.util.List;
import java.util.Map;

import kr.co.jobstory.repository.domain.Apply;
import kr.co.jobstory.repository.domain.Scrap;

public interface UserApplyService {
	List<Apply> apply(int memberNo);
	void applyDelete(int applyNo);
}
