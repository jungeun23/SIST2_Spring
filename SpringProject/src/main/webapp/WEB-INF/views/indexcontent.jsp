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
				<div class="col-md-3 d-flex">
					<div class="product ftco-animate">
						<div class="img d-flex align-items-center justify-content-center"
							style="background-image: url('resources/images/prod-1.jpg');">
							<div class="desc">
								<p class="meta-prod d-flex">
									<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-heart"></span></a>
									<a href="/hobbylovey/class/detail.action" class="d-flex align-items-center justify-content-center"><span class="flaticon-visibility"></span></a>
								</p>
							</div>
						</div>
						<div class="text text-center">
							<span class="sale">신규</span>
							<span class="list-rate"><img class="list-star" src="resources/images/star.png"> 4.0</span>
							<h2>[1:1] 댄스 정복하기(예약 가능)</h2>
							<span class="price">50,000원</span> <span class="price price-sale">80,000원</span>
						</div>
					</div>	
				</div>
				
				<div class="col-md-3 d-flex">
					<div class="product ftco-animate">
						<div class="img d-flex align-items-center justify-content-center"
							style="background-image: url('resources/images/prod-2.jpg');">
							<div class="desc">
								<p class="meta-prod d-flex">
									<a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-shopping-bag"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-heart"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-visibility"></span></a>
								</p>
							</div>
						</div>
						<div class="text text-center">
							<span class="seller">Best Seller</span> <span class="category">Gin</span>
							<h2>Jim Beam Kentucky Straight</h2>
							<span class="price">$69.00</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="product ftco-animate">
						<div class="img d-flex align-items-center justify-content-center"
							style="background-image: url('resources/images/prod-3.jpg');">
							<div class="desc">
								<p class="meta-prod d-flex">
									<a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-shopping-bag"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-heart"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-visibility"></span></a>
								</p>
							</div>
						</div>
						<div class="text text-center">
							<span class="new">New Arrival</span> <span class="category">Rum</span>
							<h2>Citadelle</h2>
							<span class="price">$69.00</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="product ftco-animate">
						<div class="img d-flex align-items-center justify-content-center"
							style="background-image: url('resources/images/prod-4.jpg');">
							<div class="desc">
								<p class="meta-prod d-flex">
									<a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-shopping-bag"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-heart"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-visibility"></span></a>
								</p>
							</div>
						</div>
						<div class="text text-center">
							<span class="category">Rum</span>
							<h2>The Glenlivet</h2>
							<span class="price">$69.00</span>
						</div>
					</div>
				</div>

				<div class="col-md-3 d-flex">
					<div class="product ftco-animate">
						<div class="img d-flex align-items-center justify-content-center"
							style="background-image: url('resources/images/prod-5.jpg');">
							<div class="desc">
								<p class="meta-prod d-flex">
									<a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-shopping-bag"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-heart"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-visibility"></span></a>
								</p>
							</div>
						</div>
						<div class="text text-center">
							<span class="category">Whiskey</span>
							<h2>Black Label</h2>
							<span class="price">$69.00</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="product ftco-animate">
						<div class="img d-flex align-items-center justify-content-center"
							style="background-image: url('resources/images/prod-6.jpg');">
							<div class="desc">
								<p class="meta-prod d-flex">
									<a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-shopping-bag"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-heart"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-visibility"></span></a>
								</p>
							</div>
						</div>
						<div class="text text-center">
							<span class="category">Tequila</span>
							<h2>Macallan</h2>
							<span class="price">$69.00</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="product ftco-animate">
						<div class="img d-flex align-items-center justify-content-center"
							style="background-image: url('resources/images/prod-7.jpg');">
							<div class="desc">
								<p class="meta-prod d-flex">
									<a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-shopping-bag"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-heart"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-visibility"></span></a>
								</p>
							</div>
						</div>
						<div class="text text-center">
							<span class="category">Vodka</span>
							<h2>Old Monk</h2>
							<span class="price">$69.00</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="product ftco-animate">
						<div class="img d-flex align-items-center justify-content-center"
							style="background-image: url('resources/images/prod-8.jpg');">
							<div class="desc">
								<p class="meta-prod d-flex">
									<a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-shopping-bag"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-heart"></span></a> <a href="#"
										class="d-flex align-items-center justify-content-center"><span
										class="flaticon-visibility"></span></a>
								</p>
							</div>
						</div>
						<div class="text text-center">
							<span class="category">Whiskey</span>
							<h2>Jameson Irish Whiskey</h2>
							<span class="price">$69.00</span>
						</div>
					</div>
				</div>
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
									<p class="mb-4">선생님이 안전하고 재밌게 잘 가르쳐주셨어요
역시 혼자 못하겠더라구요 초보자에게 수업은 필수입니다.</p>
									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url('resources/images/person_1.jpg')"></div>
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
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url('resources/images/person_2.jpg')"></div>
										<div class="pl-3">
											<p class="name">Roger Scott</p>
											<span class="position">Marketing Manager</span>
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
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url('resources/images/person_3.jpg')"></div>
										<div class="pl-3">
											<p class="name">Roger Scott</p>
											<span class="position">Marketing Manager</span>
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
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url('resources/images/person_1.jpg')"></div>
										<div class="pl-3">
											<p class="name">Roger Scott</p>
											<span class="position">Marketing Manager</span>
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
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url('resources/images/person_2.jpg')"></div>
										<div class="pl-3">
											<p class="name">Roger Scott</p>
											<span class="position">Marketing Manager</span>
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



	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">Feed</span>
					<h2>최신 피드</h2>
				</div>
			</div>
			<div class="row d-flex">
				<div class="col-lg-6 d-flex align-items-stretch ftco-animate">
					<div class="blog-entry d-flex">
						<a href="blog-single.action" class="block-20 img"
							style="background-image: url('resources/images/image_1.jpg');">
						</a>
						<div class="text p-4 bg-light">
							<div class="meta">
								<p>
									<span class="fa fa-calendar"></span> 23 April 2020
								</p>
							</div>
							<h3 class="heading mb-3">
								<a href="#">The Recipe from a Winemaker’s Restaurent</a>
							</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia.</p>
							<a href="#" class="btn-custom">Continue <span
								class="fa fa-long-arrow-right"></span></a>

						</div>
					</div>
				</div>
				<div class="col-lg-6 d-flex align-items-stretch ftco-animate">
					<div class="blog-entry d-flex">
						<a href="blog-single.action" class="block-20 img"
							style="background-image: url('resources/images/image_2.jpg');">
						</a>
						<div class="text p-4 bg-light">
							<div class="meta">
								<p>
									<span class="fa fa-calendar"></span> 23 April 2020
								</p>
							</div>
							<h3 class="heading mb-3">
								<a href="#">The Recipe from a Winemaker’s Restaurent</a>
							</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia.</p>
							<a href="#" class="btn-custom">Continue <span
								class="fa fa-long-arrow-right"></span></a>

						</div>
					</div>
				</div>
				<div class="col-lg-6 d-flex align-items-stretch ftco-animate">
					<div class="blog-entry d-flex">
						<a href="blog-single.action" class="block-20 img"
							style="background-image: url('resources/images/image_3.jpg');">
						</a>
						<div class="text p-4 bg-light">
							<div class="meta">
								<p>
									<span class="fa fa-calendar"></span> 23 April 2020
								</p>
							</div>
							<h3 class="heading mb-3">
								<a href="#">The Recipe from a Winemaker’s Restaurent</a>
							</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia.</p>
							<a href="#" class="btn-custom">Continue <span
								class="fa fa-long-arrow-right"></span></a>

						</div>
					</div>
				</div>
				<div class="col-lg-6 d-flex align-items-stretch ftco-animate">
					<div class="blog-entry d-flex">
						<a href="blog-single.action" class="block-20 img"
							style="background-image: url('resources/images/image_4.jpg');">
						</a>
						<div class="text p-4 bg-light">
							<div class="meta">
								<p>
									<span class="fa fa-calendar"></span> 23 April 2020
								</p>
							</div>
							<h3 class="heading mb-3">
								<a href="#">The Recipe from a Winemaker’s Restaurent</a>
							</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia.</p>
							<a href="#" class="btn-custom">Continue <span
								class="fa fa-long-arrow-right"></span></a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>