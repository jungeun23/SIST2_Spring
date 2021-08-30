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
					<span class="mr-2"><a href="/hobbylovey/index.action">홈
							<i class="fa fa-chevron-right"></i>
					</a></span> <span>클래스 <i class="fa fa-chevron-right"></i></span>
				</p>
				<h2 class="mb-0 bread">클래스 선택</h2>
			</div>
		</div>
	</div>
</section>
<div class="product-option-Wrapper gUYDhF">
	<header class="product-option-Header ifNQQr">
		<button class="product-option-backbtn eupWyQ" type="button"
			width="24px" height="24px">
			<img
				src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E %3Cg fill='none' fill-rule='nonzero'%3E %3Cpath d='M0 0h24v24H0z'/%3E %3Cpath stroke='%23000' stroke-width='2' d='M12 19.071L4.929 12 12 4.929M5 12h15'/%3E %3C/g%3E %3C/svg%3E"
				alt="" class="Icon-sc-1n96qsy-0 dsjmCy">
		</button>
	</header>
	<div
		class="BodyScrollLockContainer__Container-sc-19uqzq5-0 jFvWc FullScreenWrapper__FullWrapper-sc-1w6pu30-1 dAMGt">
		<div class="product-OptionSelector kjwgkO">
			옵션 선택
			<button color="black" font-size="13"
				class="product-calendarbtn ktwSVi">달력에서 보기</button>
		</div>
		<div class="product-OptionSelectorContainer jMUtnM">
			<div class="Accordion__Wrapper-sc-11ajjas-0 fhiIvu">
				<div class="product-SectionLabelWrapper gTdSym">
					<div font-size="13px" color="#9b9b9b"
						class="product-LabelWrapper eXwobX">
						<div>일정</div>
						<!-- <div style="color: black;">2021년 8월 25일(수요일) 14:00</div> -->
					</div>
					<div class="Accordion__ChevronWrapper-sc-11ajjas-1 ejNywc">
						<img
							src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23000' stroke-width='1.5' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
							class="Accordion__IconArrow-sc-11ajjas-3 dTjHAc">
					</div>
				</div>
				<div class="product-ContentWrapper">
					<div class="product-ItineraryWrapper cZOPBk">
						<div class="ItineraryDate ehtKbJ">2021년 8월 25일(수요일) 14:00</div>
						<div class="product-ItineraryQuantity coFIds">2 / 3명 | 신청 마감
							8월 25일 07:30</div>
					</div>
					<div class="product-ItineraryWrapper cZOPBk">
						<div class="ItineraryDate ehtKbJ">2021년 8월 26일(목요일) 16:00</div>
						<div class="product-ItineraryQuantity coFIds">2 / 3명 | 신청 마감
							8월 26일 07:30</div>
					</div>
				</div>

				<!-- 기본 옵션 -> 참가비 -->
				<div id="basicOptionbox"
					class="Accordion__Wrapper-sc-11ajjas-0 fhiIvu">
					<div class="product-SectionLabelWrapper gTdSym">
						<div font-size="13px" color="#9b9b9b"
							class="product-LabelWrapper  AccordionLabelWrapper-sc-1t4rj3d-0 AccordionLabel__ExtendedAccordionLabelWrapper-taznda-0 cZfYDe">
							<div>기본 옵션</div>
						</div>
						<div class="Accordion__ChevronWrapper-sc-11ajjas-1 ejNywc">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='18' height='18' viewBox='0 0 18 18'%3E %3Cg fill='none' fill-rule='evenodd'%3E %3Cpath d='M18 0H0v18h18z'/%3E %3Cpath stroke='%23000' stroke-width='1.5' d='M7 5l4 4-4 4'/%3E %3C/g%3E %3C/svg%3E"
								class="Accordion__IconArrow-sc-11ajjas-3 dTjHAc">
						</div>
					</div>
					<div class="option-Accordion-Content impDuH">
						<div class="option-PurchaseOptionEntity-Wrapper gHuwwM">
							<div
								class="PurchaseOptionEntity-OptionInfoWrapper euRyuc">
								<div
									class="PurchaseOptionEntity-TitleContainer gGNSVC">
									<div>참가비 (1인)</div>
									<div
										class="PurchaseOptionEntity-QuantityContainer bYEAVu"></div>
								</div>
								<div
									class="PurchaseOptionEntity-PriceContainer kwopjF">
									<div class="PurchaseOptionEntity-Price fyTAsE">29,000원</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 선택한 날짜 + 옵션 카드 -->
				<div id="option-selectedCardbox"
					class="option-PurchaseSelectionWrapper eWGqDX">
					<div class="PurchaseSelectionEntity-Wrapper eraMBI">
						<button id="option-select-cancelbtn"
							class="Button-bqxlp0-0 eupWyQ PurchaseSelectionEntity__DeleteButton-sc-1kgaoqw-1 bsTkth"
							type="button" width="24px" height="24px">
							<img
								src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E %3Cg fill='none' fill-rule='nonzero'%3E %3Cpath d='M0 0h24v24H0z'/%3E %3Cpath stroke='%23000' stroke-width='2' d='M7.05 7.05l9.9 9.9M16.95 7.05l-9.9 9.9'/%3E %3C/g%3E %3C/svg%3E"
								alt="" class="Icon-sc-1n96qsy-0 dsjmCy">
						</button>
						<div
							class="PurchaseSelectionEntity-SelectionWrapper oXKzi">
							<div>2021년 8월 26일(목요일) 16:00</div>
							<div
								class="PurchaseSelectionEntity-OptionTitle iLdFCl">참가비
								(1인)</div>
						</div>
						<div class="PurchaseSelectionEntity-Footer cRdHst">
							<div class="PurchaseSelectionEntity-Price bqUmeu">29,000원</div>
							<div class="option-Counter-Wrapper hcNdoZ">
								<img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='22' height='22' viewBox='0 0 22 22'%3E %3Cg fill='none' fill-rule='nonzero' stroke='%23DDD'%3E %3Crect width='21' height='21' x='.5' y='.5' rx='10.5'/%3E %3Cpath stroke-linecap='square' d='M15 11H7'/%3E %3C/g%3E %3C/svg%3E"
									disabled="" class="option-Counter-ControlButton kRIdGY">
								<input type="number" min="1" class="option-Counter-Value eYMAPn" value="1" readonly>
								<img
									src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='22' height='22' viewBox='0 0 22 22'%3E %3Cg fill='none' fill-rule='nonzero' stroke='%23DDD'%3E %3Crect width='21' height='21' x='.5' y='.5' rx='10.5'/%3E %3Cpath stroke-linecap='square' d='M11 7v8M15 11H7'/%3E %3C/g%3E %3C/svg%3E"
									disabled="" class="option-Counter-ControlButton kRIdGY">
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>


		<div id="option-nextbtnbox"
			class="option-ButtonSection-ButtonWrapper iOVwBV">
			<button class="option-ButtonNext dyxtJZ" width="100%" color="white"
				font-size="16px">결제</button>
		</div>


	</div>
</div>


<script type="text/javascript">

	/* todo: 1. 일정, 기본옵션 드롭다운화 - 기본옵션은 항상 참가비 1인으로 동일하므로 그냥 일정 밑에 계속 붙어있는걸로 
			 2. 일정 중 하나 클릭하면 선택한 일정 카드가 밑에 동적으로 생성 -> 자바스크립트로 안에 text 수정하고 hide를 show로 해도 되고 append 해도 되고.. 
				-> 근데 이미지 소스가 더러워서 append 한다면 이미지 새로 다운로드 받고 하는게 나을듯 
				-> 카드에 x 버튼 누르면 카드 사라지고... 카드에 티켓수는 무조건 1로.. 
			 3. 결제 누르면 마이페이지 신청내역으로 넘어가도록 (결제창은 따로 구현 x...시간 없다) 
			 +@ 시간이 남는다 하면 달력 만들어보기....^^..    */
</script>



