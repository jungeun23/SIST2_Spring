<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<main id="signup_main">

	<div id="signup_title">
		<h3>회원가입</h3>
	</div>

	<form action="#" id="signup_form" method="POST">

		<div id="auth_choice">
			<input type="radio" name="auth" id="authRadio_1" value="1" checked>
			<input type="radio" name="auth" id="authRadio_2" value="2">
			<div id="auth_1">회원</div>
			<div id="auth_2">호스트</div>
		</div>


		<div class="signup_box" style="position: relative;">
			<div class="input_subject">아이디</div>
			<input class="form-control" type="text" name="id" id="id"
				autocomplete="off"> <input id="idcheck"
				class="btn btn-outline-dark" type="button" value="중복확인"
				style="position: absolute; right: -100px; top: 22%; height: 40px;">
			<span class="warning_messege" id="idcheck_messege">이미 사용중이거나
				탈퇴한 아이디입니다.</span> <span class="warning_messege" id="idlength_messege">5~20자의
				영문 소문자, 숫자만 사용 가능합니다.</span>
		</div>


		<div class="input_subject">비밀번호</div>
		<div class="signup_box">
			<input class="form-control" type="password" name="pw" id="pw"
				autocomplete="off"> <span class="warning_messege"
				id="pwlength_messege">5~15자이내 영문 대·소문자, 숫자, 특수문자를 사용하세요.</span>
		</div>

		<div class="input_subject">비밀번호확인</div>
		<div class="signup_box">
			<input class="form-control" type="password" name="pwcheck"
				id="pwcheck" autocomplete="off">
		</div>

		<div class="input_subject">이름</div>
		<div class="signup_box">
			<input class="form-control" type="text" name="name" id="name"
				maxlength="5" autocomplete="off">
		</div>

		<div class="input_subject">닉네임</div>
		<div class="signup_box">
			<input class="form-control" type="text" name="nickname" id="nickname"
				maxlength="10" autocomplete="off">
		</div>

		<div class="input_subject">이메일</div>
		<div class="signup_box email_box">

			<input name="email1" id="email1" type="text" class="form-control"
				required pattern="^[a-zA-Z]{1}[a-zA-Z0-9]{1,15}" autocomplete="off">

			<span class="text_span" style="margin: 5px;">@</span> <input
				type="text" class="form-control" id="email2" name="email2" required
				pattern="^[a-zA-Z0-9]+(.com|.net)$" autocomplete="off"> <select
				name="email_sel" id="email_sel">
				<option value="1">직접입력</option>
				<option value="daum.net">daum.net</option>
				<option value="gmail.com">gmail.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="nate.com">nate.com</option>
				<option value="naver.com">naver.com</option>
			</select>
		</div>

		<div class="input_subject">전화번호</div>
		<div class="signup_box">
			<input class="form-control" type="text" name="tel" id="tel"
				autocomplete="off"> <span class="warning_messege">ex)
				010-1234-5678</span>
		</div>

		<div class="input_subject">주소</div>
		<div class="signup_box">
			<input class="form-control" type="text" name="address" id="address"
				autocomplete="off">
		</div>



		<div class="input_subject">주민등록번호</div>
		<div class="signup_box birth_box">
			<input class="form-control" type="text" name="birth" id="birth"
				minlength="6" maxlength="6" autocomplete="off"> <span
				class="text_span">-</span> <input class="form-control"
				type="password" name="ssn" id="ssn" minlength="1" maxlength="1"><span
				class="text_span" style="letter-spacing: 8px;">******</span>
		</div>

		<div>
			<input id="signup_submit" type="button" class="btn btn-primary"
				value="회원가입">
		</div>

		<input type="hidden" id="email">
	</form>
</main>