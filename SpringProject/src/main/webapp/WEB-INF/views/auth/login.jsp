<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<main id="login_main">
	<div id="login_title">
		<h3>로그인</h3>
	</div>
	<form action="#" id="login_form" method="POST">
		<div class="login_box">
			<input class="form-control" type="text" name="id" id="id"
				placeholder="아이디">
		</div>
		<div class="login_box">
			<input class="form-control" type="password" name="pw" id="pw"
				placeholder="비밀번호">
		</div>
		<div id="search_id_pw">
			<a href="#!">비밀번호찾기</a> <a href="#!">아이디찾기</a>
		</div>
		<div>
			<input id="login_submit" type="button" class="btn btn-primary"
				value="로그인">
		</div>
	</form>

	<div>

		<h6 style="color: rgb(170, 170, 170); text-align: center; font-size: 16px;">다른방식으로
			로그인</h6>
		<div id="social_login_icon">
			<img src="/hobbylovey/resources/images/naver.png" alt=""> <img src="/hobbylovey/resources/images/kakao.svg"
				alt=""> <img src="/hobbylovey/resources/images/facebook.svg" alt="">
		</div>
	</div>
</main>