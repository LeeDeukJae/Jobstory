package kr.co.jobstory.mypage.user.service;


import java.util.List;
import java.util.Map;

import kr.co.jobstory.repository.domain.UserCalendar;

public interface UserCalendarService {

	Map<String, Object> selectCalMemo(UserCalendar userCalendar);
	void insertMemo(UserCalendar userCalendar);
	int deleteMemo(int memoNo);
	List<UserCalendar> selectSaveCheck(UserCalendar userCalendar);
}
