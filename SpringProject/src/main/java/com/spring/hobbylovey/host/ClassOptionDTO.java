package com.spring.hobbylovey.host;

import lombok.Data;

/***
 * 클래스 옵션을 추가하기 위한 클래스
 * @author 2조
 *
 */
@Data
public class ClassOptionDTO {

	
	private String classOptionSeq;
	private String classSeq;
	private String classDate;
	private String[] classOption;
	private String[] price;
	private String personnel;
	
	
}
