package com.spring.hobbylovey.lecture;

import lombok.Data;

/***
 * 호스트의 댓글 목록을 저장하는 객체 클래스
 * @author 2조
 *
 */
@Data
public class ReviewDTO {
	
	private String classSeq;
	private String hostSeq;
	private String classReviewSeq;
	private String title;
	private String classDate;
	private String nickname;
	private String content;
	private String regdate;
	private String score;
	
	
}
