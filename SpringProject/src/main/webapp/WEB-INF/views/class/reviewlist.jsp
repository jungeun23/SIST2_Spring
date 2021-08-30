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
					<span class="mr-2"><a href="/hobbylovey/index.action">홈 <i
							class="fa fa-chevron-right"></i></a></span> <span>클래스 <i
						class="fa fa-chevron-right"></i></span>
				</p>
				<h2 class="mb-0 bread">클래스 후기</h2>
			</div>
		</div>
	</div>
</section>

<div class="product-review-PageWrapper bScXKt">
	<div class="product-review-FadeWrapper koasSX"
		style="opacity: 1; display: block;">
		<header class="product-review-ReviewList-Header jsVIlB">
			<div class="product-review-ReviewList-Title inFkgu">
				<div>
					후기 <span class="product-review-ReviewList-Count jiLLze">4</span>개
				</div>
				<div class="product-review-FilterReviewWrapper dYjXLj product-review-dropdown">
					<button class="product-review-dropbtn" type="button">
						평점 높은순 <img src="../resources/images/arrow.svg" class="product-review-FilterReview esTgfk">
					</button>
					
					<div id="myDropdown" class="product-review-FilterReviewDropMenu ldipRM">
						<button type="button" class="product-review-FilterReviewOption product-review-filterReview-active">평점 높은순</button>
						<button type="button" class="product-review-FilterReviewOption hSyPxW">평점 낮은순</button>
						<button type="button" class="product-review-FilterReviewOption hSyPxW">최신순</button>
						<button type="button" class="product-review-FilterReviewOption hSyPxW">도움순</button>
					</div>
					
				</div>
			</div>




			
			
			
			<div class="product-review-ReviewListRatingSection djKoQz">
				<div class="product-review-ReviewListRatingWrapper kNKdca">
					<div class="product-review-ReadonlyWrapper jTHKhF">
						<img
							src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
							alt="평점 icon"><img
							src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
							alt="평점 icon"><img
							src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
							alt="평점 icon"><img
							src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
							alt="평점 icon"><img
							src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23DDDDDD'/%3E %3Cmask id='mask0' mask-type='alpha' maskUnits='userSpaceOnUse' x='0' y='0' width='16' height='14'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/mask%3E %3Cg mask='url(%23mask0)'%3E %3Cpath d='M0 0H11.2001V14H0V0Z' fill='%23FF3F33'/%3E %3C/g%3E %3C/svg%3E"
							alt="평점 icon">
					</div>
					<span class="product-review-ReviewList-RatingNumber kCCXl">4.75</span>
				</div>
			</div>
		</header>
		<div class="product-review-ReviewWrapper cHdjDY">
		
		
			<div class="product-review-CardReviewWrapper gPxoog">
				<div class="product-review-CardReviewHeader cCFsGh">
					<div class="product-review-CardReviewProfileImageWrapper kjfwIP">
						<div class="product-review-ImageWrapper gDuKGF">
							<img class="product-review-StyledImageLoader bUFcfh" width="48"
								src="http://k.kakaocdn.net/dn/b8Ugje/btqkoZBrkPQ/UZA4IjZaNHUyK26EKSzoJK/profile_110x110c.jpg">
							<div class="product-review-FadeWrapper koasSX"
								style="opacity: 1; display: block;">
								<div class="product-review-Ratio " style="display: block;">
									<div class="product-review-Ratio-ratio "
										style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
										<div class="product-review-Ratio-content "
											style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
											<img alt="프로필" class="product-review-StyledImage VUNpu"
												width="48"
												src="http://k.kakaocdn.net/dn/b8Ugje/btqkoZBrkPQ/UZA4IjZaNHUyK26EKSzoJK/profile_110x110c.jpg">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="product-review-CardReviewMetaData dkvMyh">
						<div class="product-review-CardReviewTitle RFTCR">leena</div>
						<div class="product-review-CardReviewRow llgSwy">
							<div class="product-review-ReadonlyWrapper jTHKhF">
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
							<div class="product-review-CardReviewCreated fbQFTO">2021년
								8월 17일 12:39 작성</div>
						</div>
					</div>
				</div>
				<div class="product-review-CardReviewBody cajFtP">춤에 대한 자신감도
					얻어가고 멋있어보이는 동작들을 쉽고 재밌게 배워 갑니다:) 대여한 공간도 넓고 에어컨도 잘나와서 쾌적했어요 ㅎㅎ 무엇보다
					선생님이 동작에 대한 설명을 계속 해주시고 같이 연습하게끔 많이 도와주세요! 초보자여도 걱정 없이 신청해서 즐겁게 배우고
					가실 수 일을 거 같아요👍🏻</div>
				<div class="product-review-CardReviewPurchaseInfo gtmZdj">
					<div class="product-review-CardReviewProductTitle cpcmqS">[21%▼]
						[서울] 초보자를 위한 Private Dance Class (예약 가능)</div>
					<div>
						<span>3명 그룹수업 (2시간) - 1인 비용, 대관료 포함</span>
					</div>
				</div>
				<div class="product-review-CardReviewLikeButtonWrapper dJZeLI">
					<button height="auto" color="#555555" font-size="10px"
						class="Button-bqxlp0-0 product-review-CardReviewLikeButton A-DHmM">
						<span>도움이 됐어요 2</span><img
							src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='none' d='M0 0h24v24H0z'/%3E %3Cpath fill='%23FFCD00' fill-rule='nonzero' d='M12 3h1v3h-1V3zm5.207 1.086l.707.707-2.121 2.121-.707-.707 2.121-2.121zm-10.121.707l.707-.707 2.121 2.121-.707.707-2.121-2.121z'/%3E %3Cpath fill='%23BBB' stroke='%23BBB' d='M4 22h4v-9H4z'/%3E %3Cpath stroke='%23BBB' d='M17.936 12h-3.958V9.388A1.38 1.38 0 0 0 12.6 8c-.497 0-.965.267-1.212.697L9 13H8v9h9.153a2 2 0 0 0 1.983-1.741l.783-6A2 2 0 0 0 17.936 12z'/%3E %3C/g%3E %3C/svg%3E"
							class="product-review-CardReviewLikeIcon jcBhKk">
					</button>
				</div>
				<div class="product-review-CardReviewImageWrapper UnEMh">
					<div class="product-review-ImageWrapper gDuKGF">
						<img class="product-review-ImageLoader bUFcfh" width="100"
							src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/rubvqollfi1l17sadbva">
						<div class="product-review-FadeWrapper koasSX"
							style="opacity: 1; display: block;">
							<div class="product-review-Ratio " style="display: block;">
								<div class="product-review-Ratio-ratio "
									style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
									<div class="product-review-Ratio-content "
										style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
										<img alt="후기 이미지" class="product-review-StyledImage VUNpu"
											width="100"
											src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/rubvqollfi1l17sadbva">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="product-review-CardReviewReplyWrapper jQDxGD">
					<div class="product-review-ReplyEntityWrapper kkZZyy">
						<div class="product-review-ReplyEntityAuthorWrapper hhuYUe">
							<div class="product-review-ReplyEntityImageWrapper ikExHj">
								<div class="product-review-ImageWrapper gDuKGF">
									<img class="product-review-ImageLoader bUFcfh" width="36"
										src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_36/Host_9393_38445_1626421350">
									<div class="product-review-FadeWrapper koasSX"
										style="opacity: 1; display: block;">
										<div class="product-review-Ratio " style="display: block;">
											<div class="product-review-Ratio-ratio "
												style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
												<div class="product-review-Ratio-content "
													style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
													<img alt="작성자 프로필" class="product-review-StyledImage VUNpu"
														width="36"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_36/Host_9393_38445_1626421350">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div>
								<div class="product-review-ReplyEntityName fatXLR">Luke</div>
								<div class="product-review-ReplyEntityCreated gyINxJ">2021-08-17
									13:48 작성</div>
							</div>
						</div>
						<div class="product-review-ReplyEntityBody bRwRGE">Leena님 수업
							너무 즐겁게 들어주셔서 저도 텐션이 up Up 되구 재밌었어요 *^_^* !! 다음 수업은 더 재밌게 준비해갈게요
							:) Lets get it !!! :)</div>
					</div>
				</div>
			</div>
			
			
			
			<div class="product-review-CardReviewWrapper gPxoog">
				<div class="product-review-CardReviewHeader cCFsGh">
					<div class="product-review-CardReviewProfileImageWrapper kjfwIP">
						<div class="product-review-ImageWrapper gDuKGF">
							<img class="product-review-ImageLoader bUFcfh" width="48"
								src="https://k.kakaocdn.net/dn/v4jE0/btqDk7vDmXY/6bIOqb1pfFeeIIcCxtndk0/img_110x110.jpg">
							<div class="product-review-FadeWrapper koasSX"
								style="opacity: 1; display: block;">
								<div class="product-review-Ratio " style="display: block;">
									<div class="product-review-Ratio-ratio "
										style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
										<div class="product-review-Ratio-content "
											style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
											<img alt="프로필" class="product-review-StyledImage VUNpu"
												width="48"
												src="https://k.kakaocdn.net/dn/v4jE0/btqDk7vDmXY/6bIOqb1pfFeeIIcCxtndk0/img_110x110.jpg">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="product-review-CardReviewMetaData dkvMyh">
						<div class="product-review-CardReviewTitle RFTCR">혜원 June
							Kim</div>
						<div class="product-review-CardReviewRow llgSwy">
							<div class="product-review-ReadonlyWrapper jTHKhF">
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
							<div class="product-review-CardReviewCreated fbQFTO">2021년
								8월 22일 19:12 작성</div>
						</div>
					</div>
				</div>
				<div class="product-review-CardReviewBody cajFtP">강사님께서 너무
					친절하게 잘 설명해주셔서 재밌고 유익했어요 :) 난이도가 낮았던 안무였던것 같아서 잘 쉽게 따라할 수 있었습니다~ 다음에
					또 기회가 되면 더 재미있는 곡으로 다시 하고 싶어요! 오랜만에 춤 춰서 너무 힘들었지만 친구들과 특별한 경험이었습니다!</div>
				<div class="product-review-CardReviewPurchaseInfo gtmZdj">
					<div class="product-review-CardReviewProductTitle cpcmqS">[21%▼]
						[서울] 초보자를 위한 Private Dance Class (예약 가능)</div>
					<div>
						<span>3명 그룹수업 (2시간) - 1인 비용, 대관료 포함</span>
					</div>
				</div>
				<div class="product-review-CardReviewLikeButtonWrapper dJZeLI">
					<button height="auto" color="#555555" font-size="10px"
						class="Button-bqxlp0-0 product-review-CardReviewLikeButton A-DHmM">
						<span>도움이 됐어요 1</span><img
							src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='none' d='M0 0h24v24H0z'/%3E %3Cpath fill='%23FFCD00' fill-rule='nonzero' d='M12 3h1v3h-1V3zm5.207 1.086l.707.707-2.121 2.121-.707-.707 2.121-2.121zm-10.121.707l.707-.707 2.121 2.121-.707.707-2.121-2.121z'/%3E %3Cpath fill='%23BBB' stroke='%23BBB' d='M4 22h4v-9H4z'/%3E %3Cpath stroke='%23BBB' d='M17.936 12h-3.958V9.388A1.38 1.38 0 0 0 12.6 8c-.497 0-.965.267-1.212.697L9 13H8v9h9.153a2 2 0 0 0 1.983-1.741l.783-6A2 2 0 0 0 17.936 12z'/%3E %3C/g%3E %3C/svg%3E"
							class="product-review-CardReviewLikeIcon jcBhKk">
					</button>
				</div>
				<div class="product-review-CardReviewImageWrapper UnEMh">
					<div class="product-review-ImageWrapper gDuKGF">
						<img class="product-review-ImageLoader bUFcfh" width="100"
							src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/ktytgulw45wkldvbmuxo">
						<div class="product-review-FadeWrapper koasSX"
							style="opacity: 1; display: block;">
							<div class="product-review-Ratio " style="display: block;">
								<div class="product-review-Ratio-ratio "
									style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
									<div class="product-review-Ratio-content "
										style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
										<img alt="후기 이미지" class="product-review-StyledImage VUNpu"
											width="100"
											src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/ktytgulw45wkldvbmuxo">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="product-review-CardReviewReplyWrapper jQDxGD">
					<div class="product-review-ReplyEntityWrapper kkZZyy">
						<div class="product-review-ReplyEntityAuthorWrapper hhuYUe">
							<div class="product-review-ReplyEntityImageWrapper ikExHj">
								<div class="product-review-ImageWrapper gDuKGF">
									<img class="product-review-ImageLoader bUFcfh" width="36"
										src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_36/Host_9393_38445_1626421350">
									<div class="product-review-FadeWrapper koasSX"
										style="opacity: 1; display: block;">
										<div class="product-review-Ratio " style="display: block;">
											<div class="product-review-Ratio-ratio "
												style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
												<div class="product-review-Ratio-content "
													style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
													<img alt="작성자 프로필" class="product-review-StyledImage VUNpu"
														width="36"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_36/Host_9393_38445_1626421350">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div>
								<div class="product-review-ReplyEntityName fatXLR">Luke</div>
								<div class="product-review-ReplyEntityCreated gyINxJ">2021-08-22
									21:27 작성</div>
							</div>
						</div>
						<div class="product-review-ReplyEntityBody bRwRGE">혜원님 소중한
							후기 감사드려요 ^^* 친구분들 모두 너무 안무를 빨리 습득하셔서 놀랐어요 !! 스트레칭이나 코어연습이 조금
							힘드셨죠^.^;;; 그만큼 몸이 좋아지니까요 ! Yessss ~~ 특병한 겸험이고 꾸르잼이라고 해주셔서 너무
							뿌듯합니다 !! 다음에 더 재밌고 퀄리티 있는 안무로 뵙겠습니다 :</div>
					</div>
				</div>
			</div>
			<div class="product-review-CardReviewWrapper gPxoog">
				<div class="product-review-CardReviewHeader cCFsGh">
					<div class="product-review-CardReviewProfileImageWrapper kjfwIP">
						<div class="product-review-ImageWrapper gDuKGF">
							<img class="product-review-ImageLoader bUFcfh" width="48"
								src="https://k.kakaocdn.net/dn/hreLe/btrbmzEIxMH/eke5cndaK9s8dBEDWDMmf1/img_110x110.jpg">
							<div class="product-review-FadeWrapper koasSX"
								style="opacity: 1; display: block;">
								<div class="product-review-Ratio " style="display: block;">
									<div class="product-review-Ratio-ratio "
										style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
										<div class="product-review-Ratio-content "
											style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
											<img alt="프로필" class="product-review-StyledImage VUNpu"
												width="48"
												src="https://k.kakaocdn.net/dn/hreLe/btrbmzEIxMH/eke5cndaK9s8dBEDWDMmf1/img_110x110.jpg">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="product-review-CardReviewMetaData dkvMyh">
						<div class="product-review-CardReviewTitle RFTCR">정승수</div>
						<div class="product-review-CardReviewRow llgSwy">
							<div class="product-review-ReadonlyWrapper jTHKhF">
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
							<div class="product-review-CardReviewCreated fbQFTO">2021년
								8월 17일 17:11 작성</div>
						</div>
					</div>
				</div>
				<div class="product-review-CardReviewBody cajFtP">직장 생활하면서 너무
					따분하고 지루한 생활들의 연속이였는데.. Luke 선생님 수업을 듣고 즐거운 취미가 생겨서 너무 좋아요 !! 감사합니다
					선생님,, 쌤의 그 높은 텐션때문에 어색하고 부끄러울 틈 없이 너무 즐거웠어요 ㅋㅋ 매주 기다려지는 수업입니다*^^*</div>
				<div class="product-review-CardReviewPurchaseInfo gtmZdj">
					<div class="product-review-CardReviewProductTitle cpcmqS">[21%▼]
						[서울] 초보자를 위한 Private Dance Class (예약 가능)</div>
					<div>
						<span>3명 그룹수업 (2시간) - 1인 비용, 대관료 포함</span>
					</div>
				</div>
				<div class="product-review-CardReviewLikeButtonWrapper dJZeLI">
					<button height="auto" color="#555555" font-size="10px"
						class="Button-bqxlp0-0 product-review-CardReviewLikeButton A-DHmM">
						<span>도움이 됐어요 1</span><img
							src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='none' d='M0 0h24v24H0z'/%3E %3Cpath fill='%23FFCD00' fill-rule='nonzero' d='M12 3h1v3h-1V3zm5.207 1.086l.707.707-2.121 2.121-.707-.707 2.121-2.121zm-10.121.707l.707-.707 2.121 2.121-.707.707-2.121-2.121z'/%3E %3Cpath fill='%23BBB' stroke='%23BBB' d='M4 22h4v-9H4z'/%3E %3Cpath stroke='%23BBB' d='M17.936 12h-3.958V9.388A1.38 1.38 0 0 0 12.6 8c-.497 0-.965.267-1.212.697L9 13H8v9h9.153a2 2 0 0 0 1.983-1.741l.783-6A2 2 0 0 0 17.936 12z'/%3E %3C/g%3E %3C/svg%3E"
							class="product-review-CardReviewLikeIcon jcBhKk">
					</button>
				</div>
				<div class="product-review-CardReviewImageWrapper UnEMh">
					<div class="product-review-ImageWrapper gDuKGF">
						<img class="product-review-ImageLoader bUFcfh" width="100"
							src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/review-android-139899-2021_08_17_17:11:09.851">
						<div class="product-review-FadeWrapper koasSX"
							style="opacity: 1; display: block;">
							<div class="product-review-Ratio " style="display: block;">
								<div class="product-review-Ratio-ratio "
									style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
									<div class="product-review-Ratio-content "
										style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
										<img alt="후기 이미지" class="product-review-StyledImage VUNpu"
											width="100"
											src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/review-android-139899-2021_08_17_17:11:09.851">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="product-review-ImageWrapper gDuKGF">
						<img class="product-review-ImageLoader bUFcfh" width="100"
							src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/review-android-139899-2021_08_17_17:11:10.746">
						<div class="product-review-FadeWrapper koasSX"
							style="opacity: 1; display: block;">
							<div class="product-review-Ratio " style="display: block;">
								<div class="product-review-Ratio-ratio "
									style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
									<div class="product-review-Ratio-content "
										style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
										<img alt="후기 이미지" class="product-review-StyledImage VUNpu"
											width="100"
											src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/review-android-139899-2021_08_17_17:11:10.746">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="product-review-ImageWrapper gDuKGF">
						<img class="product-review-ImageLoader bUFcfh" width="100"
							src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/review-android-139899-2021_08_17_17:11:11.634">
						<div class="product-review-FadeWrapper koasSX"
							style="opacity: 1; display: block;">
							<div class="product-review-Ratio " style="display: block;">
								<div class="product-review-Ratio-ratio "
									style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
									<div class="product-review-Ratio-content "
										style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
										<img alt="후기 이미지" class="product-review-StyledImage VUNpu"
											width="100"
											src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/review-android-139899-2021_08_17_17:11:11.634">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="product-review-ImageWrapper gDuKGF">
						<img class="product-review-ImageLoader bUFcfh" width="100"
							src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/review-android-139899-2021_08_17_17:11:12.482">
						<div class="product-review-FadeWrapper koasSX"
							style="opacity: 1; display: block;">
							<div class="product-review-Ratio " style="display: block;">
								<div class="product-review-Ratio-ratio "
									style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
									<div class="product-review-Ratio-content "
										style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
										<img alt="후기 이미지" class="product-review-StyledImage VUNpu"
											width="100"
											src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/review-android-139899-2021_08_17_17:11:12.482">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="product-review-CardReviewReplyWrapper jQDxGD">
					<div class="product-review-ReplyEntityWrapper kkZZyy">
						<div class="product-review-ReplyEntityAuthorWrapper hhuYUe">
							<div class="product-review-ReplyEntityImageWrapper ikExHj">
								<div class="product-review-ImageWrapper gDuKGF">
									<img class="product-review-ImageLoader bUFcfh" width="36"
										src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_36/Host_9393_38445_1626421350">
									<div class="product-review-FadeWrapper koasSX"
										style="opacity: 1; display: block;">
										<div class="product-review-Ratio " style="display: block;">
											<div class="product-review-Ratio-ratio "
												style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
												<div class="product-review-Ratio-content "
													style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
													<img alt="작성자 프로필" class="product-review-StyledImage VUNpu"
														width="36"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_36/Host_9393_38445_1626421350">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div>
								<div class="product-review-ReplyEntityName fatXLR">Luke</div>
								<div class="product-review-ReplyEntityCreated gyINxJ">2021-08-17
									17:32 작성</div>
							</div>
						</div>
						<div class="product-review-ReplyEntityBody bRwRGE">대원님 너무
							재밌으셔서 ~ ㅋㅋ 수업 후에 같이 틱톡 영상도 짧게 재미로 촬영하고 수업보다는 친구랑 즐겁게 노는 기분이여서 정말
							즐거웠어요 :) 더 즐거운 쉅으로 찾아 뵙겠습니다 !! Yess 레츠기릿 m8 !!:)</div>
					</div>
				</div>
			</div>
			<div class="product-review-CardReviewWrapper gPxoog">
				<div class="product-review-CardReviewHeader cCFsGh">
					<div class="product-review-CardReviewProfileImageWrapper kjfwIP">
						<div class="product-review-ImageWrapper gDuKGF">
							<img class="product-review-ImageLoader bUFcfh" width="48"
								src="https://k.kakaocdn.net/dn/cqoLpg/btqEm2FiujK/iQXgSAOiON40GAZX2DDG51/img_110x110.jpg">
							<div class="product-review-FadeWrapper koasSX"
								style="opacity: 1; display: block;">
								<div class="product-review-Ratio " style="display: block;">
									<div class="product-review-Ratio-ratio "
										style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
										<div class="product-review-Ratio-content "
											style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
											<img alt="프로필" class="product-review-StyledImage VUNpu"
												width="48"
												src="https://k.kakaocdn.net/dn/cqoLpg/btqEm2FiujK/iQXgSAOiON40GAZX2DDG51/img_110x110.jpg">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="product-review-CardReviewMetaData dkvMyh">
						<div class="product-review-CardReviewTitle RFTCR">김혜민_Hayes</div>
						<div class="product-review-CardReviewRow llgSwy">
							<div class="product-review-ReadonlyWrapper jTHKhF">
								<img
									src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
									alt="평점 icon"><img
									src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
									alt="평점 icon"><img
									src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
									alt="평점 icon"><img
									src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
									alt="평점 icon"><img
									src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23DDDDDD'/%3E %3Cmask id='mask0' mask-type='alpha' maskUnits='userSpaceOnUse' x='0' y='0' width='16' height='14'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/mask%3E %3Cg mask='url(%23mask0)'%3E %3C/g%3E %3C/svg%3E"
									alt="평점 icon">
							</div>
							<div class="product-review-CardReviewCreated fbQFTO">2021년
								8월 22일 19:36 작성</div>
						</div>
					</div>
				</div>
				<div class="product-review-CardReviewBody cajFtP">꾸르잼~~ㅎㅎ 오랜만에
					땀 흘리고 너무 재밌었어요오~~ 쵝오 쵝오</div>
				<div class="product-review-CardReviewPurchaseInfo gtmZdj">
					<div class="product-review-CardReviewProductTitle cpcmqS">[21%▼]
						[서울] 초보자를 위한 Private Dance Class (예약 가능)</div>
					<div>
						<span>3명 그룹수업 (2시간) - 1인 비용, 대관료 포함</span>
					</div>
				</div>
				<div class="product-review-CardReviewLikeButtonWrapper dJZeLI">
					<button height="auto" color="#555555" font-size="10px"
						class="Button-bqxlp0-0 product-review-CardReviewLikeButton A-DHmM">
						<span>도움이 됐어요 1</span><img
							src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='none' d='M0 0h24v24H0z'/%3E %3Cpath fill='%23FFCD00' fill-rule='nonzero' d='M12 3h1v3h-1V3zm5.207 1.086l.707.707-2.121 2.121-.707-.707 2.121-2.121zm-10.121.707l.707-.707 2.121 2.121-.707.707-2.121-2.121z'/%3E %3Cpath fill='%23BBB' stroke='%23BBB' d='M4 22h4v-9H4z'/%3E %3Cpath stroke='%23BBB' d='M17.936 12h-3.958V9.388A1.38 1.38 0 0 0 12.6 8c-.497 0-.965.267-1.212.697L9 13H8v9h9.153a2 2 0 0 0 1.983-1.741l.783-6A2 2 0 0 0 17.936 12z'/%3E %3C/g%3E %3C/svg%3E"
							class="product-review-CardReviewLikeIcon jcBhKk">
					</button>
				</div>
				<div class="product-review-CardReviewImageWrapper UnEMh">
					<div class="product-review-ImageWrapper gDuKGF">
						<img class="product-review-ImageLoader bUFcfh" width="100"
							src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/zi9toq716vvs4s2pkenu">
						<div class="product-review-FadeWrapper koasSX"
							style="opacity: 1; display: block;">
							<div class="product-review-Ratio " style="display: block;">
								<div class="product-review-Ratio-ratio "
									style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
									<div class="product-review-Ratio-content "
										style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
										<img alt="후기 이미지" class="product-review-StyledImage VUNpu"
											width="100"
											src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/zi9toq716vvs4s2pkenu">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="product-review-CardReviewReplyWrapper jQDxGD">
					<div class="product-review-ReplyEntityWrapper kkZZyy">
						<div class="product-review-ReplyEntityAuthorWrapper hhuYUe">
							<div class="product-review-ReplyEntityImageWrapper ikExHj">
								<div class="product-review-ImageWrapper gDuKGF">
									<img class="product-review-ImageLoader bUFcfh" width="36"
										src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_36/Host_9393_38445_1626421350">
									<div class="product-review-FadeWrapper koasSX"
										style="opacity: 1; display: block;">
										<div class="product-review-Ratio " style="display: block;">
											<div class="product-review-Ratio-ratio "
												style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
												<div class="product-review-Ratio-content "
													style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
													<img alt="작성자 프로필" class="product-review-StyledImage VUNpu"
														width="36"
														src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_36/Host_9393_38445_1626421350">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div>
								<div class="product-review-ReplyEntityName fatXLR">Luke</div>
								<div class="product-review-ReplyEntityCreated gyINxJ">2021-08-22
									21:22 작성</div>
							</div>
						</div>
						<div class="product-review-ReplyEntityBody bRwRGE">너무 잘하셨어요
							!! :) 소중한 후기 감사드립니다 ^_^ 다음에 더 꾸르잼 안무로 뵙겠습니다 :)</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row mt-5">
			<div class="col text-center">
				<div class="block-27">
					<ul>
						<li><a href="#">&lt;</a></li>
						<li class="active"><span>1</span></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&gt;</a></li>
					</ul>
				</div>
			</div>
		</div>

	</div>
</div>

<script type="text/javascript">

	$(function(){
		$('#myDropdown').hide();
		$('.product-review-dropbtn').click(function(){
			$('#myDropdown').slideToggle();
		});
		
		var img = $('.product-review-dropbtn').find('img');
		
		$('#myDropdown').children().click(function(){
			//alert($(this).hasClass('product-review-filterReview-active'));
			$('#myDropdown').children().removeClass('product-review-filterReview-active');
			$(this).addClass('product-review-filterReview-active');
			$('.product-review-dropbtn').text($(this).text());
			$('.product-review-dropbtn').append('<img src="../resources/images/arrow.svg" class="product-review-FilterReview esTgfk">');
		});
		
		/* todo: document를 클릭하면 드롭다운 사라지도록.. 그 이후에 반응 제대로 하도록.. */
		
	});
	
</script>

