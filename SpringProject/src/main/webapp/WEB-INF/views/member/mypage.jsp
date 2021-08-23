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
							class="fa fa-chevron-right"></i></a></span> <span>마이페이지 </span>
				</p>
				<h2 class="mb-0 bread">마이페이지</h2>
			</div>
		</div>
	</div>
</section>



<section class="ftco-section">
      <div class="container">
        <div class="row d-flex">
          <!-- 마이페이지 컨텐츠 내용 넣기 -->



          <div id="customer_info">


            <div class="CustomerInfo__Wrapper-wiqp5v-0 jersza">
              <div class="CustomerInfo__InfoWrapper-wiqp5v-1 fSUxZv">
                <div class="CustomerInfo__MetaData-wiqp5v-2 hYJTCm">
                  <div class="CustomerInfo__Name-wiqp5v-3 hLhGnd">
                    <a class="CustomerInfo__NameTextLink-wiqp5v-4 JiXdX" href="#!">아이디</a>
                    <a href="/more"><img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='59' height='20' viewBox='0 0 59 20'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Crect width='58' height='19' x='.5' y='.5' stroke='%23333' rx='9.5'/%3E %3Cpath fill='%23333' fill-rule='nonzero' d='M28.811 14.869V4.903h-1.133v3.531h-2.662v.935h2.662v5.5h1.133zm-6.985-2.431c.968 0 1.767-.022 2.398-.066.697-.051 1.375-.14 2.035-.264l-.11-.913c-.601.11-1.217.187-1.848.231-.55.037-1.258.059-2.123.066V6.751h3.377v-.924h-4.51v6.611h.781zm17.353 1.199v-.935H35.23V10.7h2.915V5.574h-1.122v1.672h-4.708V5.574h-1.122V10.7h2.904v2.002h-3.916v.935h8.998zm-2.156-3.85h-4.708V8.159h4.708v1.628zm10.973 5.06V4.914h-1.133v9.933h1.133zm-7.524-1.771c1.628-.792 2.82-1.815 3.575-3.069.352-.587.612-1.228.781-1.925.161-.653.242-1.36.242-2.123h-4.708v.924h3.542c-.103 1.166-.473 2.178-1.111 3.036-.667.887-1.643 1.639-2.926 2.255l.605.902z'/%3E %3Cpath fill='%23333' d='M14.3 6.002l1.522.879-.334 1.13c.174.23.314.483.416.751l1.11.266-.03 1.809-1.118.303c-.056.134-.121.267-.196.397-.075.13-.158.253-.247.368l.297 1.12-1.551.931-.785-.828c-.284.045-.573.051-.86.015l-.81.855-1.522-.879.334-1.13c-.175-.23-.314-.483-.416-.751L9 10.972l.03-1.809 1.119-.303c.055-.135.12-.267.195-.397.075-.13.158-.253.246-.368l-.296-1.12 1.551-.931.785.828c.284-.045.572-.051.859-.015l.812-.855zM13.008 9c-.552 0-1 .448-1 1s.448 1 1 1 1-.448 1-1-.448-1-1-1z'/%3E %3C/g%3E %3C/svg%3E" alt="더보기" class="CustomerInfo__MoreButton-wiqp5v-5 gqCwlj"></a>
                  </div>
                  <div class="CustomerInfo__AccountType-wiqp5v-6 louFxa">이메일 계정</div>
                </div>
                <label class="ImageProfile__Wrapper-i59a6p-0 bwVeRo">
                  <input type="file" accept=".jpg, .jpeg, .png">
                  <div class="Image__Wrapper-v97gyx-0 gDuKGF ImageProfile__StyledImage-i59a6p-3 khIEaS">
                    <div class="Ratio " style="display: block;">
                      <div class="Ratio-ratio " style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
                        <div class="Ratio-content " style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
                          <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFkAAABZCAMAAABi1XidAAAAUVBMVEVHcEzz9Pby9Pb2+/vy8/f09/jq6/L////y9Pfz9ffy9ffz9Pfy8/fz9Pby9Pfy9Pby9Pfz9Pfy8/art8To6++wusi5ws7g5Orw8fTEzNbS1+C1FdKWAAAAEnRSTlMA5bIa8jsuC1GOZLnZzJ7Kt9TwOxZLAAADVklEQVRYw8VZ25arMAhNrdZqb1MgQPL/H3oe6kzb0ZBUJ+vwahfFLWxg41ze9t04NJfzroV2d740w9jt3Xbrj8Md5nYfjv02t1+Qtq/Vzg/XFmxrr4cVfrsGSqzpPo33BKV2+iTufoBPbCjG+7iDz2x3rBFwedj7G6yxW7Z4uhbWWZtJkqPCWlMT7BG22FjLseH6CFstAUinmz3r4mfct7Dd2oXk62/wF3abl8wAf2PD33+9xFfssyREEhk5CmXpqf8EC43B48N8iPoBHgf7t5ER0XMIgT0icrR//toKrA6iGhB9kEekKsEjBjPs00uNmAAzYnhFlwIim3A/66WxHXv59RbibddNCco6dzy51gKkr1ZSLDgGAPFofcbrlMsGYRAmPEREA4+2z5ZfSL41Y8gWopFy5FESjwQ9ZRKvt0okGbIqm0j3WTDCqmcPOAYz5ST5UMzEG5xzdxNmMjxbQN+d24OZc7TuIcDe5AyywjJfCKCzZgzd4nk0OX+L58HiuU0xN+5SKeaLO1eK+ex2lWLeubZSzK2DSpUCVsyg3uQNr2bMO7sJxhUMO+F8Nkcj5ORDm5/hbOYzSBpLQgMpALiYswZoutsFGwxoMrNiTOUd2WMBwJDZp1JBay5kGO2ZDkCWB46YQRmgM3vKA8+FIUm82V4fPcXqgxMes+mQOIcF3AtWH5oNnsRmc/3p3dndRzzyKyDCy1PkbN7oocC1fy4n0Rc4ht45576yP2NEZFEAUGFEo+R/tLyyVVA9MiJyiIERPdsk9zKL9rmFmxBJwrS1BckR83N+tmb+F76kGEKIlOHWt5k/tw3OPMVsNh9Kdqs5K2mWjZqyfXBh2YmZvOuKdtiFBU3VrpVTyd6tcXGpJH6tHWvvXiIPVZXIy4uwEiNyFFXNaSe/9A2VwOw9YjI0jR4RvWf+3vUT+sZ7IUaetAyOlFQQKPKkefDbvx/TOhIxog9RRMhMW1USkRj8m5YwpLUvYvSBAMrUO/2lSixoX996HZWw70JmUlKvmzRGDfl+sdh3giY1xsdXlGxTTrV4Seuizo3WUGTDHZDVlIlpXciPCXA0xfgsQaapNnOgOKwCAwDC4b/dJireUyregGrerSre2mreB2veNGveYWvejjfdu/8BI2K8ok7u95kAAAAASUVORK5CYII=" alt="프로필 이미지" class="Image__DefaultImage-v97gyx-3 hVNKgp">
                        </div>
                      </div>
                    </div>
                  </div>
                  <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='30' height='30' viewBox='0 0 30 30'%3E %3Cg fill='none' fill-rule='evenodd' transform='translate(3.68 3)'%3E %3Cellipse cx='11.52' cy='12' fill='%23E5E7EA' stroke='%23FFF' stroke-width='3' rx='13.02' ry='13.5'/%3E %3Cpath fill='%238E97A3' fill-rule='nonzero' d='M15.638 5.904l2.716 2.715-1.415 1.415-2.715-2.716 1.414-1.414zm-2.464 2.465l2.715 2.715-6.988 6.988-2.855.14.14-2.856 6.988-6.987z'/%3E %3C/g%3E %3C/svg%3E" alt="수정 아이콘" class="ImageProfile__Icon-i59a6p-4 isqgAm">
                </label>
              </div>
              <div class="CustomerInfo__MembershipCard-wiqp5v-7 iqShOY">
                <div class="CustomerInfoBox__Wrapper-sc-68qvux-0 gVkstK">
                  <div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp">
                    <a href="#!">
                      <div class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">스크랩<img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E" class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk"></div>0</a></div>
                    <div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp">
                      <a href="#!"><div class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">나의 문의글<img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E" class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk"></div>1</a></div>
                      <div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp"><a href="/hobbylovey/mypageReview.action"><div class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">후기<img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E" class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk"></div>0</a></div>
                      <div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp"><a href="/hobbylovey/mypageFeed.action"><div class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">피드<img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E" class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk"></div>0</a></div>
                      <div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp"><a href="/hobbylovey/mypageCourseDetail.action"><div class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">수강내역<img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E" class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk"></div>0</a></div>
                    </div>
                  </div>
                </div>


                <hr height="10" class="Hr-sc-4qqq6q-0 tQdWD">



                <div class="MyPage__NavContentWrapper-sc-8hrgc7-0 bgIsVr">
                  <div class="MyPage__RouteContainer-sc-8hrgc7-1 kjZmPT">
                    <div class="NavigationWrapper-z696u8-0 fBjXys">
                      <a href="#!"><button width="100%" height="60px" font-size="14px" font-weight="bold" class="Button-bqxlp0-0 NavigationButton__StyledButton-sc-121z7og-0 fDdvEO"><div>사용가능<span class="TabNavigation__Count-e8ysba-0 gAjsN">0</span></div></button></a>
                      <a href="#!"><button width="100%" height="60px" font-size="14px" font-weight="300" class="Button-bqxlp0-0 NavigationButton__StyledButton-sc-121z7og-0 jwuGaR"><div>예약확정<span class="TabNavigation__Count-e8ysba-0 gAjsN">0</span></div></button></a>
                      <a href="#!"><button width="100%" height="60px" font-size="14px" font-weight="300" class="Button-bqxlp0-0 NavigationButton__StyledButton-sc-121z7og-0 jwuGaR"><div>신청 내역<span class="TabNavigation__Count-e8ysba-0 gAjsN"></span></div></button></a>
                    </div>
                    <div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX" style="opacity: 1; display: block;">


                      <div class="classList">
                        <table class="table table-bordered table-mypage">
                        
                          <tr>
                            <th>신청일자</th>
                            <th>클래스</th>
                            <th>수량</th>
                            <th>결제금액</th>
                            <th>상태</th> <!-- 클래스 수강 완료 > 리뷰작성 버튼 활성화 / 리뷰작성 > 리뷰작성완료 텍스트 띄우기 -->
                          </tr>
                          
                          <tr>
                            <td>
                              <span>2021-08-21</span>
                              <br>
                              <a href="#!">상세보기</a>
                            </td>
                            <td>
                              <div class="mypage-classbox">
                                <a href="#!"><img src="/hobbylovey/resources/images/sample4.jpg" alt="KPOP댄스 정복하기"></a>
                                <div class="classbox-text">
                                  <a href="#!">
                                    <span class="classbox-host">호스트 이름</span>
                                    <span class="classbox-class">KPOP 댄스 정복하기</span>
                                    <span class="classbox-option">옵션명</span>
                                  </a>
                                </div>

                              </div>
                            </td>
                            <td>1</td>
                            <td>30,000</td>
                            <td>
                              <strong>결제완료</strong>
                              <br>
                              <button type="button" class="btn btn-dark">리뷰작성</button>
                            </td>
                          </tr>
                        </table>
                          

                      </div>
                    </div>
                  </div>
                </div>
          

          
        </div>
      </div>
    </section>	





