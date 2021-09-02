<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
					<span class="mr-2"><a href="/hobbylovey/index.action">홈
							<i class="fa fa-chevron-right"></i>
					</a></span> <span>클래스 <i class="fa fa-chevron-right"></i></span>
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
					<c:forEach items="${classImgList}" var="cidto">
						<li><img
							src="/hobbylovey/resources/images/classimage/${cidto.classImage}"></li>
					</c:forEach>
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

					<label class="product-InfoTitle">${cddto.title}</label>
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
					<fmt:formatNumber value="${cddto.price}" pattern="#,###" />
					<span class="product-PriceInfo-PriceUnit"> 원</span>
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
								class="Profile__NickName-sc-18xe7ny-7 cZgpqN"><span>${hdto.nickname}</span><img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='none' viewBox='0 0 16 16'%3E %3Cpath stroke='%23333' stroke-linecap='round' stroke-width='1.5' d='M6 3l5 5-5 5'/%3E %3C/svg%3E"
									alt="arrow-right"></span></a>
						</div>
						<span class="product-ProfileStat">클래스 ${hCount} <span>
								| </span> 후기 ${hrCount} <span> |</span> 저장 ${hsCount}
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

		<div
			class="ReviewSection__ReviewSectionWrapper-h5kv09-1 eUAXZD reviewMove">
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

							<!-- 후기 목록 -->
							<c:forEach items="${reviewList}" var="rldto">
							<c:set var="i" value="${i+1}" />
							<div data-index="${i}"
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
																		src="/hobbylovey/resources/images/${rldto.reviewImage}">
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
															src="/hobbylovey/resources/images/userDefault.png">
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
																			src="/hobbylovey/resources/images/userDefault.png">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="CoverReviewCard__UserInfo-sc-1kgiguh-5 fsJcFt">
													<h2 class="CoverReviewCard__UserName-sc-1kgiguh-6 biuXID">${rldto.name}</h2>
												</div>
											</div>
											<p class="CoverReviewCard__ProductTitle-sc-1kgiguh-7 jtBQUX">${rldto.classOption}</p>
											<span
												class="SpanLineClamp-my36n9-0 CoverReviewCard__ReviewContent-sc-1kgiguh-8 gsjveC">${rldto.content}</span>
											<button type="button"
												class="CoverReviewCard__LikeButton-sc-1kgiguh-9 ccPzhh">
												<img
													src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='14' fill='none' viewBox='0 0 15 14'%3E %3Cpath stroke='%23FF3F33' stroke-miterlimit='10' stroke-width='1.5' d='M3.14 5.3l.645.382h0l.002-.003.004-.007.016-.028.062-.105.225-.385c.189-.323.447-.768.723-1.254.528-.929 1.145-2.042 1.461-2.725.015-.01.037-.025.07-.043.111-.063.273-.13.47-.192.406-.128.812-.19.967-.19.268 0 .488.217.488.492V6h5.332c.355 0 .645.287.645.65 0 .02-.001.04-.005.094l-.696 5.934s0 0 0 0c-.04.325-.314.572-.642.572h0H.75v-7.2h2.817l.218-.368L3.14 5.3z'/%3E %3Cpath fill='%23FF3F33' d='M3 6h1.5v7H3V6z'/%3E %3C/svg%3E"
													alt="thumbs-icon">${rldto.recommend}
											</button>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
							
							

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
				href="/products/136805/reviews">${reviewList.size()}개 후기 더보기<img
				src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='none' viewBox='0 0 12 12'%3E %3Cpath fill='%230075EF' fill-rule='evenodd' d='M3.97 1.72c.293-.293.767-.293 1.06 0L9.31 6l-4.28 4.28c-.293.293-.767.293-1.06 0-.293-.293-.293-.767 0-1.06L7.19 6 3.97 2.78c-.293-.293-.293-.767 0-1.06z' clip-rule='evenodd'/%3E %3C/svg%3E"
				alt="arrow-blue"></a>
		</div>

	</div>


	<div class="Default__SectionWrapper-sc-1oklcej-2 eHXrNY">
		<section class="Section__Wrapper-sc-15fmp0p-0 kfLoin">
			<header class="Section__Header-sc-15fmp0p-1 iNVXTg">
				<h4 class="Section__Title-sc-15fmp0p-2 jdiFgu">클래스 소개</h4>
			</header>
			<div class="Description__Wrapper-sc-1c2xu5b-0 jtBNuh">

				<div class="product-description">${cddto.content}</div>
			</div>
		</section>

		<section class="Section__Wrapper-sc-15fmp0p-0 kfLoin">
			<header class="Section__Header-sc-15fmp0p-1 iNVXTg">
				<h4 class="Section__Title-sc-15fmp0p-2 jdiFgu">진행 장소</h4>
			</header>

			<div class="productlist-map_box" id="map"overflow:hidden;"></div>
			<div class="MapSection__AddressWrapper-sc-1mte25v-0 lewBkU">
				${cddto.location}
				<!-- <button class="TextButton-sc-175c9eu-0 bFIvir">주소 복사</button> -->
			</div>

		</section>
		<div class="product-Accordion-group">
			<div class="AccordionSection__Wrapper grChwy ">
				<div class="Accordion__Wrapper-sc-11ajjas-0 fhiIvu">
					<div class="Accordion__SectionLabelWrapper-sc-11ajjas-2 jpZuSu">
						<h4 class="AccordionSection__Label product-listbtn">자주 묻는 질문</h4>
						<div class="Accordion__ChevronWrapper-sc-11ajjas-1 lfCKVE">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23000' stroke-width='1.5' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
								class="Accordion__IconArrow-sc-11ajjas-3 dTjHAc">
						</div>
					</div>
					<div class="Accordion__Content product-question">
						<div class="FAQ__Wrapper-olo0b1-0 eXkIaF">
							<div class="FAQ__Row-olo0b1-1 eESLLZ">
								<img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='%23FFF' fill-opacity='0' fill-rule='nonzero' d='M0 0h18v18H0z'/%3E %3Cpath fill='%23000' d='M3 9.112C3 5.329 5.831 3 8.992 3 12.169 3 15 5.33 15 9.112c0 1.652-.543 3.023-1.432 4.047l1.4 1.553L13.468 16l-1.432-1.586a6.2 6.2 0 0 1-3.045.793C5.832 15.207 3 12.878 3 9.112zm2.354-.017c0 2.643 1.844 3.899 3.638 3.899.51 0 1.037-.1 1.498-.298l-1.827-2.015 1.514-1.305 1.827 2.048c.395-.594.642-1.37.642-2.329 0-2.643-1.844-3.898-3.654-3.898-1.794 0-3.638 1.255-3.638 3.898z'/%3E %3C/g%3E %3C/svg%3E"
									class="FAQ__Icon-olo0b1-2 boGXOv">
								<div>신청한 클래스는 어디서 확인하나요?</div>
							</div>
							<div class="FAQ__Row-olo0b1-1 eESLLZ">
								<img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='%23FFF' fill-rule='nonzero' d='M0 0h18v18H0z'/%3E %3Cpath fill='%23000' d='M12.436 15l-1.009-2.742H6.504L5.496 15H3L7.65 3h2.735L15 15h-2.564zm-3.47-9.41L7.29 10.126h3.35L8.966 5.59z'/%3E %3C/g%3E %3C/svg%3E"
									class="FAQ__Icon-olo0b1-2 boGXOv">
								<div>[마이페이지]의 [신청 내역] 탭에서 신청하신 클래스을 확인하실 수 있습니다.</div>
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
								<div>클래스에 따라 한 번에 여러명 신청하는 것이 가능하며, 1회 최대 신청 가능 인원 수는
									클래스별로 다를 수 있으니 확인 부탁드립니다. 추가 신청을 원하시는 경우 추가 결제가 가능하니 참고 부탁드립니다.</div>
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
								<div>구매 후 14일 이내에는 신청 취소 및 환불이 가능합니다. 다만, 14일이 지나지 않았더라도
									이미 호스트님과 일정 확정 후 출석체크가 완료되었다면 환불이 불가합니다.</div>
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
								<div>클래스를 구매하시면 카카오톡 또는 문자로 호스트님의 연락처가 포함된 안내 메시지를
									발송해드립니다.</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="AccordionSection__Wrapper grChwy ">
				<div class="Accordion__Wrapper-sc-11ajjas-0 fhiIvu">
					<div class="Accordion__SectionLabelWrapper-sc-11ajjas-2 jpZuSu">
						<h4 class="AccordionSection__Label product-listbtn">환불 정책</h4>
						<div class="Accordion__ChevronWrapper-sc-11ajjas-1 lfCKVE">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23000' stroke-width='1.5' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
								class="Accordion__IconArrow-sc-11ajjas-3 dTjHAc">
						</div>
					</div>
					<div class="Accordion__Content product-refund">
						<div>

							<div class="product-description">
								<p>티켓 구매 후 2주 이내 : 100% 환불</p>
								<p>티켓 구매 후 2주 후 : 환불 불가</p>
								<br>
								<p>[환불 신청 방법]</p>
								<p>1. 해당 클래스를 결제한 계정으로 로그인</p>
								<p>2. 내 클래스 - 신청내역</p>
								<p>3. 취소를 원하는 클래스 상세 정보 버튼 - 취소</p>
								<p>※ 결제 수단에 따라 예금주, 은행명, 계좌번호 입력</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="Wrapper__FloatingActionBarWrapper-aopuoy-0 ifNxJR">
		<div class="FloatingActionBar__FloatingButtonWrapper-a3gyda-0 dIeHJQ">
			<button
				class="SaveActionButton__Button-sc-18l2t54-0 dQtonX enp_mobon_cart"
				type="button">
				<img
					src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='32' height='32' fill='none' viewBox='0 0 32 32'%3E %3Cpath stroke='%23333' stroke-width='1.5' d='M15.043 19.962l-.028.02-.027.021-7.571 6.384V5.827c0-1.273 1.155-2.41 2.73-2.41h11.706c1.569 0 2.73 1.138 2.73 2.41v20.56l-7.571-6.384-.027-.022-.028-.02c-.291-.203-.634-.293-.957-.293-.323 0-.665.09-.957.294z'/%3E %3C/svg%3E"
					alt="상품 저장"><span
					class="SaveActionButton__Count-sc-18l2t54-1 hxJYoP">1,014</span>
			</button>
			<button
				class="Button-bqxlp0-0 lgvYfv Button__StyledSubmitButton-sc-1dkzbac-0 eIJDxV" onclick="location.href='/hobbylovey/class/option.action?classSeq=${classSeq}';"
				width="100%" height="56px" color="white" font-size="16px">
				<div class="DefaultButton__ActionLabel-sc-4mlqfg-0 eaCxDu">참여하기</div>
			</button>
		</div>s
	</div>


</div>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a59ab72fe6eb98f4d9b891ada5aaa375"></script>
<script>
	var imgs;
	var img_count;
	var img_position = 1;

	/* 썸네일 사진 움직이기 */
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

	/* 후기 사진 움직이기 */
	var reviews = $('.hlWAni .slick-list');
	var review_position = 1;
	var review_count = $('.hlWAni .slick-track').children().length;
	var real_count = review_count / 4;
	$('.hlWAni .slick-arrow.slick-disabled').click(function() {
		if (1 < review_position) {
			reviews.animate({
				left : '+=976px'
			});
			review_position--;
			$('.hlWAni .slick-arrow.slick-next').css('display', 'block');
		} else if (review_position <= 1) {
			$('.hlWAni .slick-arrow.slick-disabled').css('display', 'none');
		}
	});

	$('.hlWAni .slick-arrow.slick-next').click(function() {

		if (review_position < real_count) {
			reviews.animate({
				left : '-=976px'
			});
			review_position++;
			$('.hlWAni .slick-arrow.slick-disabled').css('display', 'block');
		} else if (review_position >= real_count) {
			$('.hlWAni .slick-arrow.slick-next').css('display', 'none');
		}
	});

	/* 지도  */

	var container = document.getElementById('map'); // 지도 태그 선택

	var options = {
		center : new daum.maps.LatLng(37.551415, 126.981086), // 지도의 중앙 좌표
		level : 4
	// 지도의 레벨(확대,축소)
	};

	var map = new daum.maps.Map(container, options); //지도 생성

	var positions = [

	{
		title : '${dto.place_name}',
		content : '<div>${dto.place_name}</div>',
		latlng : new kakao.maps.LatLng(37.551415, 126.981086)
	}

	];

	var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

	for (var i = 0; i < positions.length; i++) {

		// 마커 이미지의 이미지 크기 입니다
		var imageSize = new kakao.maps.Size(24, 35);

		// 마커 이미지를 생성합니다    
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			map : map, // 마커를 표시할 지도
			position : positions.latlng, // 마커를 표시할 위치
			title : positions.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
			image : markerImage
		// 마커 이미지 
		});

		// 마커에 표시할 인포윈도우를 생성합니다 
		var infowindow = new kakao.maps.InfoWindow({
			content : positions[i].content
		// 인포윈도우에 표시할 내용
		});

		// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		// 이벤트 리스너로는 클로저를 만들어 등록합니다 
		// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map,
				marker, infowindow));
		kakao.maps.event.addListener(marker, 'mouseout',
				makeOutListener(infowindow));
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

	/* 자주묻는질문,공지사항 아코디언  */
	$(function() {
		var group = $('.product-Accordion-group');

		group.each(function() {
			var _group = new GroupBox(this);
		});

		function GroupBox(groupElement) {

			var box = $(groupElement).find(".AccordionSection__Wrapper");
			var title = $(groupElement).find(".AccordionSection__Label");

			box.each(function(idx) {

				var newBox = new RootBox(this);
				if (idx > 0) {
					newBox.siblingsClose();
				}

			});
		}

		function RootBox(boxElement) {
			var _this = this;
			var boxEl = $(boxElement);
			var target = $(boxEl).find(".AccordionSection__Label");
			var cont = $(boxEl).find(".Accordion__Content");

			target.on("click", anchorClickEvent);

			function anchorClickEvent() {
				if (cont.is(':hidden')) {
					_this.open();
				} else {
					_this.close();
				}
			}

			_this.siblingsClose = function() {
				cont.css('display', 'hide');
			};

			_this.open = function() {
				cont.slideDown();
			};
			_this.close = function() {
				cont.slideUp();
			}
		}

	});
</script>

