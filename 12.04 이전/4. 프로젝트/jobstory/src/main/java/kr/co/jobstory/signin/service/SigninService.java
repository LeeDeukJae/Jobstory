package kr.co.jobstory.signin.service;

import kr.co.jobstory.repository.domain.User;

public interface SigninService {
	void kakao(User user);
	String selectId(String id);
	User selectUser(User user);
}
