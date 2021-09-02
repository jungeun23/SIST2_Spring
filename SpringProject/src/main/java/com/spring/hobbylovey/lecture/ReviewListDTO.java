package com.spring.hobbylovey.lecture;

import lombok.Data;

@Data
public class ReviewListDTO {

	private String classReviewSeq;
	private String signupSeq;
	private String content;
	private String regdate;
	private int score;
	private int recommend;
	
	private String name;
	private String classOption;
	private String reviewImage;
	
}
