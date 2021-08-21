<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
					<span class="mr-2"><a href="index.html">Home <i
							class="fa fa-chevron-right"></i></a></span>마이페이지 <span><i
						class="fa fa-chevron-right"></i> 후기</span>
				</p>
				<h2 class="mb-0 bread">나의 후기</h2>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section">
	<div class="container" style="padding-left: 250px;">
		<div class="row d-flex" style="border-bottom: 1px solid rgb(238, 238, 238);">
			<div class="reviewList">
				<div class="cardReview_wrapper">
					<div class="cardReview_header">
						<div class="cardReview_profileImageWrapper">
							<div class="image_wrapper">
								<img src="http://k.kakaocdn.net/dn/nvKU5/btqhWhr6j7T/Hda3g37cvU0LkD5AM3ZxgK/profile_110x110c.jpg" alt="" class="image_styleImageLoader" />
								<div class="fade_wrapper">
									<div class="ratio">
										<div class="ratio-ratio">
											<div class="ratio-content">
												<img src="http://k.kakaocdn.net/dn/nvKU5/btqhWhr6j7T/Hda3g37cvU0LkD5AM3ZxgK/profile_110x110c.jpg" alt="" class="image_styledImage" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="cardReview_metaData">
							<div class="cardReview_title">홍길동</div>
							<div class="cardReview_row">
								<div class="readOnly_wrapper">
									<img src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E" alt="평점 icon" />
									<img src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E" alt="평점 icon" />
									<img src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E" alt="평점 icon" />
									<img src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E" alt="평점 icon" />
									<img src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E" alt="평점 icon" />
								</div>
								<div class="cardReview_created">
									2021년 08월 21일 17:57분 작성
								</div>
							</div>
						</div>
					</div>
					<div class="cardReview_body">안녕하세요, 저 떠내려가서 여러 강사님도움받았던 사람이예요^^;
생애 첫 서핑이였는데 날씨도좋았고 파도도좋은날이였다고  하셔서 참여한 입장에서 더 즐거웠어요.
서핑보드에 잘올라서지는 못했지만 전 보드위에 엎드려서 파도타는거만으로 정말재미있었고 만족100프로예요.
앞으로 주변 지인들이 서핑가고싶다고하면 진심 브라보서핑 추천할게요^.^
뽀송한 수트도 마지막 피자도 모두 만족스러웠고 안목해변도 정말 여유롭고 좋았네요.
기대이상의 힐링을 주셔서 감사합니다!</div>
					<div class="cardReview_purchaseInfo">
						<div class="cardReview_productTitle">[찐친프립][강릉] 서핑 배우기+당일+버스포함 #브라보서프</div>
						<div>
							<span>2020년 7월 4일 오전 7:10</span>
							<span>
								<span> | </span>
								(1인) 강습 + 보드&슈트렌탈 + 프립왕복버스
							</span>
						</div>
					</div>
					<div class="cardReview_likeButtonWrapper">
						<button class="cardReview_likeButton">
							<span>
								도움이 됐어요
								18
							</span>
							<img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='none' d='M0 0h24v24H0z'/%3E %3Cpath fill='%23FFCD00' fill-rule='nonzero' d='M12 3h1v3h-1V3zm5.207 1.086l.707.707-2.121 2.121-.707-.707 2.121-2.121zm-10.121.707l.707-.707 2.121 2.121-.707.707-2.121-2.121z'/%3E %3Cpath fill='%23BBB' stroke='%23BBB' d='M4 22h4v-9H4z'/%3E %3Cpath stroke='%23BBB' d='M17.936 12h-3.958V9.388A1.38 1.38 0 0 0 12.6 8c-.497 0-.965.267-1.212.697L9 13H8v9h9.153a2 2 0 0 0 1.983-1.741l.783-6A2 2 0 0 0 17.936 12z'/%3E %3C/g%3E %3C/svg%3E" alt="" class="cardReview_likeIcon" />
						</button>
					</div>
					<div class="cardReview_imageWrapper-f2ssd2-13">
						<div class="image_wraper-v97gyx-0">
							<img src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/lrkes9oqvjmqcr4a7rrd" alt="" class="image_styledImageLoader_v97-gyx-2" />
							<div class="fade_wrapper-sc-1s0ipfq-0">
								<div class="ratio">
									<div class="ratio-ratio">
										<div class="ratio-content">
											<img src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/lrkes9oqvjmqcr4a7rrd" alt="후기 이미지" class="image_styledImage-v97gyx-1" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cardReview_replyWrapper">
						<div class="replyEntity_wrapper">
							<div class="replyEntity_authorWrapper">
								<div class="replyEntity_imageWrapper">
									<div class="image_wraper-v97gyx-0">
										<img src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_36/Host_7750_78384_1589201606" alt="" class="image_styledImageLoader" />
										<div class="fade_wrapper" style="opacity: 1; display: block;">
											<div class="ratio">
												<div class="ratio-ratio">
													<div class="ratio-content">
														<img src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_36/Host_7750_78384_1589201606" alt="작성자 프로필" class="image_styledImage" />
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div>
									<div class="replyEntity_name">아무개</div>
									<div class="replyEntity_created">
										2020-07-08 10:08 작성
									</div>
								</div>
							</div>
							<div class="replyEntity_body-sc-2hf8ms-5">선미님 힐링하고  가셨다니 보람이 느껴지네요~~
"칭찬은 고래도  춤추게한다"고 더욱 진심을 다하겠습니다~~^^</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</div>
</section>





