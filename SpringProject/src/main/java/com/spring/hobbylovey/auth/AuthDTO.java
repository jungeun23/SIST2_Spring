package com.spring.hobbylovey.auth;

import lombok.Data;

/***
 * 회원/호스트의 객체를 담는 클래스
 * @author 2조
 *
 */
@Data
public class AuthDTO {
	
	private String userSeq;
	private String name;
	private String nickname;
	private String birth;
	private String gender;
	private String id;
	private String email;
	private String pw;
	private String tel;
	private String point;
	private String address;
	private String auth;
	private String image;

}
