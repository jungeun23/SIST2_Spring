<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<br>

	<main id="find_id_pw_main">

		<div class="find_title">
			<h3>아이디 찾기<img style="width: 30px; margin-left: 10px;" src="/images/person-circle.svg" alt=""></h3>
		</div>
		<form action="#!" method="POST" id="id_find_form">

			<div class="id_find_box">
				<span class="find_info">이름</span>
				<input type="text" class="form-control" name="name" autocomplete="off">
			</div>

			<div class="id_find_box">
				<span class="find_info">이메일</span>
				<input type="text" class="form-control" name="email" autocomplete="off">
			</div>

			<div class="id_find_box">
				<span class="find_info">전화번호</span>
				<input type="text" class="form-control" name="tel" autocomplete="off">
			</div>

			<div>
			<input type="submit" value="아이디 찾기" class="btn btn-primary">
		</div>
		</form>


		<div class="find_title">
			<h3>비밀번호 찾기<img style="width: 50px; margin-left: 10px;" src="/images/key.svg" alt=""></h3>
		</div>
		<form action="#!" method="POST" id="pw_find_form">
			<div class="pw_find_box">
				<span class="find_info">아이디</span>
				<input type="text" class="form-control" name="id" autocomplete="off">
			</div>

			<div class="pw_find_box">
				<span class="find_info">이메일</span>
				<input type="text" class="form-control">
			</div>
			<input type="submit" value="비밀번호 찾기" class="btn btn-primary" name="pw" autocomplete="off">
			
		</form>
		

	</main>