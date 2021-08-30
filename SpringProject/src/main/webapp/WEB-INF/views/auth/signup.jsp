<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<main id="signup_main">

	<div id="signup_title">
		<h3>회원가입</h3>
	</div>

	<form action="/hobbylovey/auth/signupok.action" id="signup_form" method="POST">

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
				style="position: absolute; right: -100px; top: 30%; height: 40px;">
			<span id="idcheck_message_box"></span> <span id="idlength_message"></span>
		</div>


		<div class="input_subject">비밀번호</div>
		<div class="signup_box">
			<input class="form-control" type="password" name="pw" id="pw"
				autocomplete="off"> <span class="warning_message"
				id="pwlength_message"></span>
		</div>

		<div class="input_subject">비밀번호확인</div>
		<div class="signup_box">
			<input class="form-control" type="password" name="pwcheck"
				id="pwcheck" autocomplete="off">
				<span class="warning_message" id="pwcheck_message"></span>
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
				autocomplete="off">
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
				type="password" name="gender" id="ssn" minlength="1" maxlength="1"><span
				class="text_span" style="letter-spacing: 8px;">******</span>
		</div>

		<div>
			<input id="signup_submit" type="button" class="btn btn-primary"
				value="회원가입">
		</div>

		<input type="hidden" id="email" name="email">
	</form>
</main>

<script>
	  $('#email_sel').change(function() {
			$("#email_sel option:selected").each(function() {
				if ($(this).val() == '1') {
					//직접입력일 경우
					$("#email2").val('');
					//값 초기화 
				} else {
					//직접입력이 아닐경우
					$("#email2").val($(this).text());
					//선택값 입력 
				}
			});
		});

		$('#email2').keyup(function(){

			if($("#email_sel option:selected").val()!= $(this).val()){
				
				$("#email_sel option").each(function(){
					$(this).attr("selected",false);
					if($(this).val() == "1"){

						$(this).attr("selected",true);
					}

				})
			}

		});


		$('#auth_1').click(function(){

			$('#authRadio_1').attr('checked',true);
			$('#authRadio_2').attr('checked',false);
			
			$('#auth_2').removeClass('chose');
			$(this).addClass('chose');
		});

		$('#auth_2').click(function(){

			$('#authRadio_1').attr('checked',false);
			$('#authRadio_2').attr('checked',true);
			$('#auth_1').removeClass('chose');
			$(this).addClass('chose');
		});

		$('#auth_'+$('input[id*=authRadio]:checked').val()).click();
		
		var idcheck=-1;
		var pwcheck=-1;
		
		$('#id').keyup(function(){
			
			if(idcheck==2){
				idcheck=-1;
			}
			
			if(!/^[a-zA-Z0-9]{5,20}$/.test($(this).val())){
				$('#idlength_message').text('5~20자의 영문 대·소문자, 숫자만 사용 가능합니다.');
				$('#idlength_message').removeClass('success_message');
				$('#idlength_message').addClass('warning_message');
			}else{
				$('#idlength_message').text('');
				$('#idlength_message').removeClass('warning_message');
				$('#idlength_message').addClass('success_message');
				idcheck=0;
			}
			
			
		});
		
		$('#pw').keyup(function(){
			
			if(pwcheck==1){
				pwcheck=-1;
				$('#pwcheck_message').text('비밀번호가 다릅니다.');
			}
			
			if($('#pwcheck').val() == $(this).val()){
				$('#pwcheck_message').text('');
				pwcheck=1;
			}
			
			if(!/^[a-zA-Z0-9~!@#$%^&*]{5,15}$/.test($(this).val())){
			
				$('#pwlength_message').text('5~15자이내 영문 대·소문자, 숫자, 특수문자를 사용하세요.');
			}else{
				$('#pwlength_message').text('');
			}
			
		});
		
		$('#pwcheck').keyup(function(){
			
			if($('#pw').val() != $(this).val()){
				$('#pwcheck_message').text('비밀번호가 다릅니다.');
			}else{
				$('#pwcheck_message').text('');
				pwcheck=1;
			}
			
		});
		
		$('#idcheck').click(function(){

			if(idcheck==0){
				$.ajax({
					type:'POST',
					url: '/hobbylovey/auth/idcheck.action',
					data: 'id='+$('#id').val()+'&auth='+$('input[name=auth]:checked').val(),
					dataType: 'json',
					success: function(result){
						
						if(result==1){
							$('#idcheck_message_box').html('<span class=\"warning_message\">이미 사용중인 아이디입니다.</span>');
							idcheck=1;
						}else{
							$('#idcheck_message_box').html('<span class=\"success_message\">사용가능한 아이디입니다.</span>');
							idcheck=2;
						}
						
						
					},
					error: function(a,b,c){
						console.log(a,b,c);
					}
					
				});
			}
		});
		
		
		$('#signup_submit').click(function(){
			
			if($('#id').val()==''){
				$('#id').focus();
			}else if($('#pw').val()==''){
				$('#pw').focus();
			}else if($('#pwcheck').val()==''){
				$('#pwcheck').focus();
			}else if($('#name').val()==''){
				$('#name').focus();
			}else if($('#nickname').val()==''){
				$('#nickname').focus();
			}else if($('#email1').val()==''){
				$('#email1').focus();
			}else if($('#email2').val()==''){
				$('#email2').focus();
			}else if($('#tel').val()==''){
				$('#tel').focus();
			}else if($('#address').val()==''){
				$('#address').focus();
			}else if($('#birth').val()==''){
				$('#birth').focus();
			}else if($('#ssn').val()==''){
				$('#ssn').focus();
			}else if(idcheck!=2){
				alert('아이디를 확인해주세요.');
				$('#id').focus();
			}else if(pwcheck!=1){
				alert('비밀번호를 확인해주세요.');
				$('#pw').focus();
			}else{
				$('#email').val($('#email1').val()+'@'+$('#email2').val());
				alert('회원가입이 완료되었습니다.');
				this.form.submit();
			}
			
			
		});
		
		
		

  </script>