package com.spring.hobbylovey.mypage;

import lombok.Data;

@Data
public class SignUpClassDTO {

	private String signupSeq;
	private String regdate;
	private String classOptionSeq;
	private String userSeq;
	
	private String classSeq;
	private String classDate;
	private String classOption;
	private String price;
	private String personnel;
	
	private String hostSeq; 
	private String title;
	private String content;
	private String categoryBig;
	private String categorySmall;
	private String location;
	private String latitude;
	private String longitude;
	
	private String name; //호스트이름
	
	private String classImage; //클래스 썸네일 이미지
	
	
}
