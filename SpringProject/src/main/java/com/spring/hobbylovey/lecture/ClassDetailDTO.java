package com.spring.hobbylovey.lecture;

import lombok.Data;


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
