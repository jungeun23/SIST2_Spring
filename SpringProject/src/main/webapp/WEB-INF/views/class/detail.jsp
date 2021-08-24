<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.js"></script>
<section class="hero-wrap hero-wrap-2"
	style="background-image: url('../resources/images/sample4.jpg');"
	data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate mb-5 text-center">
				<p class="breadcrumbs mb-0">

					<!-- 페이지에 맞게 수정 필요  -->
					<span class="mr-2"><a href="index.html">홈 <i
							class="fa fa-chevron-right"></i></a></span> <span>클래스 <i
						class="fa fa-chevron-right"></i></span>
				</p>
				<h2 class="mb-0 bread">클래스</h2>
			</div>
		</div>
	</div>
</section>


<div class="ProductDetailContainer">
	<div class="product-HeadSection">

		<!-- 썸네일 사진 -->
		<div class="product-BannerImageSection">
			<div class="product-ImageSlider">

				<img id="back" class="product-ImageSlider-PrevArrow"
					src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='50' height='50' viewBox='0 0 50 50'%3E %3Cpath fill='none' fill-rule='evenodd' stroke='%23FFF' stroke-width='2' d='M21 17l8 8.014L21.028 33'/%3E %3C/svg%3E"
					style="display: block;">

				<ul>
					<li><img
						src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_0,w_768/12_pdv9c6"></li>
					<li><img
						src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_0,w_768/2_xvoomh"></li>
					<li><img
						src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_0,w_768/10_y5krhd"></li>
				</ul>

				<img id="next" class="product-ImageSlider-NextArrow"
					src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='50' height='50' viewBox='0 0 50 50'%3E %3Cpath fill='none' fill-rule='evenodd' stroke='%23FFF' stroke-width='2' d='M21 17l8 8.014L21.028 33'/%3E %3C/svg%3E"
					style="display: block;">
			</div>
			<div class="product-ImageIndex">
				<span class="product-ImageIndexNumber"></span>
			</div>
		</div>

		<!-- 클래스 정보 -->
		<div class="product-InfoSectionWrapper">
			<section class="product-InfoSection">
				<div class="product-TitleContainer">

					<label class="product-InfoTitle">&lt;홍대,신림&gt;방송댄스&amp;재즈댄스
						도전기(예약 가능)</label>
					<div class="product-InfoButtonContainer">
						<button name="ShareBtn" type="button" id="product-share-btn"
							class="ButtonShare__Button-sc-10dysbk-0 gwvcwl">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' fill='none' viewBox='0 0 24 24'%3E %3Cpath stroke='%23333' stroke-width='1.5' d='M3 10v7c0 2.21 1.79 4 4 4h10c2.21 0 4-1.79 4-4v-7M8.25 7L12 3.25 15.75 7M12 4v9'/%3E %3C/svg%3E"
								alt="공유 아이콘">
						</button>
					</div>

				</div>
				
					<div class="product-PriceInfo-Price">
						30,000 <span class="product-PriceInfo-PriceUnit"> 원</span>
					</div>
				
			</section>
			<!-- 호스트 정보 -->
			<section class="product-HostWrapper">
				<div class="product-Profile-Wrapper">

					<div class="product-Profile">
						<div class="product-ProfileImage">
							<button type="button" onclick="location.href='#!';">
								<img alt="호스트 프로필 이미지" class="Image__StyledImage-v97gyx-1 VUNpu"
									src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,h_56,q_auto,w_56/Host_9393_38445_1626421350">
							</button>
						</div>
					</div>
					<div class="product-ProfileContent">
						<div class="product-HostNameWrapper">
							<a href="/hosts/11779"><span
								class="Profile__NickName-sc-18xe7ny-7 cZgpqN"><span>쯩이</span><img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='none' viewBox='0 0 16 16'%3E %3Cpath stroke='%23333' stroke-linecap='round' stroke-width='1.5' d='M6 3l5 5-5 5'/%3E %3C/svg%3E"
									alt="arrow-right"></span></a>
						</div>
						<span class="product-ProfileStat">클래스 5 <span>|</span> 후기
							108 <span> |</span> 저장 90
						</span>
					</div>

					<button id="product-classSave"
						class="Button-bqxlp0-0 ButtonWish__StyledButton-sc-7k8l60-0 eZGjgL enp_mobon_cart"
						width="32px" height="32px">
						<img
							src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='32' height='32' fill='none' viewBox='0 0 32 32'%3E %3Cpath fill='%23F4F4F4' stroke='%23CCC' stroke-width='1.5' d='M15.043 19.962l-.028.02-.027.021-7.571 6.384V5.827c0-1.273 1.155-2.41 2.73-2.41h11.706c1.57 0 2.73 1.138 2.73 2.41v20.56l-7.571-6.384-.027-.022-.028-.02c-.291-.203-.633-.293-.957-.293-.323 0-.665.09-.957.294z'/%3E %3C/svg%3E"
							alt="찜하기">
					</button>

				</div>
			</section>
					<div class="ReviewSummary__Wrapper-sc-1m36i2z-0 jEBDUS">
			<div class="ReviewSummary__InfoSection-sc-1m36i2z-1 ehidDS">
				<div class="Readonly__Wrapper-sc-14tcogl-0 jTHKhF">
					<img
						src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
						alt="평점 icon"><img
						src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
						alt="평점 icon"><img
						src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
						alt="평점 icon"><img
						src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
						alt="평점 icon"><img
						src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
						alt="평점 icon">
				</div>
				<div class="ReviewSummary__Average-sc-1m36i2z-2 iiUeZl">5</div>
				<div class="ReviewSummary__Dot-sc-1m36i2z-3 hRWVGk">•</div>
				<div class="ReviewSummary__Count-sc-1m36i2z-4 svvHD">90개 후기</div>
			</div>
			<p class="ReviewSummary__Comment-sc-1m36i2z-5 kZkWnS">경험한 수강생의
				98%가 5점을 줬어요!</p>
		</div>
		</div>
	</div>
	<div class="ReviewSection__Wrapper-h5kv09-0 clIKDA">

		<div class="ReviewSection__ReviewSectionWrapper-h5kv09-1 eUAXZD">
			<div class="CoverReviewCardList__Wrapper-knh3pe-0 cOxrJ">
				<div
					class="slick-slider CoverReviewSlider__StyledSlider-sc-1ty45po-2 hlWAni slick-initialized"
					dir="ltr">
					<img data-role="none"
						class="CoverReviewSlider__PrevArrow-sc-1ty45po-0 product-reviewbtn slick-arrow slick-prev slick-disabled"
						src="data:image/png;base64,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"
						style="display: block;">
					<div class="slick-list">
						<div class="slick-track"
							style="opacity: 1; transform: translate3d(0px, 0px, 0px); width: 7320px;">
							<div data-index="0"
								class="slick-slide slick-active slick-current" tabindex="-1"
								aria-hidden="false" style="outline: none; width: 244px;">
								<div>
									<div class="CoverReviewCard__Wrapper-sc-1kgiguh-0 ihDCaS">
										<div class="CoverReviewCard__ImageSection-sc-1kgiguh-1 eSCFvY">
											<a href="/products/136805/reviews"><div
													class="Image__Wrapper-v97gyx-0 gDuKGF">
													<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
														width="220"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/review-android-140243-2021_08_22_19:12:40.684">
													<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
														style="opacity: 1; display: block;">
														<div class="Ratio " style="display: block;">
															<div class="Ratio-ratio "
																style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																<div class="Ratio-content "
																	style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																	<img alt="review-thumbnail"
																		class="Image__StyledImage-v97gyx-1 VUNpA" width="220"
																		src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/review-android-140243-2021_08_22_19:12:40.684">
																</div>
															</div>
														</div>
													</div>
												</div></a>
										</div>
										<div class="CoverReviewCard__InfoSection-sc-1kgiguh-2 ggRfTm">
											<div
												class="CoverReviewCard__UserProfileSection-sc-1kgiguh-3 gvMYvX">
												<div
													class="CoverReviewCard__ProfileImage-sc-1kgiguh-4 hbfRVr">
													<div class="Image__Wrapper-v97gyx-0 gDuKGF">
														<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
															width="40" height="40"
															src="https://k.kakaocdn.net/dn/Q8yEF/btq0A1kFD39/36D3NLNAYAcooh9dWCdQOK/img_110x110.jpg">
														<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
															style="opacity: 1; display: block;">
															<div class="Ratio " style="display: block;">
																<div class="Ratio-ratio "
																	style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																	<div class="Ratio-content "
																		style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																		<img alt="user-1094728-profile"
																			class="Image__StyledImage-v97gyx-1 hPRDSh" width="40"
																			height="40"
																			src="https://k.kakaocdn.net/dn/Q8yEF/btq0A1kFD39/36D3NLNAYAcooh9dWCdQOK/img_110x110.jpg">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="CoverReviewCard__UserInfo-sc-1kgiguh-5 fsJcFt">
													<h2 class="CoverReviewCard__UserName-sc-1kgiguh-6 biuXID">김희연</h2>
												</div>
											</div>
											<p class="CoverReviewCard__ProductTitle-sc-1kgiguh-7 jtBQUX">[신림]
												1인1회 (1시간)</p>
											<span
												class="SpanLineClamp-my36n9-0 CoverReviewCard__ReviewContent-sc-1kgiguh-8 gsjveC">휴일에
												집에만 있기 그래서 급하게 신청했는데, 쌤께서 친절하게 안내해주셨어요. 쌤의 폭풍 리액션과 칭찬 덕에 즐겁게
												안무 배울 수 있었습니다. 정말 쉽고 정확하게 잘 가르쳐주세요. 강력 추천합니다!!</span>
											<button type="button"
												class="CoverReviewCard__LikeButton-sc-1kgiguh-9 ccPzhh">
												<img
													src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='14' fill='none' viewBox='0 0 15 14'%3E %3Cpath stroke='%23FF3F33' stroke-miterlimit='10' stroke-width='1.5' d='M3.14 5.3l.645.382h0l.002-.003.004-.007.016-.028.062-.105.225-.385c.189-.323.447-.768.723-1.254.528-.929 1.145-2.042 1.461-2.725.015-.01.037-.025.07-.043.111-.063.273-.13.47-.192.406-.128.812-.19.967-.19.268 0 .488.217.488.492V6h5.332c.355 0 .645.287.645.65 0 .02-.001.04-.005.094l-.696 5.934s0 0 0 0c-.04.325-.314.572-.642.572h0H.75v-7.2h2.817l.218-.368L3.14 5.3z'/%3E %3Cpath fill='%23FF3F33' d='M3 6h1.5v7H3V6z'/%3E %3C/svg%3E"
													alt="thumbs-icon">0
											</button>
										</div>
									</div>
								</div>
							</div>
							<div data-index="1" class="slick-slide slick-active"
								tabindex="-1" aria-hidden="false"
								style="outline: none; width: 244px;">
								<div>
									<div class="CoverReviewCard__Wrapper-sc-1kgiguh-0 ihDCaS">
										<div class="CoverReviewCard__ImageSection-sc-1kgiguh-1 eSCFvY">
											<a href="/products/136805/reviews"><div
													class="Image__Wrapper-v97gyx-0 gDuKGF">
													<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
														width="220"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/xa2hsju1nxxad1parv9i">
													<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
														style="opacity: 1; display: block;">
														<div class="Ratio " style="display: block;">
															<div class="Ratio-ratio "
																style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																<div class="Ratio-content "
																	style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																	<img alt="review-thumbnail"
																		class="Image__StyledImage-v97gyx-1 VUNpA" width="220"
																		src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/xa2hsju1nxxad1parv9i">
																</div>
															</div>
														</div>
													</div>
												</div></a>
										</div>
										<div class="CoverReviewCard__InfoSection-sc-1kgiguh-2 ggRfTm">
											<div
												class="CoverReviewCard__UserProfileSection-sc-1kgiguh-3 gvMYvX">
												<div
													class="CoverReviewCard__ProfileImage-sc-1kgiguh-4 hbfRVr">
													<div class="Image__Wrapper-v97gyx-0 gDuKGF">
														<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
															width="40" height="40"
															src="https://k.kakaocdn.net/dn/bzI7D4/btqZZlydpL5/tbn5SjGzKxlm8onD9H6SN1/img_110x110.jpg">
														<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
															style="opacity: 1; display: block;">
															<div class="Ratio " style="display: block;">
																<div class="Ratio-ratio "
																	style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																	<div class="Ratio-content "
																		style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																		<img alt="user-1088407-profile"
																			class="Image__StyledImage-v97gyx-1 hPRDSh" width="40"
																			height="40"
																			src="https://k.kakaocdn.net/dn/bzI7D4/btqZZlydpL5/tbn5SjGzKxlm8onD9H6SN1/img_110x110.jpg">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="CoverReviewCard__UserInfo-sc-1kgiguh-5 fsJcFt">
													<h2 class="CoverReviewCard__UserName-sc-1kgiguh-6 biuXID">최가영</h2>
												</div>
											</div>
											<p class="CoverReviewCard__ProductTitle-sc-1kgiguh-7 jtBQUX">1:1
												개인레슨 (1시간 20분)_1회</p>
											<span
												class="SpanLineClamp-my36n9-0 CoverReviewCard__ReviewContent-sc-1kgiguh-8 gsjveC">직장인이라
												이제야 후기를 작성하네요!! 욕심 부린 선곡에도 쌤이 너무 잘 알려주셔서 그저 빛…! 직원분들이랑 같이
												배워도 좋을 것 같단 생각이 들었습니다!! 비록 비루한 몸뚱아리 때문에 완곡은 못했지만! 선생님이 차분하게
												그리고 또 친절하게 ㅜㅜㅜ 가르쳐주셨어요’ㅜ☺️☺️🥲 다음에 또 기회가 된다면 배우고 싶습니다!!! 쌤!
												정말 감사하궁 ㅜ 후기가 너무 늦어서 죄송해용🥲🥲 여러분! 절대 겁먹지 말구 쯩이쌤이랑 신나게 춤
												배우세요!!!! 별 다섯개🌟🌟🌟🌟🌟는 기본!!!</span>
											<button type="button"
												class="CoverReviewCard__LikeButton-sc-1kgiguh-9 ccPzhh">
												<img
													src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='14' fill='none' viewBox='0 0 15 14'%3E %3Cpath stroke='%23FF3F33' stroke-miterlimit='10' stroke-width='1.5' d='M3.14 5.3l.645.382h0l.002-.003.004-.007.016-.028.062-.105.225-.385c.189-.323.447-.768.723-1.254.528-.929 1.145-2.042 1.461-2.725.015-.01.037-.025.07-.043.111-.063.273-.13.47-.192.406-.128.812-.19.967-.19.268 0 .488.217.488.492V6h5.332c.355 0 .645.287.645.65 0 .02-.001.04-.005.094l-.696 5.934s0 0 0 0c-.04.325-.314.572-.642.572h0H.75v-7.2h2.817l.218-.368L3.14 5.3z'/%3E %3Cpath fill='%23FF3F33' d='M3 6h1.5v7H3V6z'/%3E %3C/svg%3E"
													alt="thumbs-icon">0
											</button>
										</div>
									</div>
								</div>
							</div>
							<div data-index="2" class="slick-slide slick-active"
								tabindex="-1" aria-hidden="false"
								style="outline: none; width: 244px;">
								<div>
									<div class="CoverReviewCard__Wrapper-sc-1kgiguh-0 ihDCaS">
										<div class="CoverReviewCard__ImageSection-sc-1kgiguh-1 eSCFvY">
											<a href="/products/136805/reviews"><div
													class="Image__Wrapper-v97gyx-0 gDuKGF">
													<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
														width="220"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/whlqswxamj6w43idxv5g">
													<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
														style="opacity: 1; display: block;">
														<div class="Ratio " style="display: block;">
															<div class="Ratio-ratio "
																style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																<div class="Ratio-content "
																	style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																	<img alt="review-thumbnail"
																		class="Image__StyledImage-v97gyx-1 VUNpA" width="220"
																		src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/whlqswxamj6w43idxv5g">
																</div>
															</div>
														</div>
													</div>
												</div></a>
										</div>
										<div class="CoverReviewCard__InfoSection-sc-1kgiguh-2 ggRfTm">
											<div
												class="CoverReviewCard__UserProfileSection-sc-1kgiguh-3 gvMYvX">
												<div
													class="CoverReviewCard__ProfileImage-sc-1kgiguh-4 hbfRVr">
													<div class="Image__Wrapper-v97gyx-0 gDuKGF">
														<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
															width="40" height="40"
															src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,h_40,q_auto,r_20,w_40/iwr0hycycmsjcqr4xs0g">
														<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
															style="opacity: 1; display: block;">
															<div class="Ratio " style="display: block;">
																<div class="Ratio-ratio "
																	style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																	<div class="Ratio-content "
																		style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																		<img alt="user-779982-profile"
																			class="Image__StyledImage-v97gyx-1 hPRDSh" width="40"
																			height="40"
																			src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,h_40,q_auto,r_20,w_40/iwr0hycycmsjcqr4xs0g">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="CoverReviewCard__UserInfo-sc-1kgiguh-5 fsJcFt">
													<h2 class="CoverReviewCard__UserName-sc-1kgiguh-6 biuXID">나혜선</h2>
												</div>
											</div>
											<p class="CoverReviewCard__ProductTitle-sc-1kgiguh-7 jtBQUX">1:1
												개인레슨 (1시간 20분)_3회</p>
											<span
												class="SpanLineClamp-my36n9-0 CoverReviewCard__ReviewContent-sc-1kgiguh-8 gsjveC">흥은
												많지만 춤을 못춰서 늘 배워보고 싶었어요! 근데 춤을 배워본 적도 없고 워낙 뚝딱이라 그룹 수업하면
												못따라갈까봐 + 창피해서 1:1로 3회 수업 우선 들어봤는데 제 눈높이에 맞춰 가르쳐주시고 못따라가는 동작은
												쉽게 변형해서 알려주셔서 너무 재미있게 수업 마쳤어요 ㅎㅎ 매 수업마다 쌤이랑 같이 안무하는 영상 / 저
												혼자 안무하는 영상도 꼼꼼히 남겨주셔서 제 자세나 동작 같은거 체크하기도 좋고 쌤이랑 어떤 점이 다른지
												비교해서 보기도 좋아요~~ 지금도 추가 결제해서 1:1 수업 계속 듣고 있네요! 너무 만족스러운 수업입니당
												:) * 사진은 쌤이랑 둘이 같이 찍은게 따로 없어서 안무 영상 중에 캡쳐해서 첨부했어요 ㅋㅋ</span>
											<button type="button"
												class="CoverReviewCard__LikeButton-sc-1kgiguh-9 ccPzhh">
												<img
													src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='14' fill='none' viewBox='0 0 15 14'%3E %3Cpath stroke='%23FF3F33' stroke-miterlimit='10' stroke-width='1.5' d='M3.14 5.3l.645.382h0l.002-.003.004-.007.016-.028.062-.105.225-.385c.189-.323.447-.768.723-1.254.528-.929 1.145-2.042 1.461-2.725.015-.01.037-.025.07-.043.111-.063.273-.13.47-.192.406-.128.812-.19.967-.19.268 0 .488.217.488.492V6h5.332c.355 0 .645.287.645.65 0 .02-.001.04-.005.094l-.696 5.934s0 0 0 0c-.04.325-.314.572-.642.572h0H.75v-7.2h2.817l.218-.368L3.14 5.3z'/%3E %3Cpath fill='%23FF3F33' d='M3 6h1.5v7H3V6z'/%3E %3C/svg%3E"
													alt="thumbs-icon">2
											</button>
										</div>
									</div>
								</div>
							</div>
							<div data-index="3" class="slick-slide" tabindex="-1"
								aria-hidden="true" style="outline: none; width: 244px;">
								<div>
									<div class="CoverReviewCard__Wrapper-sc-1kgiguh-0 ihDCaS">
										<div class="CoverReviewCard__ImageSection-sc-1kgiguh-1 eSCFvY">
											<a href="/products/136805/reviews"><div
													class="Image__Wrapper-v97gyx-0 gDuKGF">
													<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
														width="220"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/y9n6extmskw1nxbhitn6">
													<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
														style="opacity: 1; display: block;">
														<div class="Ratio " style="display: block;">
															<div class="Ratio-ratio "
																style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																<div class="Ratio-content "
																	style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																	<img alt="review-thumbnail"
																		class="Image__StyledImage-v97gyx-1 VUNpA" width="220"
																		src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/y9n6extmskw1nxbhitn6">
																</div>
															</div>
														</div>
													</div>
												</div></a>
										</div>
										<div class="CoverReviewCard__InfoSection-sc-1kgiguh-2 ggRfTm">
											<div
												class="CoverReviewCard__UserProfileSection-sc-1kgiguh-3 gvMYvX">
												<div
													class="CoverReviewCard__ProfileImage-sc-1kgiguh-4 hbfRVr">
													<div class="Image__Wrapper-v97gyx-0 gDuKGF">
														<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
															width="40" height="40"
															src="http://k.kakaocdn.net/dn/b47LIV/btqqh5qsUXF/73u3IhdChPWA7R9KzPTUd1/profile_110x110c.jpg">
														<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
															style="opacity: 1; display: block;">
															<div class="Ratio " style="display: block;">
																<div class="Ratio-ratio "
																	style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																	<div class="Ratio-content "
																		style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																		<img alt="user-560532-profile"
																			class="Image__StyledImage-v97gyx-1 hPRDSh" width="40"
																			height="40"
																			src="http://k.kakaocdn.net/dn/b47LIV/btqqh5qsUXF/73u3IhdChPWA7R9KzPTUd1/profile_110x110c.jpg">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="CoverReviewCard__UserInfo-sc-1kgiguh-5 fsJcFt">
													<h2 class="CoverReviewCard__UserName-sc-1kgiguh-6 biuXID">Arist</h2>
												</div>
											</div>
											<p class="CoverReviewCard__ProductTitle-sc-1kgiguh-7 jtBQUX">1:1
												개인레슨 (1시간 20분)_1회</p>
											<span
												class="SpanLineClamp-my36n9-0 CoverReviewCard__ReviewContent-sc-1kgiguh-8 gsjveC">두번째
												수업도 넘 좋았어요! 마지막에 과부하로 멘붕이 왔지만ㅋㅋㅋ 쌤이 잘 이끌어주신 덕에ㅋㅋㅋ 무사히
												마쳤어욥!💃🏻</span>
											<button type="button"
												class="CoverReviewCard__LikeButton-sc-1kgiguh-9 ccPzhh">
												<img
													src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='14' fill='none' viewBox='0 0 15 14'%3E %3Cpath stroke='%23FF3F33' stroke-miterlimit='10' stroke-width='1.5' d='M3.14 5.3l.645.382h0l.002-.003.004-.007.016-.028.062-.105.225-.385c.189-.323.447-.768.723-1.254.528-.929 1.145-2.042 1.461-2.725.015-.01.037-.025.07-.043.111-.063.273-.13.47-.192.406-.128.812-.19.967-.19.268 0 .488.217.488.492V6h5.332c.355 0 .645.287.645.65 0 .02-.001.04-.005.094l-.696 5.934s0 0 0 0c-.04.325-.314.572-.642.572h0H.75v-7.2h2.817l.218-.368L3.14 5.3z'/%3E %3Cpath fill='%23FF3F33' d='M3 6h1.5v7H3V6z'/%3E %3C/svg%3E"
													alt="thumbs-icon">2
											</button>
										</div>
									</div>
								</div>
							</div>
							<div data-index="4" class="slick-slide" tabindex="-1"
								aria-hidden="true" style="outline: none; width: 244px;">
								<div>
									<div class="CoverReviewCard__Wrapper-sc-1kgiguh-0 ihDCaS">
										<div class="CoverReviewCard__ImageSection-sc-1kgiguh-1 eSCFvY">
											<a href="/products/136805/reviews"><div
													class="Image__Wrapper-v97gyx-0 gDuKGF">
													<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
														width="220"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/ynwlnxgu3uho1nukdgxw">
													<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
														style="opacity: 1; display: block;">
														<div class="Ratio " style="display: block;">
															<div class="Ratio-ratio "
																style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																<div class="Ratio-content "
																	style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																	<img alt="review-thumbnail"
																		class="Image__StyledImage-v97gyx-1 VUNpA" width="220"
																		src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/ynwlnxgu3uho1nukdgxw">
																</div>
															</div>
														</div>
													</div>
												</div></a>
										</div>
										<div class="CoverReviewCard__InfoSection-sc-1kgiguh-2 ggRfTm">
											<div
												class="CoverReviewCard__UserProfileSection-sc-1kgiguh-3 gvMYvX">
												<div
													class="CoverReviewCard__ProfileImage-sc-1kgiguh-4 hbfRVr">
													<div class="Image__Wrapper-v97gyx-0 gDuKGF">
														<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
															width="40" height="40"
															src="http://k.kakaocdn.net/dn/b47LIV/btqqh5qsUXF/73u3IhdChPWA7R9KzPTUd1/profile_110x110c.jpg">
														<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
															style="opacity: 1; display: block;">
															<div class="Ratio " style="display: block;">
																<div class="Ratio-ratio "
																	style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																	<div class="Ratio-content "
																		style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																		<img alt="user-560532-profile"
																			class="Image__StyledImage-v97gyx-1 hPRDSh" width="40"
																			height="40"
																			src="http://k.kakaocdn.net/dn/b47LIV/btqqh5qsUXF/73u3IhdChPWA7R9KzPTUd1/profile_110x110c.jpg">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="CoverReviewCard__UserInfo-sc-1kgiguh-5 fsJcFt">
													<h2 class="CoverReviewCard__UserName-sc-1kgiguh-6 biuXID">Arist</h2>
												</div>
											</div>
											<p class="CoverReviewCard__ProductTitle-sc-1kgiguh-7 jtBQUX">1:1
												개인레슨 (1시간 20분)_1회</p>
											<span
												class="SpanLineClamp-my36n9-0 CoverReviewCard__ReviewContent-sc-1kgiguh-8 gsjveC">넘
												친절히 가르쳐주셔서 배우는 동안 즐거웠어요! 칭찬도 듬뿍해주시구☺️❤️</span>
											<button type="button"
												class="CoverReviewCard__LikeButton-sc-1kgiguh-9 ccPzhh">
												<img
													src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='14' fill='none' viewBox='0 0 15 14'%3E %3Cpath stroke='%23FF3F33' stroke-miterlimit='10' stroke-width='1.5' d='M3.14 5.3l.645.382h0l.002-.003.004-.007.016-.028.062-.105.225-.385c.189-.323.447-.768.723-1.254.528-.929 1.145-2.042 1.461-2.725.015-.01.037-.025.07-.043.111-.063.273-.13.47-.192.406-.128.812-.19.967-.19.268 0 .488.217.488.492V6h5.332c.355 0 .645.287.645.65 0 .02-.001.04-.005.094l-.696 5.934s0 0 0 0c-.04.325-.314.572-.642.572h0H.75v-7.2h2.817l.218-.368L3.14 5.3z'/%3E %3Cpath fill='%23FF3F33' d='M3 6h1.5v7H3V6z'/%3E %3C/svg%3E"
													alt="thumbs-icon">2
											</button>
										</div>
									</div>
								</div>
							</div>
							<div data-index="5" class="slick-slide" tabindex="-1"
								aria-hidden="true" style="outline: none; width: 244px;">
								<div>
									<div class="CoverReviewCard__Wrapper-sc-1kgiguh-0 ihDCaS">
										<div class="CoverReviewCard__ImageSection-sc-1kgiguh-1 eSCFvY">
											<a href="/products/136805/reviews"><div
													class="Image__Wrapper-v97gyx-0 gDuKGF">
													<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
														width="220"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/bbzltrob8vsutgxdmwrv">
													<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
														style="opacity: 1; display: block;">
														<div class="Ratio " style="display: block;">
															<div class="Ratio-ratio "
																style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																<div class="Ratio-content "
																	style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																	<img alt="review-thumbnail"
																		class="Image__StyledImage-v97gyx-1 VUNpA" width="220"
																		src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/bbzltrob8vsutgxdmwrv">
																</div>
															</div>
														</div>
													</div>
												</div></a>
										</div>
										<div class="CoverReviewCard__InfoSection-sc-1kgiguh-2 ggRfTm">
											<div
												class="CoverReviewCard__UserProfileSection-sc-1kgiguh-3 gvMYvX">
												<div
													class="CoverReviewCard__ProfileImage-sc-1kgiguh-4 hbfRVr">
													<div class="Image__Wrapper-v97gyx-0 gDuKGF">
														<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
															width="40" height="40"
															src="https://k.kakaocdn.net/dn/xIzod/btq7NzoaBlZ/6KjQeB5U9NsjZBt2IZuTMK/img_110x110.jpg">
														<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
															style="opacity: 1; display: block;">
															<div class="Ratio " style="display: block;">
																<div class="Ratio-ratio "
																	style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																	<div class="Ratio-content "
																		style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																		<img alt="user-1130804-profile"
																			class="Image__StyledImage-v97gyx-1 hPRDSh" width="40"
																			height="40"
																			src="https://k.kakaocdn.net/dn/xIzod/btq7NzoaBlZ/6KjQeB5U9NsjZBt2IZuTMK/img_110x110.jpg">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="CoverReviewCard__UserInfo-sc-1kgiguh-5 fsJcFt">
													<h2 class="CoverReviewCard__UserName-sc-1kgiguh-6 biuXID">진희</h2>
												</div>
											</div>
											<p class="CoverReviewCard__ProductTitle-sc-1kgiguh-7 jtBQUX">1:1
												개인레슨 (1시간 20분)_1회</p>
											<span
												class="SpanLineClamp-my36n9-0 CoverReviewCard__ReviewContent-sc-1kgiguh-8 gsjveC">낯을
												많이 가리는 성격인데도 선생님이 너무 에너지가 좋으셔서 신나게!! 수업할 수 있었어요 ㅋㅋㅋ 몰입해서
												하나하나 따라하다보면 어느새 휘리릭! 동작이 끝나있었ㅇ.. 잘못하거나 이해가 안되는 부분은 따로 상세히
												알려주셔서 뭐가 부족한지도 알게되고 너무 좋았습니다! 처음 해보시는 분들은 1:1 해보시면 좋을 것 같아요!
												:) 코시국에 휴가라서..평소에 안해보던 일을 해보자는 마음으로 신청한 클래스였는데 충분히 환기가 된 것
												같아서 아주 만족해요!! 다 즐겁게 수업하도록 이끌어주신 선생님 덕분입니다! 앞으로도 종종 하고싶어요 😆</span>
											<button type="button"
												class="CoverReviewCard__LikeButton-sc-1kgiguh-9 ccPzhh">
												<img
													src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='14' fill='none' viewBox='0 0 15 14'%3E %3Cpath stroke='%23FF3F33' stroke-miterlimit='10' stroke-width='1.5' d='M3.14 5.3l.645.382h0l.002-.003.004-.007.016-.028.062-.105.225-.385c.189-.323.447-.768.723-1.254.528-.929 1.145-2.042 1.461-2.725.015-.01.037-.025.07-.043.111-.063.273-.13.47-.192.406-.128.812-.19.967-.19.268 0 .488.217.488.492V6h5.332c.355 0 .645.287.645.65 0 .02-.001.04-.005.094l-.696 5.934s0 0 0 0c-.04.325-.314.572-.642.572h0H.75v-7.2h2.817l.218-.368L3.14 5.3z'/%3E %3Cpath fill='%23FF3F33' d='M3 6h1.5v7H3V6z'/%3E %3C/svg%3E"
													alt="thumbs-icon">1
											</button>
										</div>
									</div>
								</div>
							</div>
							<div data-index="6" class="slick-slide" tabindex="-1"
								aria-hidden="true" style="outline: none; width: 244px;">
								<div>
									<div class="CoverReviewCard__Wrapper-sc-1kgiguh-0 ihDCaS">
										<div class="CoverReviewCard__ImageSection-sc-1kgiguh-1 eSCFvY">
											<a href="/products/136805/reviews"><div
													class="Image__Wrapper-v97gyx-0 gDuKGF">
													<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
														width="220"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/qj4zgsuuenk4fhfebnlx">
													<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
														style="opacity: 1; display: block;">
														<div class="Ratio " style="display: block;">
															<div class="Ratio-ratio "
																style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																<div class="Ratio-content "
																	style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																	<img alt="review-thumbnail"
																		class="Image__StyledImage-v97gyx-1 VUNpA" width="220"
																		src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/qj4zgsuuenk4fhfebnlx">
																</div>
															</div>
														</div>
													</div>
												</div></a>
										</div>
										<div class="CoverReviewCard__InfoSection-sc-1kgiguh-2 ggRfTm">
											<div
												class="CoverReviewCard__UserProfileSection-sc-1kgiguh-3 gvMYvX">
												<div
													class="CoverReviewCard__ProfileImage-sc-1kgiguh-4 hbfRVr">
													<div class="Image__Wrapper-v97gyx-0 gDuKGF">
														<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
															style="opacity: 1; display: block;">
															<div class="Ratio " style="display: block;">
																<div class="Ratio-ratio "
																	style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																	<div class="Ratio-content "
																		style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																		<img
																			src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFkAAABZCAMAAABi1XidAAAAUVBMVEVHcEzz9Pby9Pb2+/vy8/f09/jq6/L////y9Pfz9ffy9ffz9Pfy8/fz9Pby9Pfy9Pby9Pfz9Pfy8/art8To6++wusi5ws7g5Orw8fTEzNbS1+C1FdKWAAAAEnRSTlMA5bIa8jsuC1GOZLnZzJ7Kt9TwOxZLAAADVklEQVRYw8VZ25arMAhNrdZqb1MgQPL/H3oe6kzb0ZBUJ+vwahfFLWxg41ze9t04NJfzroV2d740w9jt3Xbrj8Md5nYfjv02t1+Qtq/Vzg/XFmxrr4cVfrsGSqzpPo33BKV2+iTufoBPbCjG+7iDz2x3rBFwedj7G6yxW7Z4uhbWWZtJkqPCWlMT7BG22FjLseH6CFstAUinmz3r4mfct7Dd2oXk62/wF3abl8wAf2PD33+9xFfssyREEhk5CmXpqf8EC43B48N8iPoBHgf7t5ER0XMIgT0icrR//toKrA6iGhB9kEekKsEjBjPs00uNmAAzYnhFlwIim3A/66WxHXv59RbibddNCco6dzy51gKkr1ZSLDgGAPFofcbrlMsGYRAmPEREA4+2z5ZfSL41Y8gWopFy5FESjwQ9ZRKvt0okGbIqm0j3WTDCqmcPOAYz5ST5UMzEG5xzdxNmMjxbQN+d24OZc7TuIcDe5AyywjJfCKCzZgzd4nk0OX+L58HiuU0xN+5SKeaLO1eK+ex2lWLeubZSzK2DSpUCVsyg3uQNr2bMO7sJxhUMO+F8Nkcj5ORDm5/hbOYzSBpLQgMpALiYswZoutsFGwxoMrNiTOUd2WMBwJDZp1JBay5kGO2ZDkCWB46YQRmgM3vKA8+FIUm82V4fPcXqgxMes+mQOIcF3AtWH5oNnsRmc/3p3dndRzzyKyDCy1PkbN7oocC1fy4n0Rc4ht45576yP2NEZFEAUGFEo+R/tLyyVVA9MiJyiIERPdsk9zKL9rmFmxBJwrS1BckR83N+tmb+F76kGEKIlOHWt5k/tw3OPMVsNh9Kdqs5K2mWjZqyfXBh2YmZvOuKdtiFBU3VrpVTyd6tcXGpJH6tHWvvXiIPVZXIy4uwEiNyFFXNaSe/9A2VwOw9YjI0jR4RvWf+3vUT+sZ7IUaetAyOlFQQKPKkefDbvx/TOhIxog9RRMhMW1USkRj8m5YwpLUvYvSBAMrUO/2lSixoX996HZWw70JmUlKvmzRGDfl+sdh3giY1xsdXlGxTTrV4Seuizo3WUGTDHZDVlIlpXciPCXA0xfgsQaapNnOgOKwCAwDC4b/dJireUyregGrerSre2mreB2veNGveYWvejjfdu/8BI2K8ok7u95kAAAAASUVORK5CYII="
																			alt="user-1130147-profile"
																			class="Image__DefaultImage-v97gyx-3 bzFlWa">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="CoverReviewCard__UserInfo-sc-1kgiguh-5 fsJcFt">
													<h2 class="CoverReviewCard__UserName-sc-1kgiguh-6 biuXID">야경쟁이</h2>
												</div>
											</div>
											<p class="CoverReviewCard__ProductTitle-sc-1kgiguh-7 jtBQUX">[홍대]
												1인1회 (1시간 20분)</p>
											<span
												class="SpanLineClamp-my36n9-0 CoverReviewCard__ReviewContent-sc-1kgiguh-8 gsjveC">너무
												재밌엇어요 ㅎㅎ 우주최강 몸치지만 쌤이 하나하나 잘 알려주시고 반복도 많이 해주셔서 1시간 반이 후딱 지나갈
												정도로 즐겁게 연습했습니당! 쌤 정말 친절하시구 잘 가르쳐 쥬세요! 또 배우러 갈거려고 합니당 ㅎㅎㅎ 몸치도
												출수 있게 잘 알려주셔서 감사해요!! :D</span>
											<button type="button"
												class="CoverReviewCard__LikeButton-sc-1kgiguh-9 ccPzhh">
												<img
													src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='14' fill='none' viewBox='0 0 15 14'%3E %3Cpath stroke='%23FF3F33' stroke-miterlimit='10' stroke-width='1.5' d='M3.14 5.3l.645.382h0l.002-.003.004-.007.016-.028.062-.105.225-.385c.189-.323.447-.768.723-1.254.528-.929 1.145-2.042 1.461-2.725.015-.01.037-.025.07-.043.111-.063.273-.13.47-.192.406-.128.812-.19.967-.19.268 0 .488.217.488.492V6h5.332c.355 0 .645.287.645.65 0 .02-.001.04-.005.094l-.696 5.934s0 0 0 0c-.04.325-.314.572-.642.572h0H.75v-7.2h2.817l.218-.368L3.14 5.3z'/%3E %3Cpath fill='%23FF3F33' d='M3 6h1.5v7H3V6z'/%3E %3C/svg%3E"
													alt="thumbs-icon">1
											</button>
										</div>
									</div>
								</div>
							</div>
							<div data-index="7" class="slick-slide" tabindex="-1"
								aria-hidden="true" style="outline: none; width: 244px;">
								<div>
									<div class="CoverReviewCard__Wrapper-sc-1kgiguh-0 ihDCaS">
										<div class="CoverReviewCard__ImageSection-sc-1kgiguh-1 eSCFvY">
											<a href="/products/136805/reviews"><div
													class="Image__Wrapper-v97gyx-0 gDuKGF">
													<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
														width="220"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/ksvprp5isa7lni08pvix">
													<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
														style="opacity: 1; display: block;">
														<div class="Ratio " style="display: block;">
															<div class="Ratio-ratio "
																style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																<div class="Ratio-content "
																	style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																	<img alt="review-thumbnail"
																		class="Image__StyledImage-v97gyx-1 VUNpA" width="220"
																		src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/ksvprp5isa7lni08pvix">
																</div>
															</div>
														</div>
													</div>
												</div></a>
										</div>
										<div class="CoverReviewCard__InfoSection-sc-1kgiguh-2 ggRfTm">
											<div
												class="CoverReviewCard__UserProfileSection-sc-1kgiguh-3 gvMYvX">
												<div
													class="CoverReviewCard__ProfileImage-sc-1kgiguh-4 hbfRVr">
													<div class="Image__Wrapper-v97gyx-0 gDuKGF">
														<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
															width="40" height="40"
															src="http://k.kakaocdn.net/dn/bihw7n/btqMjx4GwqR/w4CnJuV8nsbVsoJ9yMJ9uK/img_110x110.jpg">
														<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
															style="opacity: 1; display: block;">
															<div class="Ratio " style="display: block;">
																<div class="Ratio-ratio "
																	style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																	<div class="Ratio-content "
																		style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																		<img alt="user-1007868-profile"
																			class="Image__StyledImage-v97gyx-1 hPRDSh" width="40"
																			height="40"
																			src="http://k.kakaocdn.net/dn/bihw7n/btqMjx4GwqR/w4CnJuV8nsbVsoJ9yMJ9uK/img_110x110.jpg">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="CoverReviewCard__UserInfo-sc-1kgiguh-5 fsJcFt">
													<h2 class="CoverReviewCard__UserName-sc-1kgiguh-6 biuXID">재이</h2>
												</div>
											</div>
											<p class="CoverReviewCard__ProductTitle-sc-1kgiguh-7 jtBQUX">[홍대]
												1인1회 (1시간 20분)</p>
											<span
												class="SpanLineClamp-my36n9-0 CoverReviewCard__ReviewContent-sc-1kgiguh-8 gsjveC">선생님께
												배우는 두 번째 수업… 진짜 너무 재밌어요 ㅠㅠㅠㅠ 러브샷… 잘 배우고 왔습니다 ㅠ 친구가 혼자 하기
												부끄러워 해서 같이 간 거 였는데 진짜 웃다가 끝난 기분.. 다음에 친구 주특기인 여돌 춤으로 배우러 갈게요
												ㅎㅎㅎㅎㅎ 감사합니다❤️</span>
											<button type="button"
												class="CoverReviewCard__LikeButton-sc-1kgiguh-9 ccPzhh">
												<img
													src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='14' fill='none' viewBox='0 0 15 14'%3E %3Cpath stroke='%23FF3F33' stroke-miterlimit='10' stroke-width='1.5' d='M3.14 5.3l.645.382h0l.002-.003.004-.007.016-.028.062-.105.225-.385c.189-.323.447-.768.723-1.254.528-.929 1.145-2.042 1.461-2.725.015-.01.037-.025.07-.043.111-.063.273-.13.47-.192.406-.128.812-.19.967-.19.268 0 .488.217.488.492V6h5.332c.355 0 .645.287.645.65 0 .02-.001.04-.005.094l-.696 5.934s0 0 0 0c-.04.325-.314.572-.642.572h0H.75v-7.2h2.817l.218-.368L3.14 5.3z'/%3E %3Cpath fill='%23FF3F33' d='M3 6h1.5v7H3V6z'/%3E %3C/svg%3E"
													alt="thumbs-icon">2
											</button>
										</div>
									</div>
								</div>
							</div>
							<div data-index="8" class="slick-slide" tabindex="-1"
								aria-hidden="true" style="outline: none; width: 244px;">
								<div>
									<div class="CoverReviewCard__Wrapper-sc-1kgiguh-0 ihDCaS">
										<div class="CoverReviewCard__ImageSection-sc-1kgiguh-1 eSCFvY">
											<a href="/products/136805/reviews"><div
													class="Image__Wrapper-v97gyx-0 gDuKGF">
													<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
														width="220"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/sy8bxcqftwpive12ajku">
													<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
														style="opacity: 1; display: block;">
														<div class="Ratio " style="display: block;">
															<div class="Ratio-ratio "
																style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																<div class="Ratio-content "
																	style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																	<img alt="review-thumbnail"
																		class="Image__StyledImage-v97gyx-1 VUNpA" width="220"
																		src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/sy8bxcqftwpive12ajku">
																</div>
															</div>
														</div>
													</div>
												</div></a>
										</div>
										<div class="CoverReviewCard__InfoSection-sc-1kgiguh-2 ggRfTm">
											<div
												class="CoverReviewCard__UserProfileSection-sc-1kgiguh-3 gvMYvX">
												<div
													class="CoverReviewCard__ProfileImage-sc-1kgiguh-4 hbfRVr">
													<div class="Image__Wrapper-v97gyx-0 gDuKGF">
														<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
															style="opacity: 1; display: block;">
															<div class="Ratio " style="display: block;">
																<div class="Ratio-ratio "
																	style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																	<div class="Ratio-content "
																		style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																		<img
																			src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFkAAABZCAMAAABi1XidAAAAUVBMVEVHcEzz9Pby9Pb2+/vy8/f09/jq6/L////y9Pfz9ffy9ffz9Pfy8/fz9Pby9Pfy9Pby9Pfz9Pfy8/art8To6++wusi5ws7g5Orw8fTEzNbS1+C1FdKWAAAAEnRSTlMA5bIa8jsuC1GOZLnZzJ7Kt9TwOxZLAAADVklEQVRYw8VZ25arMAhNrdZqb1MgQPL/H3oe6kzb0ZBUJ+vwahfFLWxg41ze9t04NJfzroV2d740w9jt3Xbrj8Md5nYfjv02t1+Qtq/Vzg/XFmxrr4cVfrsGSqzpPo33BKV2+iTufoBPbCjG+7iDz2x3rBFwedj7G6yxW7Z4uhbWWZtJkqPCWlMT7BG22FjLseH6CFstAUinmz3r4mfct7Dd2oXk62/wF3abl8wAf2PD33+9xFfssyREEhk5CmXpqf8EC43B48N8iPoBHgf7t5ER0XMIgT0icrR//toKrA6iGhB9kEekKsEjBjPs00uNmAAzYnhFlwIim3A/66WxHXv59RbibddNCco6dzy51gKkr1ZSLDgGAPFofcbrlMsGYRAmPEREA4+2z5ZfSL41Y8gWopFy5FESjwQ9ZRKvt0okGbIqm0j3WTDCqmcPOAYz5ST5UMzEG5xzdxNmMjxbQN+d24OZc7TuIcDe5AyywjJfCKCzZgzd4nk0OX+L58HiuU0xN+5SKeaLO1eK+ex2lWLeubZSzK2DSpUCVsyg3uQNr2bMO7sJxhUMO+F8Nkcj5ORDm5/hbOYzSBpLQgMpALiYswZoutsFGwxoMrNiTOUd2WMBwJDZp1JBay5kGO2ZDkCWB46YQRmgM3vKA8+FIUm82V4fPcXqgxMes+mQOIcF3AtWH5oNnsRmc/3p3dndRzzyKyDCy1PkbN7oocC1fy4n0Rc4ht45576yP2NEZFEAUGFEo+R/tLyyVVA9MiJyiIERPdsk9zKL9rmFmxBJwrS1BckR83N+tmb+F76kGEKIlOHWt5k/tw3OPMVsNh9Kdqs5K2mWjZqyfXBh2YmZvOuKdtiFBU3VrpVTyd6tcXGpJH6tHWvvXiIPVZXIy4uwEiNyFFXNaSe/9A2VwOw9YjI0jR4RvWf+3vUT+sZ7IUaetAyOlFQQKPKkefDbvx/TOhIxog9RRMhMW1USkRj8m5YwpLUvYvSBAMrUO/2lSixoX996HZWw70JmUlKvmzRGDfl+sdh3giY1xsdXlGxTTrV4Seuizo3WUGTDHZDVlIlpXciPCXA0xfgsQaapNnOgOKwCAwDC4b/dJireUyregGrerSre2mreB2veNGveYWvejjfdu/8BI2K8ok7u95kAAAAASUVORK5CYII="
																			alt="user-908525-profile"
																			class="Image__DefaultImage-v97gyx-3 bzFlWa">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="CoverReviewCard__UserInfo-sc-1kgiguh-5 fsJcFt">
													<h2 class="CoverReviewCard__UserName-sc-1kgiguh-6 biuXID">김유민</h2>
												</div>
											</div>
											<p class="CoverReviewCard__ProductTitle-sc-1kgiguh-7 jtBQUX">[신림]
												1인1회 (1시간 20분)</p>
											<span
												class="SpanLineClamp-my36n9-0 CoverReviewCard__ReviewContent-sc-1kgiguh-8 gsjveC">너무
												재밌었어요~ 춤이 어려워서 빠듯했지만 즐거운 시간이었습니다ㅎㅎ</span>
											<button type="button"
												class="CoverReviewCard__LikeButton-sc-1kgiguh-9 ccPzhh">
												<img
													src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='14' fill='none' viewBox='0 0 15 14'%3E %3Cpath stroke='%23FF3F33' stroke-miterlimit='10' stroke-width='1.5' d='M3.14 5.3l.645.382h0l.002-.003.004-.007.016-.028.062-.105.225-.385c.189-.323.447-.768.723-1.254.528-.929 1.145-2.042 1.461-2.725.015-.01.037-.025.07-.043.111-.063.273-.13.47-.192.406-.128.812-.19.967-.19.268 0 .488.217.488.492V6h5.332c.355 0 .645.287.645.65 0 .02-.001.04-.005.094l-.696 5.934s0 0 0 0c-.04.325-.314.572-.642.572h0H.75v-7.2h2.817l.218-.368L3.14 5.3z'/%3E %3Cpath fill='%23FF3F33' d='M3 6h1.5v7H3V6z'/%3E %3C/svg%3E"
													alt="thumbs-icon">2
											</button>
										</div>
									</div>
								</div>
							</div>
							<div data-index="9" class="slick-slide" tabindex="-1"
								aria-hidden="true" style="outline: none; width: 244px;">
								<div>
									<div class="CoverReviewCard__Wrapper-sc-1kgiguh-0 ihDCaS">
										<div class="CoverReviewCard__ImageSection-sc-1kgiguh-1 eSCFvY">
											<a href="/products/136805/reviews"><div
													class="Image__Wrapper-v97gyx-0 gDuKGF">
													<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
														width="220"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/nvsptohandnxqqminhji">
													<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
														style="opacity: 1; display: block;">
														<div class="Ratio " style="display: block;">
															<div class="Ratio-ratio "
																style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																<div class="Ratio-content "
																	style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																	<img alt="review-thumbnail"
																		class="Image__StyledImage-v97gyx-1 VUNpA" width="220"
																		src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/nvsptohandnxqqminhji">
																</div>
															</div>
														</div>
													</div>
												</div></a>
										</div>
										<div class="CoverReviewCard__InfoSection-sc-1kgiguh-2 ggRfTm">
											<div
												class="CoverReviewCard__UserProfileSection-sc-1kgiguh-3 gvMYvX">
												<div
													class="CoverReviewCard__ProfileImage-sc-1kgiguh-4 hbfRVr">
													<div class="Image__Wrapper-v97gyx-0 gDuKGF">
														<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
															style="opacity: 1; display: block;">
															<div class="Ratio " style="display: block;">
																<div class="Ratio-ratio "
																	style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																	<div class="Ratio-content "
																		style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																		<img
																			src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFkAAABZCAMAAABi1XidAAAAUVBMVEVHcEzz9Pby9Pb2+/vy8/f09/jq6/L////y9Pfz9ffy9ffz9Pfy8/fz9Pby9Pfy9Pby9Pfz9Pfy8/art8To6++wusi5ws7g5Orw8fTEzNbS1+C1FdKWAAAAEnRSTlMA5bIa8jsuC1GOZLnZzJ7Kt9TwOxZLAAADVklEQVRYw8VZ25arMAhNrdZqb1MgQPL/H3oe6kzb0ZBUJ+vwahfFLWxg41ze9t04NJfzroV2d740w9jt3Xbrj8Md5nYfjv02t1+Qtq/Vzg/XFmxrr4cVfrsGSqzpPo33BKV2+iTufoBPbCjG+7iDz2x3rBFwedj7G6yxW7Z4uhbWWZtJkqPCWlMT7BG22FjLseH6CFstAUinmz3r4mfct7Dd2oXk62/wF3abl8wAf2PD33+9xFfssyREEhk5CmXpqf8EC43B48N8iPoBHgf7t5ER0XMIgT0icrR//toKrA6iGhB9kEekKsEjBjPs00uNmAAzYnhFlwIim3A/66WxHXv59RbibddNCco6dzy51gKkr1ZSLDgGAPFofcbrlMsGYRAmPEREA4+2z5ZfSL41Y8gWopFy5FESjwQ9ZRKvt0okGbIqm0j3WTDCqmcPOAYz5ST5UMzEG5xzdxNmMjxbQN+d24OZc7TuIcDe5AyywjJfCKCzZgzd4nk0OX+L58HiuU0xN+5SKeaLO1eK+ex2lWLeubZSzK2DSpUCVsyg3uQNr2bMO7sJxhUMO+F8Nkcj5ORDm5/hbOYzSBpLQgMpALiYswZoutsFGwxoMrNiTOUd2WMBwJDZp1JBay5kGO2ZDkCWB46YQRmgM3vKA8+FIUm82V4fPcXqgxMes+mQOIcF3AtWH5oNnsRmc/3p3dndRzzyKyDCy1PkbN7oocC1fy4n0Rc4ht45576yP2NEZFEAUGFEo+R/tLyyVVA9MiJyiIERPdsk9zKL9rmFmxBJwrS1BckR83N+tmb+F76kGEKIlOHWt5k/tw3OPMVsNh9Kdqs5K2mWjZqyfXBh2YmZvOuKdtiFBU3VrpVTyd6tcXGpJH6tHWvvXiIPVZXIy4uwEiNyFFXNaSe/9A2VwOw9YjI0jR4RvWf+3vUT+sZ7IUaetAyOlFQQKPKkefDbvx/TOhIxog9RRMhMW1USkRj8m5YwpLUvYvSBAMrUO/2lSixoX996HZWw70JmUlKvmzRGDfl+sdh3giY1xsdXlGxTTrV4Seuizo3WUGTDHZDVlIlpXciPCXA0xfgsQaapNnOgOKwCAwDC4b/dJireUyregGrerSre2mreB2veNGveYWvejjfdu/8BI2K8ok7u95kAAAAASUVORK5CYII="
																			alt="user-1101508-profile"
																			class="Image__DefaultImage-v97gyx-3 bzFlWa">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="CoverReviewCard__UserInfo-sc-1kgiguh-5 fsJcFt">
													<h2 class="CoverReviewCard__UserName-sc-1kgiguh-6 biuXID">오현정</h2>
												</div>
											</div>
											<p class="CoverReviewCard__ProductTitle-sc-1kgiguh-7 jtBQUX">[신림]
												1인1회 (1시간 20분)</p>
											<span
												class="SpanLineClamp-my36n9-0 CoverReviewCard__ReviewContent-sc-1kgiguh-8 gsjveC">강사님
												수업 연달아 하시는데도 에너지 넘치시고 제가 잘 못하는 동작 천천히 잘 알려주셔서 재미있게 잘 배웠습니다~!
												처음 배우는 방송 댄스였는데 더 배워보고 싶다는 생각이 들었어요 ㅎㅎ 감사합니다</span>
											<button type="button"
												class="CoverReviewCard__LikeButton-sc-1kgiguh-9 ccPzhh">
												<img
													src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='14' fill='none' viewBox='0 0 15 14'%3E %3Cpath stroke='%23FF3F33' stroke-miterlimit='10' stroke-width='1.5' d='M3.14 5.3l.645.382h0l.002-.003.004-.007.016-.028.062-.105.225-.385c.189-.323.447-.768.723-1.254.528-.929 1.145-2.042 1.461-2.725.015-.01.037-.025.07-.043.111-.063.273-.13.47-.192.406-.128.812-.19.967-.19.268 0 .488.217.488.492V6h5.332c.355 0 .645.287.645.65 0 .02-.001.04-.005.094l-.696 5.934s0 0 0 0c-.04.325-.314.572-.642.572h0H.75v-7.2h2.817l.218-.368L3.14 5.3z'/%3E %3Cpath fill='%23FF3F33' d='M3 6h1.5v7H3V6z'/%3E %3C/svg%3E"
													alt="thumbs-icon">2
											</button>
										</div>
									</div>
								</div>
							</div>
							<div data-index="10" class="slick-slide" tabindex="-1"
								aria-hidden="true" style="outline: none; width: 244px;">
								<div>
									<div class="CoverReviewCard__Wrapper-sc-1kgiguh-0 ihDCaS">
										<div class="CoverReviewCard__ImageSection-sc-1kgiguh-1 eSCFvY">
											<a href="/products/136805/reviews"><div
													class="Image__Wrapper-v97gyx-0 gDuKGF">
													<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
														width="220"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/gt4lrcoz9ujlddv0pamz">
													<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
														style="opacity: 1; display: block;">
														<div class="Ratio " style="display: block;">
															<div class="Ratio-ratio "
																style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																<div class="Ratio-content "
																	style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																	<img alt="review-thumbnail"
																		class="Image__StyledImage-v97gyx-1 VUNpA" width="220"
																		src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,r_3,w_220/gt4lrcoz9ujlddv0pamz">
																</div>
															</div>
														</div>
													</div>
												</div></a>
										</div>
										<div class="CoverReviewCard__InfoSection-sc-1kgiguh-2 ggRfTm">
											<div
												class="CoverReviewCard__UserProfileSection-sc-1kgiguh-3 gvMYvX">
												<div
													class="CoverReviewCard__ProfileImage-sc-1kgiguh-4 hbfRVr">
													<div class="Image__Wrapper-v97gyx-0 gDuKGF">
														<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh"
															width="40" height="40"
															src="https://k.kakaocdn.net/dn/coJNnC/btq2XkvQiUy/cCuprbVmaYP89HhOngJqkK/img_110x110.jpg">
														<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX"
															style="opacity: 1; display: block;">
															<div class="Ratio " style="display: block;">
																<div class="Ratio-ratio "
																	style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
																	<div class="Ratio-content "
																		style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
																		<img alt="user-1101006-profile"
																			class="Image__StyledImage-v97gyx-1 hPRDSh" width="40"
																			height="40"
																			src="https://k.kakaocdn.net/dn/coJNnC/btq2XkvQiUy/cCuprbVmaYP89HhOngJqkK/img_110x110.jpg">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="CoverReviewCard__UserInfo-sc-1kgiguh-5 fsJcFt">
													<h2 class="CoverReviewCard__UserName-sc-1kgiguh-6 biuXID">민블리</h2>
												</div>
											</div>
											<p class="CoverReviewCard__ProductTitle-sc-1kgiguh-7 jtBQUX">[신림]
												1인1회 (1시간)</p>
											<span
												class="SpanLineClamp-my36n9-0 CoverReviewCard__ReviewContent-sc-1kgiguh-8 gsjveC">영상은
												부끄러워서 못 올리고ㅠㅠ 사진을 못 찍어서 아쉽네요!!! 담에 친구들 데리구 가께여! 롤린을 정복해볼게요!
												수업 하루 전에 급하게 연락드렸눈데! 늦은 시간에도 친절히 답변주셔서 너무 감사드림미당💖 난생처음 배우는
												댄스라서 너무 긴장했는데 진짜 엄청 재밌었구 계속 웃는 얼굴로 다정하게 알려주시고 잡아주셔서 너무
												좋았어요,, 그리구 워너비 몸ㅠㅠㅠㅠ왜케 예쁘고 얼굴도 작으신지 춤 추다가 넋놓고
												감상해써여?!ㅋㅋㅋㅋㅋㅋㅋ진짜!!! 천상 댄서이신듯! 인스타도 팔로잉해쏘오! 유튜브도 구경가께요💜 실제
												롤린 댄서분께 제가 또 어디가서 배우겠어요!! 너무 좋은 귀한 경험이었구 1시간 20분이 넘 짧게
												느껴져서ㅠㅠ 아쉬워요! 또 만나요 예쁜 승희쌤💕💕💕💕💕</span>
											<button type="button"
												class="CoverReviewCard__LikeButton-sc-1kgiguh-9 ccPzhh">
												<img
													src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='14' fill='none' viewBox='0 0 15 14'%3E %3Cpath stroke='%23FF3F33' stroke-miterlimit='10' stroke-width='1.5' d='M3.14 5.3l.645.382h0l.002-.003.004-.007.016-.028.062-.105.225-.385c.189-.323.447-.768.723-1.254.528-.929 1.145-2.042 1.461-2.725.015-.01.037-.025.07-.043.111-.063.273-.13.47-.192.406-.128.812-.19.967-.19.268 0 .488.217.488.492V6h5.332c.355 0 .645.287.645.65 0 .02-.001.04-.005.094l-.696 5.934s0 0 0 0c-.04.325-.314.572-.642.572h0H.75v-7.2h2.817l.218-.368L3.14 5.3z'/%3E %3Cpath fill='%23FF3F33' d='M3 6h1.5v7H3V6z'/%3E %3C/svg%3E"
													alt="thumbs-icon">2
											</button>
										</div>
									</div>
								</div>
							</div>
							

									</div>
								</div>
							

					<img data-role="none"
						class="CoverReviewSlider__NextArrow-sc-1ty45po-1 eGlkoV slick-arrow slick-next"
						src="data:image/png;base64,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"
						style="display: block;">
				</div>
				
			</div>
			</div>
			<div class="ReviewSection__LinkWrapper-h5kv09-3 Mtrlt">
				<a class="ReviewSection__StyledLink-h5kv09-4 gzsUKO"
					href="/products/136805/reviews">90개 후기 더보기<img
					src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='none' viewBox='0 0 12 12'%3E %3Cpath fill='%230075EF' fill-rule='evenodd' d='M3.97 1.72c.293-.293.767-.293 1.06 0L9.31 6l-4.28 4.28c-.293.293-.767.293-1.06 0-.293-.293-.293-.767 0-1.06L7.19 6 3.97 2.78c-.293-.293-.293-.767 0-1.06z' clip-rule='evenodd'/%3E %3C/svg%3E"
					alt="arrow-blue"></a>
			</div>
			
		</div>
		
	</div>
	<div class="Default__SectionWrapper-sc-1oklcej-2 eHXrNY">
		<section class="Section__Wrapper-sc-15fmp0p-0 kfLoin">
			<header class="Section__Header-sc-15fmp0p-1 iNVXTg">
				<h4 class="Section__Title-sc-15fmp0p-2 jdiFgu">클래스 소개</h4>
			</header>
			<div class="Description__Wrapper-sc-1c2xu5b-0 jtBNuh">

				<div class="product-description">
					<p style="text-align: center">
						<strong>ㅡ</strong>
					</p>
					<p style="text-align: center">
						<strong>구매 후 호스트 연락처를 문자로 보내드립니다.</strong>
					</p>
					<p style="text-align: center">
						<strong>구매 전 문의사항은 Q&amp;A 게시판을 이용해주세요.</strong>
					</p>
					<p style="text-align: center">
						<strong>ㅡ</strong>
					</p>
					<p style="text-align: center">
						<br>
					</p>
					<p style="text-align: center">
						<br>
					</p>
					<p style="text-align: center">
						<br>
					</p>
					<p style="text-align: center">
						<strong style="color: #1d1c1d">&lt;당일 사용 가능 시간 안내&gt;</strong>
					</p>
					<p style="text-align: center">
						<span style="color: #1d1c1d">* 호스트와 시간 확인 후 이용 가능합니다</span>
					</p>
					<p style="text-align: center">
						<br>
					</p>
					<p style="text-align: center">
						<span style="color: #1d1c1d">■ 8월 스케줄 확인 후 당일 예약 및 참석 가능합니다
							:)</span>
					</p>
					<p style="text-align: center">
						<u>※ 하단의 8월 스케줄 참조 부탁드립니다</u>
					</p>
					<p style="text-align: center">
						<br>
					</p>
					<p style="text-align: center">
						<br>
					</p>
					<p style="text-align: center">
						<strong><u>✔️스케줄이 일정하지않아 스케줄을 올려놓지 않는거일뿐이니&nbsp;</u></strong>
					</p>
					<p style="text-align: center">
						<strong><u>일정 문의주세요^^</u></strong>
					</p>
					<p style="text-align: center">
						<br>
					</p>
					<p>
						<br>
					</p>
					<p style="text-align: center">
						<img
							src="https://res.cloudinary.com/frientrip/image/upload/c_limit,dpr_3.0,f_auto,q_auto:best,w_500/f6utfhecmbt5txgq3ff3.jpg">
					</p>
					<p style="text-align: center">
						<br>
					</p>
					<p style="text-align: center">
						안녕하세요 피치스댄스크루🍑 <strong>승희(쯩이)쌤</strong>입니다.
					</p>
					<p style="text-align: center">댄서,강사로 활동중이구요.</p>
					<p style="text-align: center">
						최신 or 추억의 <strong><u>K-pop🕺🏻</u></strong> 또는 <strong><u>Jazzdance💃🏻</u></strong>
					</p>
					<p style="text-align: center">또는!!!</p>
					<p style="text-align: center">
						<strong><u>배우고 싶으신</u></strong> 안무가 있으시면 보여주세요!
					</p>
					<p style="text-align: center">다 알려드립니다^^</p>
					<p style="text-align: center">(깡 빼고ㅋㅋㅋㅋㅋㅋ)</p>
					<p style="text-align: center">
						<br>
					</p>
					<p style="text-align: center">
						<strong>🔸홍대는 1시간20분 수업&nbsp;</strong>
					</p>
					<p style="text-align: center">
						<strong>🔸신림은 1시간 or 1시간20분 선택 가능</strong>
					</p>
					<p style="text-align: center">그때그때&nbsp;스케줄이&nbsp;달라&nbsp;우선&nbsp;문의주세요^^❣️</p>
					<p style="text-align: center">
						<br>
					</p>
					<p style="text-align: center">
						<strong><u>'레슨신청방법'</u></strong><strong>과&nbsp;</strong><strong><u>'필독'</u></strong><strong>등
							꼼꼼히 읽어봐주세요^^</strong>
					</p>
					<p style="text-align: center">
						<br>
					</p>
					<p style="text-align: center">
						‼️현재 코로나로 인해 <strong><u>소그룹레슨</u></strong>으로 진행합니다🙏🏻
					</p>
					<p style="text-align: center">
						<br>
					</p>
					<p>
						<br> <img
							src="https://res.cloudinary.com/frientrip/image/upload/c_limit,dpr_3.0,f_auto,q_auto:best,w_500/m8meotbikuqeqdvf1ixq.jpg">
					</p>
					<p style="text-align: right">수업중인 쯩이쌤♥</p>
					<p style="text-align: right">
						<img
							src="https://res.cloudinary.com/frientrip/image/upload/c_limit,dpr_3.0,f_auto,q_auto:best,w_500/ws4vmp2ysvew75tpwdzi.jpg">
					</p>
					<p style="text-align: right">수업후 쁘이♥</p>
					<p>
						<br> <img
							src="https://res.cloudinary.com/frientrip/image/upload/c_limit,dpr_3.0,f_auto,q_auto:best,w_500/ey6zpwt8qpcnwwa4k8xo.jpg">
					</p>
					<p style="text-align: right">수업후 쯩이쌤과 함께♥</p>
					<p style="text-align: center">
						<br>
					</p>
					<p style="text-align: center">
						<img
							src="https://res.cloudinary.com/frientrip/image/upload/c_limit,dpr_3.0,f_auto,q_auto:best,w_500/p3talv7m7wm6ogqq79lj.jpg">
					</p>
					<p>
						원하는 지점 스케줄 확인하기 ➡️ 원하는 지점 수강권 구입 ➡️ 승희쌤 번호로 프립 닉네임, 본인 성함과 함께 가능한
						시간대와 하고싶은곡 연락하여 알려주기 ➡️ 상세일정 예약하기 ➡️ 공지사항 및 장소 안내받기 ➡️ 레슨날 만나기♡<br>
						<br> <br>✅<strong>수강권 구매하기</strong><br>홍대점, 신림점
						수강권을 <u>구분하여</u> 구매해주셔야 합니다.<br> <br> <span
							style="color: #000000">✅</span><strong style="color: #000000">단체수업은&nbsp;2인이상&nbsp;부터
							진행</strong><br>먼저 원하는 곡과 시간으로 스케줄을 올려두고 다른분이 예약을 하면 2인 이상시 수업진행가능!<br>일정
						<u>전날까지</u> 예약자 없으면 일정을 미뤄도 되고 차액지불후 1:1로 전환해서 수업진행 가능!!<br>
						<br>✅<strong>1:1레슨, 소그룹레슨 가능</strong><br> <span
							style="color: #000000">1:1을&nbsp;원하시는&nbsp;경우&nbsp;1:1수강권을&nbsp;구입
							후 저와 상세 일정 맞추시면 됩니다^^</span><br> <strong><u>▪️소그룹레슨</u></strong>
						2:1,3:1,4:1 등 우리끼리만 하고싶다!!<br>가능하세요^^ 문의주세요^^ (3:1까지 추가요금 있음)<br>
						<br>✅<strong>수업목록에 없는 곡도 가능</strong><br> <u>배우고&nbsp;싶은&nbsp;안무</u>로&nbsp;수업&nbsp;진행이&nbsp;가능한&nbsp;점!!!^^<br>언제든&nbsp;문의&nbsp;주세요:)<br>상의&nbsp;후&nbsp;수업진행해드려요^^
						(추가요금 있음)<br> <br>✅<strong>평일,주말 추가금</strong><br> <strong>평일
						</strong><u>오전</u>(1시전)과 <u>저녁</u>(7시이후) 레슨과 <strong>주말</strong> 추가요금을
						선택해주셔야 하세요(4명부터는 추가요금없음)<br> <br> <br> <img
							src="https://res.cloudinary.com/frientrip/image/upload/c_limit,dpr_3.0,f_auto,q_auto:best,w_500/vgktzmf5a8tz5v25ol6u.jpg"><br>‼️<strong>한달안에
							사용!</strong><br>쿠폰 구입후 <u>수업 시작한날부터</u> <strong>한달안에</strong> 사용해주셔야
						합니다.(8/7일에 사용하셨으면 8/7~9/6 까지 입니다)<br> <br>‼️<strong>예약한
							날 당일은 취소 가능!</strong><br>수강권 구입 후 <u>일정예약전</u> 취소는 프립 규정에 따른 취소가 언제든
						가능하세요. 일정 <u>예약후</u>는 수업준비 시간과 예약인원수 제한(2인이상시 수업진행)이 있어 수업일 <strong>3일전</strong>까지만
						<strong><u>일정변경</u></strong>만 가능하십니다! (5일로 예약 -&gt; 2일까지 변경 가능) <strong>&nbsp;</strong><br>이후&nbsp;취소,환불&nbsp;및&nbsp;변경은&nbsp;불가능하세요,,&nbsp;양해부탁드려요😭😭<br>
						<strong>소그룹레슨은</strong> <u>1일전</u>까지 <u>최초한번</u> 변경만 가능하세요. (단,홀비
						내주셔야합니다ㅠ)<br> <strong>당일</strong>은 취소 어려우세요😭🙏🏻<br> <br>‼️<strong>일정예약
							후 출석체크!</strong><br>수업전날 <u>출석체크</u>가 되세요! <br>이상 있는게 아니니 걱정하지
						않으셔도 됩니다^^<br> <br> <br> <br> <img
							src="https://res.cloudinary.com/frientrip/image/upload/c_limit,dpr_3.0,f_auto,q_auto:best,w_500/zupkocyjbsgzvrnmmzcn.jpg"><br>⚠️코로나로
						인해 소그룹으로 진행중입니다!<br> <br>(괄호)안에 숫자는 수업 진행횟수 입니다.<br>(1)은&nbsp;첫째날,
						(2)는&nbsp;둘째날, (3)은&nbsp;셋째날&nbsp;입니다.<br>▪️첫날부터가 아닌
						둘째,셋째날부터도 수강 가능합니다.<br>ㅤ(단, 진도 진행상황 문의 주세요🙂)<br>▪️신림,논현,강남점은
						1시간 수업입니다.(1시간20분 따로표시)<br>▪️모두 오후,저녁시간입니다. (오전은 am표시)<br>▪️special
						oneday class(✨표시)<br>원데이 클래스로 <u>2시간동안&nbsp;</u>주요 안무(후렴)
						마스터입니다<br>(1시간20분권과 추가요금 1만원 수강권 선택해주시면 되세요!)<br> <br>
						<br> <strong>스케줄이 일정하지않아 일부만 올려둔거니 일정 문의주세요^^</strong><br>
						<strong>논현 월,수 정규수업은 가능하세용😀</strong><br> <br>✅<strong>&lt;홍대점&gt;</strong><br>
						<strong>8/20(금) 4:00 방탄 - dynamite(1)</strong><br> <br>✅<strong>&lt;신림점&gt;</strong><br>
						<br> <br> <br> <u>[논현,강남]&nbsp;수강권으로&nbsp;신청해주셔야합니다!</u><br>✅<strong>&lt;강남점&gt;</strong><br>
						<br> <br>✅<strong>&lt;논현점&gt;</strong><br>[정규수업]<br>
						<strong><u>8/18(수) 선미 - you can't sit with us</u></strong><u>
							첫날!!!</u>❣️<br> <br>[개인레슨,소그룹레슨]<br> <br> <br>
						<br> <img
							src="https://res.cloudinary.com/frientrip/image/upload/c_limit,dpr_3.0,f_auto,q_auto:best,w_500/egzgsxlahfdwvtbo0d3i.jpg"><br>
						<strong>[8월 kpop] 목록</strong><br> <strong>신곡,&nbsp;</strong><u>인기곡</u><strong><u>&nbsp;</u></strong>입니다^^<br>(목록에
						없는곡도 가능하나 곡에 따라 추가금이 있습니다)<br> <br>전소미 - 🔥<strong><u>덤덤</u></strong><br>선미
						- <strong>you can't sit with us</strong>, 보라빛밤, 날라리, 사이렌, 가시나<br>NCT
						dream - hello future(후렴), diggity(후렴)<br>프로미스나인 - we go(후렴)<br>방탄소년단&nbsp;-
						🔥<strong><u>permission to dance</u></strong>, 🔥<u>butter</u>,<br>ㅤㅤㅤㅤㅤㅤ<u>dynamite</u>,
						black swan, 불타오르네, idol<br>ㅤㅤㅤㅤㅤㅤ작은것들을&nbsp;위한&nbsp;시<br>있지
						- 마피아, not shy, wannabe,&nbsp;달라달라, icy<br>오마이걸 - <u>dun
							dun dance</u>, 살짝 설렜어, 돌핀<br>에스파 - 🔥<u>next level</u>, black
						mamba<br>스테이씨 - <u>ASAP</u><br>아이유 - 라일락<br>브레이브걸스
						- <u>롤린</u>, <u>운전만해,</u> <u>help me,</u> <u>아나요</u><br>보아 -
						<u>better</u><br>박재범 - 🔥<u>all i wanna do</u><br>현아 -
						I'm not cool<u>,</u> flower shower<br>몬스타엑스 - 판타지아(후렴)<br>비,박진영
						- 나로 바꾸자<br>2pm - 우리집<br>카이 - 음<br>여자친구 - mago<br>청하
						- bicycle<strong>,&nbsp;</strong>dream of you, play, stay
						tonight,&nbsp;벌써12,<br>ㅤㅤㅤchica, love u, roller coaster,
						snapping<br>트와이스 - 🔥<u>알코올프리</u>, I can't stop me,
						more&amp;more,<br> ㅤㅤㅤㅤㅤfeel special, fancy, dance the night
						away,<br>ㅤㅤㅤㅤㅤ heart shaker, ooh-ahh하게, knock knock,<br>ㅤㅤㅤㅤㅤ
						signal, likey, TT<br>마마무 - <u>딩가딩가</u><strong><u>,</u></strong><strong>&nbsp;</strong>hip,&nbsp;별이빛나는밤,&nbsp;고고베베<br>화사
						- 마리아<br>블랙핑크 - lovesick girls, how you like that, 뚜두뚜두,<br>ㅤㅤㅤㅤㅤkill
						this love,&nbsp;마지막처럼<br>리사 - 세뇨리따<u>,</u> I like it<br>배윤정,지연
						- <u>세뇨리따</u><br>제시 - 눈누난나<br>손담비 - 토요일밤에<br>지코(feat.비)
						- summer hate, 아무노래<br>싹쓰리 - 다시 여기 바닷가<br>세븐틴 -
						left&amp;right(후렴), hit<br>홍진영 - 오늘밤에, 잘가라<br>여자아이들 -
						화,&nbsp;덤디덤디, 세뇨리따<br>에이프릴&nbsp;- lalalilala<br>에이핑크&nbsp;-&nbsp;덤더럼<br>아이유
						- 삐삐<br>아이즈원&nbsp;- 피에스타,&nbsp;비올레타, 파로나마, 루머<br>태연&nbsp;-&nbsp;불티<br>모모랜드&nbsp;-
						Thumbs up,&nbsp;뿜뿜<br>에버글로우&nbsp;-&nbsp;던던<br>레드벨벳&nbsp;-
						psycho,&nbsp;빨간맛,&nbsp;짐살라빔<br>제니&nbsp;- solo<br>전소미&nbsp;-
						birthday<br>라붐 - 아로아로<br>펜타곤&nbsp;-&nbsp;빛나리<br>프로듀스X101
						-&nbsp;움직여<br>엑소&nbsp;- obsession, tempo, love shot<br>박진영&nbsp;-
						when we disco, fever<br>싸이 - 연예인<br> <u>외&nbsp;</u><strong><u>Youtube</u></strong><u>&nbsp;</u><strong><u>&lt;재즈댄서승희&gt;</u></strong><u>&nbsp;에
							있는 곡 모두 가능💪🏻</u><br> <br> <strong>[재즈 안무]</strong><br>쯩이쌤
						유튜브나 인스타에 있는 모든 재즈 안무 가능😊<br> <br> <br>&lt;승희쌤의 춤
						엿보기❣️&gt;
					</p>
					<iframe frameborder="0" allowfullscreen="true"
						src="https://www.youtube.com/embed/rkyqkm9mESg?showinfo=0"></iframe>
					<p>
						<br>
					</p>

					<p>
						<br> <br> <br> <strong>[클래스 안내]</strong><br> <strong>·&nbsp;</strong>진행
						가능 시간 : 상시 예약 가능<br> <strong>·&nbsp;</strong>문의 : Q&amp;A 게시판
						활용<br>※ 정확한 일정 협의는 Q&amp;A 게시판 또는 구매 후 문자로 발송되는 호스트 연락처로
						문의해주세요.
					</p>
					<p>
						<br>
					</p>
					<p>
						<img
							src="https://res.cloudinary.com/frientrip/image/upload/c_limit,dpr_3.0,f_auto,q_auto:best,w_500/bottom-corona-notice_u2r6sx.jpg">
					</p>
				</div>
			</div>
		</section>
		<section class="Section__Wrapper-sc-15fmp0p-0 kfLoin">
			<header class="Section__Header-sc-15fmp0p-1 iNVXTg">
				<h4 class="Section__Title-sc-15fmp0p-2 jdiFgu">포함 사항</h4>
			</header>
			<div>

				<div class="product-description">
					연습실<br>탈의실<br>영상촬영
				</div>
			</div>
		</section>
		<section class="Section__Wrapper-sc-15fmp0p-0 kfLoin">
			<header class="Section__Header-sc-15fmp0p-1 iNVXTg">
				<h4 class="Section__Title-sc-15fmp0p-2 jdiFgu">불포함 사항</h4>
			</header>
			<div>

				<div class="product-description">
					운동화<br>생수<br>주차장
				</div>
			</div>
		</section>
		<section
			class="Section__Wrapper-sc-15fmp0p-0 kfLoin ProgramSection__Wrapper-h28g81-0 csJgL">
			<header class="Section__Header-sc-15fmp0p-1 iNVXTg">
				<h4 class="Section__Title-sc-15fmp0p-2 jdiFgu">세부 일정</h4>
			</header>
			<div>
				<table class="ProgramSection__Table-h28g81-1 iPLPcJ">
					<tbody>
						<tr class="ProgramSection__TableRow-h28g81-3 jqtZPV">
							<td class="ProgramSection__Time-h28g81-5 eXeZiB">5분</td>
							<td>몸풀기</td>
						</tr>
						<tr class="ProgramSection__TableRow-h28g81-3 jqtZPV">
							<td class="ProgramSection__Time-h28g81-5 eXeZiB">65분</td>
							<td>안무배우기</td>
						</tr>
						<tr class="ProgramSection__TableRow-h28g81-3 jqtZPV">
							<td class="ProgramSection__Time-h28g81-5 eXeZiB">10분</td>
							<td>영상 촬영</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
		<section
			class="Section__Wrapper-sc-15fmp0p-0 kfLoin StuffsToPrepareSection__Wrapper-sc-1ay6i9y-0 foihoD">
			<header class="Section__Header-sc-15fmp0p-1 iNVXTg">
				<h4 class="Section__Title-sc-15fmp0p-2 jdiFgu">준비물</h4>
			</header>
			<p>운동화 편안한 옷차림 즐겁게 배울 my바디😘</p>
		</section>
		<section class="Section__Wrapper-sc-15fmp0p-0 kfLoin">
			<header class="Section__Header-sc-15fmp0p-1 iNVXTg">
				<h4 class="Section__Title-sc-15fmp0p-2 jdiFgu">유의사항</h4>
			</header>
			<div class="NoteSection__Warning-sc-1j6ad41-0 oiXzs">프립에서 구매하시지
				않는 경우, 환불 거부, 서비스 불이행 등의 문제가 생길 수 있습니다.</div>
			<div>

				<div class="product-description">
					스케줄을 자유롭게 정하여 진행합니다<br>못오실경우 전날 꼭 연락주세요<br>가능한 곡명은 매달 업로드
					됩니다<br>
					<p>
						<span style="font-family: Verdana, Geneva, sans-serif;"><strong>[신청
								시 유의사항]</strong></span>
					</p>
					<p>
						<span style="font-family: Verdana, Geneva, sans-serif;"><strong>·&nbsp;</strong>구매
							시 호스트 연락처를 문자로 보내드립니다.</span>
					</p>
					<p>
						<span style="font-family: Verdana, Geneva, sans-serif;"><strong>·&nbsp;</strong>구매
							후 업체에 전화로 가능한 날짜 예약 바랍니다.</span>
					</p>
					<p>
						<span style="font-family: Verdana, Geneva, sans-serif;"><strong>·&nbsp;</strong>예약
							확정 시 호스트가 출석체크를 진행합니다.</span>
					</p>
					<p>
						<span style="font-family: Verdana, Geneva, sans-serif;"><strong>·&nbsp;</strong>예약
							시간에 맞추어 늦지 않게 도착해 주시기 바랍니다.</span>
					</p>
				</div>
			</div>
		</section>
		<section class="Section__Wrapper-sc-15fmp0p-0 kfLoin">
			<header class="Section__Header-sc-15fmp0p-1 iNVXTg">
				<h4 class="Section__Title-sc-15fmp0p-2 jdiFgu">진행 장소</h4>
			</header>

			<div class="productlist-map_box" id="map"overflow:hidden;"></div>
			<div class="MapSection__AddressWrapper-sc-1mte25v-0 lewBkU">
				서울 관악구 신림동 1432-126 지하1층
				<!-- <button class="TextButton-sc-175c9eu-0 bFIvir">주소 복사</button> -->
			</div>

		</section>
		<div class="AccordionSection__Wrapper-sc-1eajn81-0 grChwy">
			<div class="Accordion__Wrapper-sc-11ajjas-0 fhiIvu">
				<div class="Accordion__SectionLabelWrapper-sc-11ajjas-2 jpZuSu">
					<h4 class="AccordionSection__Label-sc-1eajn81-1 product-listbtn">자주 묻는
						질문</h4>
					<div class="Accordion__ChevronWrapper-sc-11ajjas-1 lfCKVE">
						<img
							src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23000' stroke-width='1.5' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
							class="Accordion__IconArrow-sc-11ajjas-3 dTjHAc">
					</div>
				</div>
				<div class="Accordion__Content-sc-11ajjas-4 product-question">
					<div class="FAQ__Wrapper-olo0b1-0 eXkIaF">
						<div class="FAQ__Row-olo0b1-1 eESLLZ">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='%23FFF' fill-opacity='0' fill-rule='nonzero' d='M0 0h18v18H0z'/%3E %3Cpath fill='%23000' d='M3 9.112C3 5.329 5.831 3 8.992 3 12.169 3 15 5.33 15 9.112c0 1.652-.543 3.023-1.432 4.047l1.4 1.553L13.468 16l-1.432-1.586a6.2 6.2 0 0 1-3.045.793C5.832 15.207 3 12.878 3 9.112zm2.354-.017c0 2.643 1.844 3.899 3.638 3.899.51 0 1.037-.1 1.498-.298l-1.827-2.015 1.514-1.305 1.827 2.048c.395-.594.642-1.37.642-2.329 0-2.643-1.844-3.898-3.654-3.898-1.794 0-3.638 1.255-3.638 3.898z'/%3E %3C/g%3E %3C/svg%3E"
								class="FAQ__Icon-olo0b1-2 boGXOv">
							<div>신청한 프립은 어디서 확인하나요?</div>
						</div>
						<div class="FAQ__Row-olo0b1-1 eESLLZ">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='%23FFF' fill-rule='nonzero' d='M0 0h18v18H0z'/%3E %3Cpath fill='%23000' d='M12.436 15l-1.009-2.742H6.504L5.496 15H3L7.65 3h2.735L15 15h-2.564zm-3.47-9.41L7.29 10.126h3.35L8.966 5.59z'/%3E %3C/g%3E %3C/svg%3E"
								class="FAQ__Icon-olo0b1-2 boGXOv">
							<div>[마이]의 [신청 내역] 탭에서 신청하신 프립을 확인하실 수 있습니다.</div>
						</div>
					</div>
					<div class="FAQ__Wrapper-olo0b1-0 eXkIaF">
						<div class="FAQ__Row-olo0b1-1 eESLLZ">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='%23FFF' fill-opacity='0' fill-rule='nonzero' d='M0 0h18v18H0z'/%3E %3Cpath fill='%23000' d='M3 9.112C3 5.329 5.831 3 8.992 3 12.169 3 15 5.33 15 9.112c0 1.652-.543 3.023-1.432 4.047l1.4 1.553L13.468 16l-1.432-1.586a6.2 6.2 0 0 1-3.045.793C5.832 15.207 3 12.878 3 9.112zm2.354-.017c0 2.643 1.844 3.899 3.638 3.899.51 0 1.037-.1 1.498-.298l-1.827-2.015 1.514-1.305 1.827 2.048c.395-.594.642-1.37.642-2.329 0-2.643-1.844-3.898-3.654-3.898-1.794 0-3.638 1.255-3.638 3.898z'/%3E %3C/g%3E %3C/svg%3E"
								class="FAQ__Icon-olo0b1-2 boGXOv">
							<div>두 명 이상 신청하고 싶은데 어떻게 하나요?</div>
						</div>
						<div class="FAQ__Row-olo0b1-1 eESLLZ">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='%23FFF' fill-rule='nonzero' d='M0 0h18v18H0z'/%3E %3Cpath fill='%23000' d='M12.436 15l-1.009-2.742H6.504L5.496 15H3L7.65 3h2.735L15 15h-2.564zm-3.47-9.41L7.29 10.126h3.35L8.966 5.59z'/%3E %3C/g%3E %3C/svg%3E"
								class="FAQ__Icon-olo0b1-2 boGXOv">
							<div>프립에 따라 한 번에 여러명 신청하는 것이 가능하며, 1회 최대 신청 가능 인원 수는 프립별로
								다를 수 있으니 확인 부탁드립니다. 추가 신청을 원하시는 경우 추가 결제가 가능하니 참고 부탁드립니다.</div>
						</div>
					</div>
					<div class="FAQ__Wrapper-olo0b1-0 eXkIaF">
						<div class="FAQ__Row-olo0b1-1 eESLLZ">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='%23FFF' fill-opacity='0' fill-rule='nonzero' d='M0 0h18v18H0z'/%3E %3Cpath fill='%23000' d='M3 9.112C3 5.329 5.831 3 8.992 3 12.169 3 15 5.33 15 9.112c0 1.652-.543 3.023-1.432 4.047l1.4 1.553L13.468 16l-1.432-1.586a6.2 6.2 0 0 1-3.045.793C5.832 15.207 3 12.878 3 9.112zm2.354-.017c0 2.643 1.844 3.899 3.638 3.899.51 0 1.037-.1 1.498-.298l-1.827-2.015 1.514-1.305 1.827 2.048c.395-.594.642-1.37.642-2.329 0-2.643-1.844-3.898-3.654-3.898-1.794 0-3.638 1.255-3.638 3.898z'/%3E %3C/g%3E %3C/svg%3E"
								class="FAQ__Icon-olo0b1-2 boGXOv">
							<div>신청 취소 및 환불 처리는 어떻게 되나요?</div>
						</div>
						<div class="FAQ__Row-olo0b1-1 eESLLZ">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='%23FFF' fill-rule='nonzero' d='M0 0h18v18H0z'/%3E %3Cpath fill='%23000' d='M12.436 15l-1.009-2.742H6.504L5.496 15H3L7.65 3h2.735L15 15h-2.564zm-3.47-9.41L7.29 10.126h3.35L8.966 5.59z'/%3E %3C/g%3E %3C/svg%3E"
								class="FAQ__Icon-olo0b1-2 boGXOv">
							<div>구매 후 14일 이내에는 신청 취소 및 환불이 가능합니다. 다만, 14일이 지나지 않았더라도 이미
								호스트님과 일정 확정 후 출석체크가 완료되었다면 환불이 불가합니다.</div>
						</div>
					</div>
					<div class="FAQ__Wrapper-olo0b1-0 eXkIaF">
						<div class="FAQ__Row-olo0b1-1 eESLLZ">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='%23FFF' fill-opacity='0' fill-rule='nonzero' d='M0 0h18v18H0z'/%3E %3Cpath fill='%23000' d='M3 9.112C3 5.329 5.831 3 8.992 3 12.169 3 15 5.33 15 9.112c0 1.652-.543 3.023-1.432 4.047l1.4 1.553L13.468 16l-1.432-1.586a6.2 6.2 0 0 1-3.045.793C5.832 15.207 3 12.878 3 9.112zm2.354-.017c0 2.643 1.844 3.899 3.638 3.899.51 0 1.037-.1 1.498-.298l-1.827-2.015 1.514-1.305 1.827 2.048c.395-.594.642-1.37.642-2.329 0-2.643-1.844-3.898-3.654-3.898-1.794 0-3.638 1.255-3.638 3.898z'/%3E %3C/g%3E %3C/svg%3E"
								class="FAQ__Icon-olo0b1-2 boGXOv">
							<div>예약을 하고 싶은데, 호스트님의 연락처는 어떻게 알 수 있나요?</div>
						</div>
						<div class="FAQ__Row-olo0b1-1 eESLLZ">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='%23FFF' fill-rule='nonzero' d='M0 0h18v18H0z'/%3E %3Cpath fill='%23000' d='M12.436 15l-1.009-2.742H6.504L5.496 15H3L7.65 3h2.735L15 15h-2.564zm-3.47-9.41L7.29 10.126h3.35L8.966 5.59z'/%3E %3C/g%3E %3C/svg%3E"
								class="FAQ__Icon-olo0b1-2 boGXOv">
							<div>프립을 구매하시면 카카오톡 또는 문자로 호스트님의 연락처가 포함된 안내 메시지를 발송해드립니다.</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="AccordionSection__Wrapper-sc-1eajn81-0 grChwy">
			<div class="Accordion__Wrapper-sc-11ajjas-0 fhiIvu">
				<div class="Accordion__SectionLabelWrapper-sc-11ajjas-2 jpZuSu">
					<h4 class="AccordionSection__Label-sc-1eajn81-1 product-listbtn">환불 정책</h4>
					<div class="Accordion__ChevronWrapper-sc-11ajjas-1 lfCKVE">
						<img
							src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23000' stroke-width='1.5' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
							class="Accordion__IconArrow-sc-11ajjas-3 dTjHAc">
					</div>
				</div>
				<div class="Accordion__Content-sc-11ajjas-4 product-refund">
					<div>

						<div class="product-description">
							<p>티켓 구매 후 2주 이내 : 100% 환불</p>
							<p>티켓 구매 후 2주 후 : 환불 불가</p>
							<br>
							<p>[환불 신청 방법]</p>
							<p>1. 해당 프립을 결제한 계정으로 로그인</p>
							<p>2. 내 프립 - 신청내역</p>
							<p>3. 취소를 원하는 프립 상세 정보 버튼 - 취소</p>
							<p>※ 결제 수단에 따라 예금주, 은행명, 계좌번호 입력</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a59ab72fe6eb98f4d9b891ada5aaa375"></script>
<script>
	var imgs;
	var img_count;
	var img_position = 1;

	imgs = $('.product-ImageSlider ul');
	img_count = imgs.children().length;

	$('.product-ImageIndexNumber').text(img_position + ' / ' + img_count);

	$('#back').click(
			function() {

				if (1 < img_position) {
					imgs.animate({
						left : '+=520px'
					});
					img_position--;
					$('.product-ImageIndexNumber').text(
							img_position + ' / ' + img_count);
				} else if (img_position <= 1) {

				}
			});

	$('#next').click(
			function() {
				if (img_position < img_count) {
					imgs.animate({
						left : '-=520px'
					});
					img_position++;
					$('.product-ImageIndexNumber').text(
							img_position + ' / ' + img_count);
				} else if (img_position >= img_count) {

				}
			});
	
	
	var reviews;
	var review_count;
	var review_position = 1;
	

	
	/* 지도  */
	
	var container = document.getElementById('map'); // 지도 태그 선택
	
	var options = {
		center: new daum.maps.LatLng(37.551415, 126.981086), // 지도의 중앙 좌표
		level: 4 // 지도의 레벨(확대,축소)
	};
	
	var map = new daum.maps.Map(container, options); //지도 생성
	
	
       var positions = [
       	
           {
               title: '${dto.place_name}', 
               content: '<div>${dto.place_name}</div>', 
               latlng: new kakao.maps.LatLng(37.551415, 126.981086)
           }
           
          
       ];
       
       var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
        
        for (var i = 0; i < positions.length; i ++) {
            
            // 마커 이미지의 이미지 크기 입니다
            var imageSize = new kakao.maps.Size(24, 35); 
            
            // 마커 이미지를 생성합니다    
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
            
            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                map: map, // 마커를 표시할 지도
                position: positions.latlng, // 마커를 표시할 위치
                title : positions.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
                image : markerImage // 마커 이미지 
            });
            
            // 마커에 표시할 인포윈도우를 생성합니다 
            var infowindow = new kakao.maps.InfoWindow({
                content: positions[i].content // 인포윈도우에 표시할 내용
            });

            // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
            // 이벤트 리스너로는 클로저를 만들어 등록합니다 
            // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
            kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
            kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        }
        
     // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
        function makeOverListener(map, marker, infowindow) {
            return function() {
                infowindow.open(map, marker);
            };
        }

        // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
        function makeOutListener(infowindow) {
            return function() {
                infowindow.close();
            };
        }
	
	$('.product-listbtn').click(function(){
		
		var submenu = $('.product-question');
		if(submenu.is(":visible")){
			submenu.slideUP();
		} else {
			submenu.slideDown();
		}
		
	});
	
	
	
	
</script>

