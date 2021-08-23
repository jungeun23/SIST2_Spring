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
						class="fa fa-chevron-right"></i> 개인정보 수정</span>
				</p>
				<h2 class="mb-0 bread">개인정보 수정</h2>
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
                  <th>아이디</th>
                  <td>hong</td>
                </tr>
                <tr>
                  <th>비밀번호</th>
                  <td><button type="button" class="btn btn-outline-danger" onclick="location.href='#!';">변경</button></td>
                </tr>
                <tr>
                  <th>이름</th>
                  <td><input type="text" id="name" name="name" class="form-control input-short" value="홍길동" required></td>
                </tr>
                <tr>
                  <th>닉네임</th>
                  <td><input type="text" id="nick" name="nick" class="form-control input-short" value="홍홍홍" required></td>
                </tr>
                <tr>
                  <th>생년월일</th>
                  <td><input type="date" id="birth" name="birth" class="form-control input-short" required></td>
                </tr>
                <tr>
                  <th>성별</th>
                  <td>
                    <input type="radio" id="gender" name="gender" value="1" checked>
                    <label for="1">남자</label>
                    <input type="radio" id="gender" name="gender" value="2">
                    <label for="2">여자</label>
                  </td>
                </tr>
                <tr>
                  <th>이메일</th>
                  <td class="input-email">
                    <input type="text" id="email1" name="email1" class="form-control input-email" value="hong" required>
                    <span>@</span>
                    <input type="text" id="email2" name="email2" class="form-control" value="daum.net">
                    <select name="email3" id="email3" class="form-control">
                      <option value="daum.net" selected>daum.net</option>
                      <option value="gmail.com">gmail.com</option>
                      <option value="hanmail.net">hanmail.net</option>
                      <option value="nate.com">nate.com</option>
                      <option value="naver.com">naver.com</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <th>전화번호</th>
                  <td class="input-tel">
                    <select name="tel1" id="tel1" class="form-control">
                      <option value="010" selected>010</option>
                      <option value="011">011</option>
                      <option value="070">070</option>
                    </select>
                    <span>-</span>
                    <input type="text" id="tel2" name="tel2" class="form-control input-email" value="1234" required>
                    <span>-</span>
                    <input type="text" id="tel3" name="tel3" class="form-control input-email" value="5678" required>
                  </td>
                </tr>
                <tr>
                  <th>주소</th>
                  <td><input type="text" id="address" name="address" class="form-control input-short" value="서울시 강남구 한독빌딩" required></td>
                </tr>
              </table>

              <div class="modify-btns">
                <button type="submit" class="btn btn-dark">수정</button>
                <button type="button" class="btn btn-light"
                  onclick="location.href='#!';">취소</button>
              </div>

            </form>
          </div>


      

      
    </div>
  </div>
</section>	
