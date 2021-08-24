<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('resources/images/sample4.jpg');"
	data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate mb-5 text-center">
				<p class="breadcrumbs mb-0">

					<!-- 페이지에 맞게 수정 필요  -->
					<span class="mr-2"><a href="index.html">Home <i
							class="fa fa-chevron-right"></i></a></span>마이페이지 <span><i
						class="fa fa-chevron-right"></i> 비밀번호 변경</span>
				</p>
				<h2 class="mb-0 bread">비밀번호 변경</h2>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section">
  <div class="container">
    <div class="row d-flex">
      <!-- 마이페이지 컨텐츠 내용 넣기 -->
      
      
      <div id="customer_info">
      	<form method="POST" action="#!">

	        <table class="table table-infoModify">
	          <tr>
	            <th>현재 비밀번호</th>
	            <td>
	              <input type="password" name="currentPw" id="currentPw" class="form-control input-short">
	            </td>
	          </tr>
	          <tr>
	            <th>새 비밀번호</th>
	            <td>
	              <input type="password" name="newPw" id="newPw" class="form-control input-short">
	              <span>5~15자이내 영문 대·소문자, 숫자, 특수문자를 사용하세요.</span>
	            </td>
	          </tr>
	          <tr>
	            <th>새 비밀번호 확인</th>
	            <td>
	              <input type="password" name="newPwConfirm" id="newPwConfirm" class="form-control input-short">
	            </td>
	          </tr>
	          
	        </table>
	
	        <div class="modify-btns">
	          <button type="submit" class="btn btn-dark">비밀번호 변경</button>
	          <button type="button" class="btn btn-light"
	            onclick="location.href='#!';">취소</button>
	        </div>
	
	      </form>
      </div>
           


      

      
    </div>
  </div>
</section>	
