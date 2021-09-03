package com.spring.hobbylovey.lecture;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
/**
 * 날짜 형식 변환을 처리하는 클래스
 * @author 김정은
 *
 */
@Component
public class MyDate {

	/**
	 * 수강 신청 날짜를 형식에 맞게 변환하는 메소드
	 * @param date (db의 date 형식으로 저장된 날짜)
	 * @return String (변환된 날짜)
	 */
	public String getDate(String date) {
		
		
		try {
			
			//System.out.println(date);
			
			SimpleDateFormat dtFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			SimpleDateFormat newDtFormat = new SimpleDateFormat("yyyy년 MM월 dd일(E요일) hh:mm");
			
			Date formatDate = dtFormat.parse(date);
			
			String newDate = newDtFormat.format(formatDate);
			//System.out.println(newDate);
			return newDate;
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}
	/**
	 * 수강 신청 마감 날짜를 형식에 맞게 변환하는 메소드
	 * @param date   date (db의 date 형식으로 저장된 날짜)
	 * @return   String (변환된 날짜)
	 */
	public String getDeadline(String date) {
		try {
			
			
			SimpleDateFormat dtFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			SimpleDateFormat newDtFormat = new SimpleDateFormat("MM월 dd일");
			
			Date formatDate = dtFormat.parse(date);
			
			Calendar cal = Calendar.getInstance();
			
			cal.setTime(formatDate);
			
			cal.add(Calendar.DATE, -1);
			
			String newDate = newDtFormat.format(cal.getTime());
			
			return newDate;
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
}
