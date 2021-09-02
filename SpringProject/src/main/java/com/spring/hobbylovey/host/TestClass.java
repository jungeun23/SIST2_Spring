package com.spring.hobbylovey.host;

import java.util.Calendar;

public class TestClass {

	public static void main(String[] args) {
		
		
		Calendar cal = Calendar.getInstance();
		int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		cal.set(Calendar.DATE, 1);
		String startDate= String.format("%tF",cal);
		cal.set(Calendar.DATE, lastDay);
		String endDate =String.format("%tF",cal);
		
		System.out.println(startDate);
		System.out.println(endDate);
		System.out.println(0/100);
		
		String s=String.format("%.1f", (double)50);
		System.out.println(s);
		
		System.out.printf("%,d",100000000);
	}

}
