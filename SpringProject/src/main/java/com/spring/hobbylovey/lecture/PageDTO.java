package com.spring.hobbylovey.lecture;

import lombok.Data;

@Data
public class PageDTO {

	private int nowpage = 0;
	private int totalCount = 0;
	private int pageSize = 12;
	private int totalPage = 0;
	private int begin = 0;
	private int end = 0;
	private int n = 0;
	private int loop = 0;
	private int blockSize = 5;
	
}
