package com.spring.hobbylovey.host;

import lombok.Data;

/***
 * 클래스 객체를 저장하기 위한 클래스
 * @author 2조
 *
 */
@Data
public class ClassDTO {

	//클래스
	private String classSeq;
	private String hostSeq;
	private String title;
	private String content;
	private String categoryBig;
	private String categorySmall;
	private String location;
	private String latitude;
	private String longitude;
	
	//클래스 이미지
	private String classImageSeq;
	private String classImage;
	
	//클래스 옵션
	private String classOptionSeq;
	private String classDate;
	private String classOption;
	private String price;
	private String personnel;

	
}
