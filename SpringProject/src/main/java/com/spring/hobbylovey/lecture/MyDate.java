package com.spring.hobbylovey.lecture;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.stereotype.Service;

@Service
public class MyDate {

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
