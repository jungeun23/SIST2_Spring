package com.spring.hobbylovey.mypage;

import lombok.Data;

@Data
public class MypageDTO {
	
	//tblUser
	private String userSeq;
	private String name;
	private String nickName;
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
	
	//tblHost
	private String hostSeq;
	
	//tblSignupClass
	private String signupSeq;
	private String classOptionSeq;
	private String regdate;
	
	//tblClassOption
	private String classSeq;
	private String classDate;
	private String classOption;
	private String price;
	private String personnel;
	
	//tblClass
	private String title;
	private String content;
	private String categorybig;
	private String categorysmall;
	private String location;
	private String latitude;
	private String longitude;
	
	//tblClassReview
	private String classReviewSeq;
	private String score;
	private String recommend;
	
	//tblReviewImage
	private String reviewImageSeq;
	private String reviewImage;
	
	//tblClassImage
	private String classImageSeq;
	private String classImage;

	//tblClassRecommend
	private String recommendSeq;
	
	//tblClassScrap
	private String classScrapSeq;
	
	//tblHostScrap
	private String hostScrapSeq;
	
}
