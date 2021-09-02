package com.spring.hobbylovey.lecture;

import lombok.Data;

@Data
public class ClassListDTO {

	private String classSeq;
	private String title;
	private String categoryBig;
	private String categorySmall;
	private String latitude;
	private String longitude;
	private String price;
	private String classImage;
	private String recommend;
	//private String score;
	private String filter;
	
	private int rnum =0;
	private int pageNumber = 0;
	private int nowpage = 0;
	private int pageSize = 12;
	private int totalCount = 0;
	private int totalPage = 0;
	private int blockSize = 5;
	
}
