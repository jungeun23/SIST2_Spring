package com.spring.hobbylovey.lecture;

import lombok.Data;

/**
 * 한 클래스의 리뷰목록 데이터를 담는 클래스
 * @author 이미현
 *
 */
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
