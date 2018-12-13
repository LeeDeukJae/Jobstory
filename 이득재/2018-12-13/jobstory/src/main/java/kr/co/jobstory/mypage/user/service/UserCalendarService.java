package kr.co.jobstory.mypage.user.service;


import java.util.List;

import kr.co.jobstory.repository.domain.UserCalendar;

public interface UserCalendarService {

	List<UserCalendar> selectCalMemo(UserCalendar userCalendar);
	void insertMemo(UserCalendar userCalendar);
}
