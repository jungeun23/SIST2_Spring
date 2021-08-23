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
						class="fa fa-chevron-right"></i> 후기</span>
				</p>
				<h2 class="mb-0 bread">나의 후기</h2>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section">
	<div class="container">
		<div class="row d-flex"
			style="border-bottom: 1px solid rgb(238, 238, 238);">

			<div id="customer_info">
				<div class="CustomerInfo__Wrapper-wiqp5v-0 jersza">
					<div class="CustomerInfo__InfoWrapper-wiqp5v-1 fSUxZv">
						<div class="CustomerInfo__MetaData-wiqp5v-2 hYJTCm">
							<div class="CustomerInfo__Name-wiqp5v-3 hLhGnd">
								<a class="CustomerInfo__NameTextLink-wiqp5v-4 JiXdX" href="#!">아이디</a>
								<a href="/more"><img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='59' height='20' viewBox='0 0 59 20'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Crect width='58' height='19' x='.5' y='.5' stroke='%23333' rx='9.5'/%3E %3Cpath fill='%23333' fill-rule='nonzero' d='M28.811 14.869V4.903h-1.133v3.531h-2.662v.935h2.662v5.5h1.133zm-6.985-2.431c.968 0 1.767-.022 2.398-.066.697-.051 1.375-.14 2.035-.264l-.11-.913c-.601.11-1.217.187-1.848.231-.55.037-1.258.059-2.123.066V6.751h3.377v-.924h-4.51v6.611h.781zm17.353 1.199v-.935H35.23V10.7h2.915V5.574h-1.122v1.672h-4.708V5.574h-1.122V10.7h2.904v2.002h-3.916v.935h8.998zm-2.156-3.85h-4.708V8.159h4.708v1.628zm10.973 5.06V4.914h-1.133v9.933h1.133zm-7.524-1.771c1.628-.792 2.82-1.815 3.575-3.069.352-.587.612-1.228.781-1.925.161-.653.242-1.36.242-2.123h-4.708v.924h3.542c-.103 1.166-.473 2.178-1.111 3.036-.667.887-1.643 1.639-2.926 2.255l.605.902z'/%3E %3Cpath fill='%23333' d='M14.3 6.002l1.522.879-.334 1.13c.174.23.314.483.416.751l1.11.266-.03 1.809-1.118.303c-.056.134-.121.267-.196.397-.075.13-.158.253-.247.368l.297 1.12-1.551.931-.785-.828c-.284.045-.573.051-.86.015l-.81.855-1.522-.879.334-1.13c-.175-.23-.314-.483-.416-.751L9 10.972l.03-1.809 1.119-.303c.055-.135.12-.267.195-.397.075-.13.158-.253.246-.368l-.296-1.12 1.551-.931.785.828c.284-.045.572-.051.859-.015l.812-.855zM13.008 9c-.552 0-1 .448-1 1s.448 1 1 1 1-.448 1-1-.448-1-1-1z'/%3E %3C/g%3E %3C/svg%3E"
									alt="더보기" class="CustomerInfo__MoreButton-wiqp5v-5 gqCwlj"></a>
							</div>
							<div class="CustomerInfo__AccountType-wiqp5v-6 louFxa">이메일
								계정</div>
						</div>
						<label class="ImageProfile__Wrapper-i59a6p-0 bwVeRo"> <input
							type="file" accept=".jpg, .jpeg, .png">
							<div
								class="Image__Wrapper-v97gyx-0 gDuKGF ImageProfile__StyledImage-i59a6p-3 khIEaS">
								<div class="Ratio " style="display: block;">
									<div class="Ratio-ratio "
										style="height: 0px; position: relative; width: 100%; padding-top: 100%;">
										<div class="Ratio-content "
											style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;">
											<img
												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFkAAABZCAMAAABi1XidAAAAUVBMVEVHcEzz9Pby9Pb2+/vy8/f09/jq6/L////y9Pfz9ffy9ffz9Pfy8/fz9Pby9Pfy9Pby9Pfz9Pfy8/art8To6++wusi5ws7g5Orw8fTEzNbS1+C1FdKWAAAAEnRSTlMA5bIa8jsuC1GOZLnZzJ7Kt9TwOxZLAAADVklEQVRYw8VZ25arMAhNrdZqb1MgQPL/H3oe6kzb0ZBUJ+vwahfFLWxg41ze9t04NJfzroV2d740w9jt3Xbrj8Md5nYfjv02t1+Qtq/Vzg/XFmxrr4cVfrsGSqzpPo33BKV2+iTufoBPbCjG+7iDz2x3rBFwedj7G6yxW7Z4uhbWWZtJkqPCWlMT7BG22FjLseH6CFstAUinmz3r4mfct7Dd2oXk62/wF3abl8wAf2PD33+9xFfssyREEhk5CmXpqf8EC43B48N8iPoBHgf7t5ER0XMIgT0icrR//toKrA6iGhB9kEekKsEjBjPs00uNmAAzYnhFlwIim3A/66WxHXv59RbibddNCco6dzy51gKkr1ZSLDgGAPFofcbrlMsGYRAmPEREA4+2z5ZfSL41Y8gWopFy5FESjwQ9ZRKvt0okGbIqm0j3WTDCqmcPOAYz5ST5UMzEG5xzdxNmMjxbQN+d24OZc7TuIcDe5AyywjJfCKCzZgzd4nk0OX+L58HiuU0xN+5SKeaLO1eK+ex2lWLeubZSzK2DSpUCVsyg3uQNr2bMO7sJxhUMO+F8Nkcj5ORDm5/hbOYzSBpLQgMpALiYswZoutsFGwxoMrNiTOUd2WMBwJDZp1JBay5kGO2ZDkCWB46YQRmgM3vKA8+FIUm82V4fPcXqgxMes+mQOIcF3AtWH5oNnsRmc/3p3dndRzzyKyDCy1PkbN7oocC1fy4n0Rc4ht45576yP2NEZFEAUGFEo+R/tLyyVVA9MiJyiIERPdsk9zKL9rmFmxBJwrS1BckR83N+tmb+F76kGEKIlOHWt5k/tw3OPMVsNh9Kdqs5K2mWjZqyfXBh2YmZvOuKdtiFBU3VrpVTyd6tcXGpJH6tHWvvXiIPVZXIy4uwEiNyFFXNaSe/9A2VwOw9YjI0jR4RvWf+3vUT+sZ7IUaetAyOlFQQKPKkefDbvx/TOhIxog9RRMhMW1USkRj8m5YwpLUvYvSBAMrUO/2lSixoX996HZWw70JmUlKvmzRGDfl+sdh3giY1xsdXlGxTTrV4Seuizo3WUGTDHZDVlIlpXciPCXA0xfgsQaapNnOgOKwCAwDC4b/dJireUyregGrerSre2mreB2veNGveYWvejjfdu/8BI2K8ok7u95kAAAAASUVORK5CYII="
												alt="프로필 이미지" class="Image__DefaultImage-v97gyx-3 hVNKgp">
										</div>
									</div>
								</div>
							</div> <img
							src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='30' height='30' viewBox='0 0 30 30'%3E %3Cg fill='none' fill-rule='evenodd' transform='translate(3.68 3)'%3E %3Cellipse cx='11.52' cy='12' fill='%23E5E7EA' stroke='%23FFF' stroke-width='3' rx='13.02' ry='13.5'/%3E %3Cpath fill='%238E97A3' fill-rule='nonzero' d='M15.638 5.904l2.716 2.715-1.415 1.415-2.715-2.716 1.414-1.414zm-2.464 2.465l2.715 2.715-6.988 6.988-2.855.14.14-2.856 6.988-6.987z'/%3E %3C/g%3E %3C/svg%3E"
							alt="수정 아이콘" class="ImageProfile__Icon-i59a6p-4 isqgAm">
						</label>
					</div>
					<div class="CustomerInfo__MembershipCard-wiqp5v-7 iqShOY">
						<div class="CustomerInfoBox__Wrapper-sc-68qvux-0 gVkstK">
							<div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp">
								<a href="#!">
									<div
										class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">
										스크랩<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
											class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk">
									</div>0
								</a>
							</div>
							<div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp">
								<a href="#!"><div
										class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">
										나의 문의글<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
											class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk">
									</div>1</a>
							</div>
							<div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp">
								<a href="/hobbylovey/mypageReview.action"><div
										class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">
										후기<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
											class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk">
									</div>0</a>
							</div>
							<div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp">
								<a href="/hobbylovey/mypageFeed.action"><div
										class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">
										피드<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
											class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk">
									</div>0</a>
							</div>
							<div class="CustomerInfoBoxItem__Wrapper-sc-1r3co4d-0 jHzHpp">
								<a href="/hobbylovey/mypageCourseDetail.action"><div
										class="CustomerInfoBoxItem__LabeledTitle-sc-1r3co4d-1 eGCefe">
										수강내역<img
											src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23FFF' stroke-width='2' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
											class="CustomerInfoBoxItem__IconArrow-sc-1r3co4d-2 knwkPk">
									</div>0</a>
							</div>
						</div>
					</div>
				</div>


				<hr height="10" class="Hr-sc-4qqq6q-0 tQdWD">
			</div>

			<div class="reviewList">
				<div class="cardReview_wrapper">
					<div class="cardReview_header">
						<div class="cardReview_profileImageWrapper">
							<div class="image_wrapper">
								<img
									src="http://k.kakaocdn.net/dn/nvKU5/btqhWhr6j7T/Hda3g37cvU0LkD5AM3ZxgK/profile_110x110c.jpg"
									alt="" class="image_styleImageLoader" />
								<div class="fade_wrapper">
									<div class="ratio">
										<div class="ratio-ratio">
											<div class="ratio-content">
												<img
													src="http://k.kakaocdn.net/dn/nvKU5/btqhWhr6j7T/Hda3g37cvU0LkD5AM3ZxgK/profile_110x110c.jpg"
													alt="" class="image_styledImage" />
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
									<img
										src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
										alt="평점 icon" /> <img
										src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
										alt="평점 icon" /> <img
										src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
										alt="평점 icon" /> <img
										src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
										alt="평점 icon" /> <img
										src="data:image/svg+xml,%3Csvg width='16' height='14' viewBox='0 0 16 14' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cpath d='M12.293 8.6189L15.7442 6.00968C16.2325 5.63914 15.9799 4.9135 15.3402 4.88263L10.8957 4.6356C10.6263 4.62016 10.3906 4.46577 10.2896 4.23418L8.65658 0.405277C8.42088 -0.135092 7.59595 -0.135092 7.36026 0.405277L5.72724 4.21874C5.62623 4.45033 5.39053 4.60472 5.12117 4.62016L0.659819 4.86719C0.0200779 4.89806 -0.232451 5.6237 0.255772 5.99424L3.707 8.58802C3.90903 8.74241 4.01004 9.00487 3.9427 9.23646L2.81473 13.2043C2.66322 13.7601 3.31979 14.2079 3.85852 13.8991L7.61279 11.6913C7.84848 11.5523 8.13468 11.5523 8.35354 11.6913L12.1246 13.8991C12.6634 14.2079 13.3199 13.7601 13.1684 13.2043L12.0405 9.2519C11.99 9.02031 12.0741 8.77329 12.293 8.6189Z' fill='%23FF3F33'/%3E %3C/svg%3E"
										alt="평점 icon" />
								</div>
								<div class="cardReview_created">2021년 08월 21일 17:57분 작성</div>
							</div>
						</div>
					</div>
					<div class="cardReview_body">안녕하세요, 저 떠내려가서 여러 강사님도움받았던
사람이예요^^; 생애 첫 서핑이였는데 날씨도좋았고 파도도좋은날이였다고 하셔서 참여한 입장에서 더 즐거웠어요. 서핑보드에
잘올라서지는 못했지만 전 보드위에 엎드려서 파도타는거만으로 정말재미있었고 만족100프로예요. 앞으로 주변 지인들이
서핑가고싶다고하면 진심 브라보서핑 추천할게요^.^ 뽀송한 수트도 마지막 피자도 모두 만족스러웠고 안목해변도 정말
여유롭고 좋았네요. 기대이상의 힐링을 주셔서 감사합니다!</div>
					<div class="cardReview_purchaseInfo">
						<div class="cardReview_productTitle">[찐친프립][강릉] 서핑
							배우기+당일+버스포함 #브라보서프</div>
						<div>
							<span>2020년 7월 4일 오전 7:10</span> <span> <span> | </span>
								(1인) 강습 + 보드&슈트렌탈 + 프립왕복버스
							</span>
						</div>
					</div>
					<div class="cardReview_likeButtonWrapper">
						<button class="cardReview_likeButton">
							<span> 도움이 됐어요 18 </span> <img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath fill='none' d='M0 0h24v24H0z'/%3E %3Cpath fill='%23FFCD00' fill-rule='nonzero' d='M12 3h1v3h-1V3zm5.207 1.086l.707.707-2.121 2.121-.707-.707 2.121-2.121zm-10.121.707l.707-.707 2.121 2.121-.707.707-2.121-2.121z'/%3E %3Cpath fill='%23BBB' stroke='%23BBB' d='M4 22h4v-9H4z'/%3E %3Cpath stroke='%23BBB' d='M17.936 12h-3.958V9.388A1.38 1.38 0 0 0 12.6 8c-.497 0-.965.267-1.212.697L9 13H8v9h9.153a2 2 0 0 0 1.983-1.741l.783-6A2 2 0 0 0 17.936 12z'/%3E %3C/g%3E %3C/svg%3E"
								alt="" class="cardReview_likeIcon" />
						</button>
					</div>
					<div class="cardReview_imageWrapper-f2ssd2-13">
						<div class="image_wraper-v97gyx-0">
							<img
								src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/lrkes9oqvjmqcr4a7rrd"
								alt="" class="image_styledImageLoader_v97-gyx-2" />
							<div class="fade_wrapper-sc-1s0ipfq-0">
								<div class="ratio">
									<div class="ratio-ratio">
										<div class="ratio-content">
											<img
												src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_100/lrkes9oqvjmqcr4a7rrd"
												alt="후기 이미지" class="image_styledImage-v97gyx-1" />
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
										<img
											src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_36/Host_7750_78384_1589201606"
											alt="" class="image_styledImageLoader" />
										<div class="fade_wrapper" style="opacity: 1; display: block;">
											<div class="ratio">
												<div class="ratio-ratio">
													<div class="ratio-content">
														<img
															src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_1.0,f_auto,q_auto,w_36/Host_7750_78384_1589201606"
															alt="작성자 프로필" class="image_styledImage" />
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div>
									<div class="replyEntity_name">아무개</div>
									<div class="replyEntity_created">2020-07-08 10:08 작성</div>
								</div>
							</div>
							<div class="replyEntity_body-sc-2hf8ms-5">선미님 힐링하고 가셨다니 보람이
								느껴지네요~~ "칭찬은 고래도 춤추게한다"고 더욱 진심을 다하겠습니다~~^^</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>





