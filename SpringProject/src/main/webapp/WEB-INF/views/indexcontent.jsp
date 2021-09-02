<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<div class="hero-wrap"
		style="background-image: url('resources/images/sample4.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center"
				style="flex-direction: column;">
				<div class="col-md-8 ftco-animate d-flex align-items-center">
					<div class="text w-100 text-center">
						<h1 class="mb-4">
							원데이 <span>클래스</span> for Good <span>Moments</span>.
						</h1>
					</div>
				</div>
			</div>
		</div>
	</div>



	

	<section class="ftco-section ftco-no-pb">
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-md-4 ">
					<div class="sort w-100 text-center ftco-animate">
						<div class="img" onclick="location.href='/hobbylovey/class/list.action?categoryBig=스포츠';"
							style="background-image: url('resources/images/sport.svg');"></div>
						<h3>스포츠</h3>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 ">
					<div class="sort w-100 text-center ftco-animate">
						<div class="img" onclick="location.href='/hobbylovey/class/list.action?categoryBig=음악';"
							style="background-image: url('resources/images/music.svg');"></div>
						<h3>음악</h3>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 ">
					<div class="sort w-100 text-center ftco-animate">
						<div class="img" onclick="location.href='/hobbylovey/class/list.action?categoryBig=드로잉';"
							style="background-image: url('resources/images/drawing.svg');"></div>
						<h3>드로잉</h3>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 ">
					<div class="sort w-100 text-center ftco-animate">
						<div class="img" onclick="location.href='/hobbylovey/class/list.action?categoryBig=쿠킹';"
							style="background-image: url('resources/images/cooking.svg');"></div>
						<h3>쿠킹</h3>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 ">
					<div class="sort w-100 text-center ftco-animate">
						<div class="img" onclick="location.href='/hobbylovey/class/list.action?categoryBig=체험';"
							style="background-image: url('resources/images/play.svg');"></div>
						<h3>체험</h3>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 ">
					<div class="sort w-100 text-center ftco-animate">
						<div class="img" onclick="location.href='/hobbylovey/class/list.action?categoryBig=핸드메이드';"
							style="background-image: url('resources/images/handmade.svg');"></div>
						<h3>핸드메이드</h3>
					</div>
				</div>

			</div>
		</div>
	</section>
	
	

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center pb-5">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">Our Delightful offerings</span>
					<h2>인기 클래스</h2>
				</div>
			</div>
			<div class="row">
				<c:forEach items="${list}" var="dto">
               <div class="col-md-3 d-flex">
                  <div class="product ">
                     <div class="img d-flex align-items-center justify-content-center"
                        style="background-image: url('resources/images/classimage/${dto.classImage}');">
                        <div class="desc">
                           <p class="meta-prod d-flex">
                              <a href="#"
                                 class="d-flex align-items-center justify-content-center"><span
                                 class="flaticon-heart"></span></a> <a
                                 href="/hobbylovey/class/detail.action?classSeq=${dto.classSeq}"
                                 class="d-flex align-items-center justify-content-center"><span
                                 class="flaticon-visibility"></span></a>
                           </p>
                        </div>
                     </div>
                     <div class="text text-center">
                        <!-- <span class="sale">신규</span>  -->
<%--                      <span class="list-rate">
                           <img class="list-star" src="../resources/images/bxs-star-orange.svg">
                           ${dto.score}
                        </span> --%>
                        <h2>${dto.title}</h2>
                        <p class="mb-0">
                           <span class="price">${dto.price}원</span> 
                        </p>
                     </div>
                  </div>
               </div>
               </c:forEach>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-4">
					<a href="product.action" class="btn btn-primary d-block">전체 보기 <span class="fa fa-long-arrow-right"></span>
					</a>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section testimony-section img"
		style="background-image: url('resources/images/sample1.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div
					class="col-md-7 text-center heading-section heading-section-white ftco-animate">
					<span class="subheading">5분의 랜선 클래스 경험을 소개합니다.</span>
					<h2 class="mb-3">이 달의 우수 후기</h2>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="col-md-12">
					<div class="carousel-testimony owl-carousel ftco-owl">
						<div class="item">
							<div class="testimony-wrap py-4">
								<div
									class="icon d-flex align-items-center justify-content-center">
									<span class="fa fa-quote-left">
								</div>
								<div class="text">
									<p class="mb-4">쌤 수업 두번째로 들었는데 역시나 또 시간가는줄 모르게 재밌게 배우고 왔어요~! 세심하고 꼼꼼하게 가르쳐주시는 것 뿐만 아니라 수강생들의 자존감 부스터!! 까지 해주시면서 열정적으로 가르쳐주셔서 너무 즐거웠어요~!</p>
									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url('https://k.kakaocdn.net/dn/bZkJ4J/btq4Xg6eK5n/ZcxCsK6ZDhOQYOIQ5bq2Gk/img_110x110.jpg')"></div>
										<div class="pl-3">
											<p class="name">심심한너구리</p>
											<span class="position">최상급 프랑스 향료로 나만의 향수 만들기 (예약 가능)</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap py-4">
								<div
									class="icon d-flex align-items-center justify-content-center">
									<span class="fa fa-quote-left">
								</div>
								<div class="text">
									<p class="mb-4">처음이라 많이 부족했는데 하나하나 친절하게 알려주셔서 너무 재밌게 배웠어요!! 못하면 어쩌지랑 생각보다 어떻게 하면 더 나은자세가 될 수 있을지 가르쳐주셔서 많이 배웠습니다😊 폴댄스 강습받으실 분들 선생님께 꼭 배우세요〰️〰️!! 완전추천해요!</p>
									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url('https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_48/f7sklbho2tyhpqgevjnj')"></div>
										<div class="pl-3">
											<p class="name">임자연</p>
											<span class="position"></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap py-4">
								<div
									class="icon d-flex align-items-center justify-content-center">
									<span class="fa fa-quote-left">
								</div>
								<div class="text">
									<p class="mb-4">진짜 진짜 너무 재밌고 좋았어요ㅠㅠ<br> 쌤도 너무 좋으시고 영상도 찍어주시고 운동도 되구요!<br>
									 대만족하고 갑니다ㅠㅠ 또 신청할거에요!<br><br><br></p>
									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url('https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_48/ppzlrzypqfclpn25v0av')"></div>
										<div class="pl-3">
											<p class="name">달씨</p>
											<span class="position"></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap py-4">
								<div
									class="icon d-flex align-items-center justify-content-center">
									<span class="fa fa-quote-left">
								</div>
								<div class="text">
									<p class="mb-4">폴댄스 배우고 싶어서 학원도 갔었는데 
사람이 많으니까 부담스럽기도 하고 초보인데 혼자하려니까 괜히 힘만들고 해서 포기했었어요ㅜㅠ
그러다 친구가 소수진행으로 하는 것 알아보다가 우연히 찾아서 마지막으로 다시 도전해보자 하면서 신청했어요!! </p>
									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url('https://k.kakaocdn.net/dn/c3ElIp/btqEv6bevZy/7vBzdKgJulNG7F0psBMtX1/p1.jpg')"></div>
										<div class="pl-3">
											<p class="name">mermaid_som</p>
											<span class="position"></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap py-4">
								<div
									class="icon d-flex align-items-center justify-content-center">
									<span class="fa fa-quote-left">
								</div>
								<div class="text">
									<p class="mb-4">근육도 별로 없고 평소 운동 신경도 좋지 않아서 
시작해보기 전에는 제가 폴에 매달릴 수나 있으려나 싶었는데 선생님께서 하나하나 친절히 알려주셔서 폴에 매달릴 수도 있고 비록 엉성하지만 자세도 할 수 있었어요 : ) 

</p>
									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url('http://k.kakaocdn.net/dn/dgA0bN/btqoIcqo1tv/ft4KGKM8c1Kvbk8sTXbh91/profile_110x110c.jpg')"></div>
										<div class="pl-3">
											<p class="name">이유빈</p>
											<span class="position"></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div style="margin: 100px 0px"></div>


	