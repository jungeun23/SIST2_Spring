package com.spring.hobbylovey.host;

import lombok.Data;

/***
 * 호스트(자신)의 클래스 객체를 담기위한 클래스
 * @author 2조
 *
 */
@Data
public class MyClassListDTO {

	private String classSeq;
	private String hostSeq;
	private String title;
	private String content;
	private String categoryBig;
	private String categorySmall;
	private String location;
	private String latitude;
	private String longitude;
	private String classImage;
	
}
