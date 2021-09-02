package com.spring.hobbylovey.notice;

import lombok.Data;

@Data
public class NoticeDTO {
	
	private String noticeSeq;
	private String title;
	private String content;
	private String regdate;
	private String category;

}
