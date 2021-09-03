package com.spring.hobbylovey.lecture;

import lombok.Data;

/**
 * 클래스 옵션 데이터를 저장하는 클래스
 * @author 김정은
 *
 */
@Data
public class ClassOptionDTO {

	private String classOptionSeq;
	private String classSeq;
	private String classdate;
	private String classoption;
	private String price;
	private String personnel;
	private String deadline;
	private String signup;
	private String userSeq;
}
