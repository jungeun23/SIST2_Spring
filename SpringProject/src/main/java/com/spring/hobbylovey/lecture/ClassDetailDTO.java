package com.spring.hobbylovey.lecture;

import lombok.Data;

/**
 * 클래스 상세정보 DTO
 * @author 이미현
 *
 */
@Data
public class ClassDetailDTO {
	
	private String classSeq;
	private String hostSeq;
	private String title;
	private String content;
	private String categoryBig;
	private String categorySmall;
	private String location;
	private String latitude;
	private String longitude;
	
	private int price;
	
}
